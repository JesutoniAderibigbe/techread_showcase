# 📰 TechRead Flutter App

This repository contains the Flutter source code for **TechRead**, a modern article-reading application.

It follows a **feature-first architecture** for scalability and maintainability, and it uses **Widgetbook** for UI component testing and documentation.

---

## 🏗️ Project Structure

This project uses a **feature-first directory structure**, a common best practice for scalable Flutter apps.  
It also includes **Widgetbook** for isolated component testing and documentation.

### 📂 Root Directory Structure

```
.
├── .github/
│   ├── actions/
│   │   └── bootstrap/
│   │       └── action.yaml     # Reusable action for setup
│   └── workflows/
│       └── widgetbook-cloud.yaml # GitHub Action for Widgetbook Cloud
│
├── lib/
│   ├── features/
│   │   ├── article/
│   │   │   └── screens/
│   │   │       └── article_detail_screen.dart
│   │   └── home/
│   │       ├── data/
│   │       │   └── mock_data.dart
│   │       ├── screens/
│   │       │   └── home_screen.dart
│   │       └── widgets/
│   │           ├── article_list_card.dart
│   │           └── featured_article_card.dart
│   │
│   ├── models/
│   │   └── article.dart
│   │
│   └── main.dart             # App entry point, MaterialApp, and theme setup
│
├── widgetbook/
│   └── widgetbook.dart       # Widgetbook entry point and component setup
│
└── pubspec.yaml

```

---

## 📁 `lib/` Directory Explained

- **features/**: Contains all the feature-level modules of the app.
  - **home/**: The main home screen feature, including its screens, widgets, and data.
  - **article/**: The article detail/reading feature.
- **models/**: Contains plain Dart data models (e.g., `Article`) used across the app.
- **main.dart**: The primary entry point for the application.

---

## 💡 Why This Structure?

- **Scalability**: Add a new feature (e.g., `profile`) simply by creating a new folder inside `features/`.
- **Encapsulation**: All files related to a single feature (screens, widgets, data, state) live together.
- **Readability**: It's immediately clear what features your app has.

---

## 🧩 Component Library with Widgetbook

We use **Widgetbook** to build, test, and document UI components in isolation.

- **Location**: `widgetbook/`
- **Purpose**:  
  Widgetbook allows developers to visualize all widgets and their various states.  
  This helps maintain UI consistency and speeds up development.

---

## ⚙️ CI/CD with GitHub Actions

This project uses **GitHub Actions** to automate parts of the development workflow.

- **Workflow File**: `.github/workflows/widgetbook.yml`
- **Trigger**: Runs automatically on every **pull request** (`pull_request`).
- **Job Description**:  
  Builds the Widgetbook and (if configured) deploys it, adding a comment to the PR with a link to the deployed version.  
  This makes it easy to **visually review UI changes** before merging.

---

### 🧠 Summary

✅ **Architecture:** Feature-first  
✅ **UI Testing:** Widgetbook  
✅ **Automation:** GitHub Actions  
✅ **Goal:** Scalable, maintainable, and developer-friendly Flutter application.

---

**Made with ❤️ using Flutter**
