#!/bin/bash

# Check for ELEVENLABS_API_KEY
if [ -z "$ELEVENLABS_API_KEY" ]; then
  echo "Please set ELEVENLABS_API_KEY environment variable."
  exit 1
fi

# Default values
VOICE=""
TEXT=""
LIST_VOICES=0

# Parse arguments
while [[ "$1" != "" ]]; do
  case $1 in
  -v)
    shift
    VOICE="$1"
    ;;
  -list-voices)
    LIST_VOICES=1
    ;;
  -*)
    echo "Unknown option: $1"
    exit 1
    ;;
  *)
    if [ -z "$TEXT" ]; then
      TEXT="$1"
    else
      TEXT="$TEXT $1"
    fi
    ;;
  esac
  shift
done

# Function to fetch and display voices
list_voices() {
  RESPONSE=$(curl -s -H "xi-api-key: $ELEVENLABS_API_KEY" "https://api.elevenlabs.io/v1/voices")
  if [ -z "$RESPONSE" ]; then
    echo "Failed to fetch voices. Please check your API key and network connection."
    exit 1
  fi
  echo "Available Voices:"
  echo "$RESPONSE" | python3 -c "
import sys, json
data = json.load(sys.stdin)
voices = data.get('voices', [])
for v in voices:
    print(f\"- {v['name']} (VoiceID: {v['voice_id']})\")
"
}

# If -list-voices is set, list voices and exit
if [ "$LIST_VOICES" -eq 1 ]; then
  list_voices
  exit 0
fi

if [ -z "$TEXT" ]; then
  echo "No text provided."
  exit 1
fi

# Function to check if a string is a valid UUID (VoiceID)
is_uuid() {
  local uuid_regex='^[0-9a-fA-F-]{36}$'
  [[ $1 =~ $uuid_regex ]]
}

# Determine VOICE_ID
if [ -z "$VOICE" ]; then
  # Use Rachel as the default voice
  VOICE="Werner Herzog"
fi

if is_uuid "$VOICE"; then
  VOICE_ID="$VOICE"
else
  # Fetch the list of voices from ElevenLabs
  RESPONSE=$(curl -s -H "xi-api-key: $ELEVENLABS_API_KEY" "https://api.elevenlabs.io/v1/voices")
  if [ -z "$RESPONSE" ]; then
    echo "Failed to fetch voices. Please check your API key and network connection."
    exit 1
  fi
  # Extract VoiceID matching the voice name
  VOICE_ID=$(echo "$RESPONSE" | python3 -c "
import sys, json
data = json.load(sys.stdin)
voices = data.get('voices', [])
voice_id = next((v['voice_id'] for v in voices if v['name'].lower() == '$VOICE'.lower()), None)
print(voice_id if voice_id else '')
")
  if [ -z "$VOICE_ID" ]; then
    echo "Voice '$VOICE' not found."
    exit 1
  fi
fi

# Prepare the JSON payload
PAYLOAD=$(printf '{"text": "%s"}' "$TEXT")

# Generate a temporary file for the audio
# Modified for macOS compatibility
AUDIO_FILE=$(mktemp /tmp/elevenlabs.XXXXXX).mp3

# Call the Text-to-Speech API
curl -s -X POST \
  -H "Content-Type: application/json" \
  -H "xi-api-key: $ELEVENLABS_API_KEY" \
  -d "$PAYLOAD" \
  "https://api.elevenlabs.io/v1/text-to-speech/$VOICE_ID" \
  -o "$AUDIO_FILE"

# Check if the audio file was created successfully
if [ ! -s "$AUDIO_FILE" ]; then
  echo "Failed to generate speech. Please check your API key and the provided text."
  rm -f "$AUDIO_FILE"
  exit 1
fi

# Play the audio file
if command -v afplay &>/dev/null; then
  afplay "$AUDIO_FILE"
elif command -v play &>/dev/null; then
  play "$AUDIO_FILE"
else
  echo "No audio player found (afplay or play)."
fi

# Clean up
rm -f "$AUDIO_FILE"
