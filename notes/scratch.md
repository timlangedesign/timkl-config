1. Create a Firebase project:
    - Go to https://console.firebase.google.com/
    - Click "Add project"
    - Enter a name like "Draft Duel"
    - Follow the setup wizard (you can disable Google Analytics if you prefer)
  1. Register your web app:
    - Once in your Firebase project dashboard, click the web icon (</>) to add a
  web app
    - Name it "Draft Duel Web"
    - Register the app
    - Copy the Firebase configuration object (it looks like this):
  const firebaseConfig = {
    apiKey: "YOUR_API_KEY",
    authDomain: "your-project-id.firebaseapp.com",
    projectId: "your-project-id",
    storageBucket: "your-project-id.appspot.com",
    messagingSenderId: "YOUR_SENDER_ID",
    appId: "YOUR_APP_ID"
  };
  1. Enable Google authentication:
    - In Firebase Console, go to "Authentication" in the left sidebar
    - Click "Get started" if it's your first time
    - In the "Sign-in method" tab, click on "Google"
    - Enable Google authentication and save
    - Add your email as a project support email
  2. Update the admin panel code:
    - Edit the /backend/public/index.html file
    - Replace the placeholder Firebase config with your actual config:
  const firebaseConfig = {
    apiKey: "YOUR_API_KEY",
    authDomain: "your-project-id.firebaseapp.com",
    projectId: "your-project-id",
    storageBucket: "your-project-id.appspot.com",
    messagingSenderId: "YOUR_SENDER_ID",
    appId: "YOUR_APP_ID"
  };
  1. Update the frontend Firebase config:
    - Create or edit /draft-duel/src/firebase/config.ts with the same config
- 
https://grab.design/styles-and-assets/typography#heading-05.bolder


	https://grab.design/components/timer?version=v1.0


https://m3.material.io/components/bottom-sheets/accessibility

https://developer.apple.com/design/human-interface-guidelines/



