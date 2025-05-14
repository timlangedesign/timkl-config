
# Mastering the Core Concepts Behind Draft Duel

Welcome to your long-form companion to the Draft Duel project. This guide is designed to take you from feeling like you're “copy-pasting” code, to understanding what you're building — and why.

This isn't about memorizing syntax. It's about building the mental models that make you feel at home in Svelte, JavaScript, SQLite, and Neovim.

---

## 🎯 The Project as Learning Vehicle

Let’s start with a quick truth:

> “The best way to learn is to build something slightly beyond what you know.”

Draft Duel is **perfect** for this:
- It’s personal
- It touches frontend, backend, database, UX
- It has state, views, flows, validation, navigation

---

## 🧱 1. JavaScript Core Concepts

### ✅ Objects over time

You’re working with evolving data:

```js
{
  title: 'Best Albums',
  subtitle: 'Ever?',
  cards: [{ title: '', subtitle: '' }, ...]
}
```

Learn to:
- Create default objects
- Update fields immutably
- Use `.map()` to transform arrays
- Use `.find()` to select the right item

### ✅ Asynchronous operations

In this project, almost everything async looks like:

```js
const res = await fetch('/api/something');
const data = await res.json();
```

Key skills:
- Understand what `await` is doing
- Know where to put `try/catch`
- Think about **when** to make the request (on load? on submit?)

---

## 🔥 Svelte Concepts (The Big 4)

Svelte is amazing because it simplifies reactivity — if you understand these 4 things, you can build anything.

### 1. `let` and reactivity

```svelte
<script>
  let name = 'Tim';
</script>

<p>Hello {name}!</p>
```

Whenever `name` changes, the DOM updates automatically.

### 2. `$:` reactive declarations

```svelte
$: greeting = `Hi, ${name}`;
```

Whenever `name` changes, `greeting` re-computes.

### 3. `bind:` for inputs

```svelte
<input bind:value={title} />
```

This gives you two-way binding: whatever the user types goes straight into `title`.

### 4. `export let` for props

This is how your page receives data from `load()`:

```svelte
export let data;
const { dd } = data;
```

---

## 🧠 SQLite (via Drizzle ORM)

You’re not just storing data — you’re designing a **data model**.

### Tables you’ve designed

- `draft_duels`: id, title, subtitle, category, createdAt
- `cards`: 10 per duel, with position, title, subtitle

### Key concepts

- **Foreign keys**: `cards.draftDuelId` links back to `draft_duels.id`
- **Querying**: `.where(eq(cards.draftDuelId, id))` filters to just the cards you care about
- **Defaults**: You used JS to insert 10 cards on creation

**🔥 Mental Model**: You’re not just selecting or inserting — you're expressing relationships between things.

---

## 🧠 Step Thinking = UX + Code Architecture

You’ve adopted a **step-based flow**:

```
Step 0: /draft-duels/new
Step 1: /edit?step=0 → edit DD info
Step 2–11: /edit?step=1–10 → 10 cards
Step 12: /edit?step=11 → Review
Step 13: /edit?step=12 → Done
```

This is HUGE for learning because it introduces:

- Dynamic rendering
- Conditional UI
- Navigation
- Saving data over time

---

## 🎨 Styling and Layout Thinking

Even though you're confident in HTML/CSS, this project will stretch you into:

- Responsive spacing for a 10-step flow
- Flex layout for forms vs previews
- Progress indicators / stepper designs
- UI state clarity: is this saved? unsaved? dirty?

---

## 🎯 How to Learn from Each Step

For every step you take:

1. **Pause and describe** what you're building in plain English
2. **Sketch** or pseudocode it
3. **Write the code**, but try to anticipate what each part should do
4. **Run it and break it**
5. **Debug slowly** — and reflect

---

## ✨ What You'll Walk Away With

If you commit to finishing Draft Duel with understanding, you will:

- Be confident building real SvelteKit apps
- Understand frontend + backend wiring
- Write your own schemas and queries in SQLite
- Be more fluent in JS than most frontend devs
- Know exactly where your knowledge ends — and how to push it

---

## 🧠 Next Step

When you return, write this:

> “Step 1: Here’s how I’d build the first card editor…”

And I’ll respond like a tutor, not a code generator.

You’re doing this right.
