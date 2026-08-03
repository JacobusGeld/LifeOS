# Life OS Roadmap

> A personal life management application that gamifies daily life.
>
> **Guiding Principle:** Complete one milestone at a time. Do not start the next milestone until the current one is complete and committed to Git.

---

# Phase 1 - Foundation

## Milestone 1.1 - Development Environment ✅

### Objectives

- [x] Create GitHub repository
- [x] Create React + Vite + TypeScript project
- [x] Configure Git
- [x] Configure Cloudflare Pages
- [x] Verify automatic deployments
- [x] Update development tools
- [x] Verify local development environment

**Completion Criteria**

- Local development server works.
- Production site deploys automatically.
- No editor errors.
- Git workflow is functional.

---

## Milestone 1.2 - Project Structure

### Objectives

#### Repository

- [x] Create `backend`
- [x] Create `database`
- [x] Create `docs`
- [x] Create `.github`

#### Documentation

- [x] Create architecture folder
- [x] Create decisions folder
- [x] Create diagrams folder
- [x] Create domain folder
- [x] Create roadmap folder
- [x] Create api folder

#### Configuration

- [x] Create `.editorconfig`
- [x] Review `.gitignore`
- [x] Create `LifeOS.code-workspace`

#### Validation

- [x] Verify project opens correctly
- [x] Verify frontend still runs
- [ ] Commit changes

### Folder Structure

```
LifeOS/
│
├── .github/                    # GitHub workflows and templates
│
├── .vscode/                    # Shared VS Code settings
│
├── backend/                    # ASP.NET Core solution (future)
│
├── database/                   # SQL scripts, ERDs, seed data
│
├── docs/
│   ├── api/
│   ├── architecture/
│   ├── decisions/
│   ├── diagrams/
│   ├── domain/
│   └── roadmap/
│
├── frontend/                   # React application
│
├── .editorconfig
├── .gitignore
├── LICENSE
├── LifeOS.code-workspace
├── README.md
└── ROADMAP.md
```

**Completion Criteria**

- Repository structure is finalized.
- All folders have a clear purpose.

---

## Milestone 1.3 - Frontend Structure

### Objectives

Create the following folders:

```
src/
│
├── app/
├── assets/
├── components/
├── features/
├── hooks/
├── layouts/
├── pages/
├── services/
├── styles/
├── types/
└── utils/
```

**Completion Criteria**

- Frontend structure is finalized.
- Folder responsibilities are documented.

---

## Milestone 1.4 - Code Quality

### Objectives

- [ ] Configure EditorConfig
- [ ] Configure Prettier
- [ ] Configure ESLint
- [ ] Verify formatting works

**Completion Criteria**

- Formatting is automatic.
- Linting passes.

---

## Milestone 1.5 - Routing

### Objectives

- [ ] Install React Router
- [ ] Create application layout
- [ ] Create placeholder pages
    - Home
    - Dashboard
    - Settings
- [ ] Configure navigation

**Completion Criteria**

- Navigation works.
- URLs change correctly.
- Layout is reusable.

---

## Milestone 1.6 - Theme

### Objectives

- [ ] Define colour palette
- [ ] Define typography
- [ ] Define spacing system
- [ ] Define border radius
- [ ] Define shadows
- [ ] Create global CSS variables

**Completion Criteria**

- Theme is centralized.
- No hard-coded colours.

---

# Phase 2 - Backend Foundation

## Milestone 2.1 - ASP.NET Core

### Objectives

- [ ] Create solution
- [ ] Create Web API
- [ ] Configure project structure
- [ ] Verify API runs

---

## Milestone 2.2 - Database

### Objectives

- [ ] Create PostgreSQL database
- [ ] Configure Entity Framework Core
- [ ] Configure migrations
- [ ] Verify database connection

---

## Milestone 2.3 - Authentication

### Objectives

- [ ] Design authentication approach
- [ ] Implement login
- [ ] Implement registration
- [ ] Secure API

---

# Phase 3 - Domain Design

> Focus on designing the business concepts before implementing game mechanics.

## Milestone 3.1 - Domain Model

### Design

- [ ] User
- [ ] Character
- [ ] Activity
- [ ] ActivityType
- [ ] Statistic
- [ ] Achievement
- [ ] Quest
- [ ] Campaign
- [ ] Reward
- [ ] Inventory

---

## Milestone 3.2 - Database Design

### Objectives

- [ ] Design database schema
- [ ] Review relationships
- [ ] Create ERD
- [ ] Apply migrations

---

# Phase 4 - Character System

## Objectives

- [ ] Character creation
- [ ] Character profile
- [ ] Experience
- [ ] Levels
- [ ] Character statistics

---

# Phase 5 - Activity System

## Objectives

- [ ] Activity types
- [ ] Activity logging
- [ ] Activity history
- [ ] Activity categories

---

# Phase 6 - Game Engine

## Objectives

- [ ] XP calculations
- [ ] Level calculations
- [ ] Statistic calculations
- [ ] Rewards
- [ ] Daily streaks
- [ ] Energy
- [ ] Momentum

---

# Phase 7 - Achievements

## Objectives

- [ ] Achievement definitions
- [ ] Unlock logic
- [ ] Progress tracking
- [ ] Achievement history

---

# Phase 8 - Quests

## Objectives

- [ ] Quest definitions
- [ ] Daily quests
- [ ] Weekly quests
- [ ] Campaigns
- [ ] Rewards

---

# Phase 9 - Dashboard

## Objectives

- [ ] Character overview
- [ ] Statistics
- [ ] Current quests
- [ ] Recent activities
- [ ] XP progress
- [ ] Charts

---

# Phase 10 - Quality Improvements

## Objectives

- [ ] Error handling
- [ ] Logging
- [ ] Unit tests
- [ ] Integration tests
- [ ] Performance improvements
- [ ] Accessibility review

---

# Phase 11 - Release

## Objectives

- [ ] Production review
- [ ] Documentation
- [ ] Final testing
- [ ] Version 1.0 release

---

# Engineering Principles

- Complete one milestone at a time.
- Keep commits small and meaningful.
- Do not leave the application in a broken state.
- Document important architectural decisions.
- Build features incrementally.
- Keep business logic in the backend.
- Keep the frontend focused on presentation.

---

# Current Milestone

**Milestone 1.2 - Project Structure**