# Flutter Laboratory Activities 1–5 — Answers

**Student Name:** ICLX3_Lor_SHANGER  
**Student ID:** 241-01094

## Activity 1 – Profile Card

**Observation:** The profile card displays the student's information, including the phone number row.

## Activity 2 – Water Tracker

**Observation:** Updating the counter inside `setState()` notifies Flutter that the state has changed and the UI should rebuild. Updating the variable outside `setState()` may change its value without immediately updating the displayed UI.

**Debug Console – Last three `build() called` lines:**

[Paste the actual last three lines from the Debug Console here.]

## Activity 3 – Weather Layout

**Observation:** Removing `Expanded` changes how the available horizontal space is distributed. Depending on the layout constraints, the StatBox sizes may differ or an overflow may occur.

**City:** [Enter your hometown.]

## Activity 4 – Café Menu

**Observation:** The café menu displays its items in a two-column grid. Changing `crossAxisCount` to 3 creates three columns, while restoring it to 2 returns the two-column layout.

**Two additional menu items:** [Enter the two items you added.]

## Activity 5 – Settings and Theme Components

**Observation:** The settings screen includes Dark Mode, Notifications, Location Services, skill chips, and a Save Settings button. The dark-mode switch changes the app theme.

## Validation

- `flutter analyze`: No issues found.
- `flutter test`: Passed.