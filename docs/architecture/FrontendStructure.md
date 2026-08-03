# Frontend Structure

## Purpose

The frontend is organized to promote maintainability, scalability, and separation of concerns.

The project follows these principles:

- Organize by business capability before technical type.
- Keep reusable code separate from feature-specific code.
- Components should have a single responsibility.
- Business logic belongs in the backend whenever possible.
- Pages compose components; they should not contain complex logic.

---

# Folder Structure

```
src/
│
├── app/
├── assets/
├── components/
├── contexts/
├── features/
├── hooks/
├── layouts/
├── pages/
├── services/
├── styles/
├── types/
├── utils/
│
├── App.tsx
└── main.tsx
```

---

## app/

Application-wide configuration.

Examples:

- Router configuration
- Theme configuration
- Global providers
- Constants

Example:

```
app/
│
├── router.tsx
├── providers.tsx
└── theme.ts
```

---

## assets/

Static resources.

Examples:

- Images
- Fonts
- Icons
- SVGs

No application logic belongs here.

---

## components/

Reusable UI components.

Examples:

- Button
- Card
- ProgressBar
- Modal
- CharacterCard

Components should:

- be reusable
- have a single responsibility
- avoid business logic

---

## contexts/

React Context providers.

Examples:

- ThemeContext
- AuthContext
- CharacterContext

---

## features/

Business features.

Examples:

```
features/
│
├── activities/
├── achievements/
├── character/
├── dashboard/
└── quests/
```

Each feature may contain its own:

- components
- hooks
- services
- types

---

## hooks/

Reusable custom React hooks.

Examples:

- useApi
- useCharacter
- useTheme
- useLocalStorage

---

## layouts/

Application layouts.

Examples:

- MainLayout
- AuthenticationLayout
- EmptyLayout

Layouts determine the overall page structure.

---

## pages/

Application pages.

Examples:

- DashboardPage
- CharacterPage
- SettingsPage

Pages assemble components into complete screens.

---

## services/

Communication with external systems.

Examples:

- CharacterService
- ActivityService
- AuthenticationService

Services communicate with the backend API.

---

## styles/

Global styling.

Examples:

- variables.css
- colours.css
- typography.css
- globals.css

Avoid hard-coded styling values throughout the application.

---

## types/

Shared TypeScript types.

Examples:

- Character
- Activity
- ApiResponse
- Quest

---

## utils/

Pure helper functions.

Examples:

- date.ts
- string.ts
- math.ts

Utilities should have no dependency on React.

---

# Entry Points

## main.tsx

Application entry point.

Responsible for starting React.

---

## App.tsx

Root component.

Responsible for loading the application's layout and routing.

---

# Design Principles

1. Components should do one thing well.
2. Business logic belongs in the backend.
3. Pages compose components.
4. Features own their own functionality.
5. Keep folders focused and cohesive.