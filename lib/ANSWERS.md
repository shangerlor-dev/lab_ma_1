
# Flutter Laboratory Answers

## Student Information
- Name: SHANGER LOR
- Section: ICLX3
- Student ID: 241-01094

## Activity 2 - Water Tracker
### Observation: setState()
[When the Add a Glass button is clicked, the number of glasses increases by one. The progress indicator and displayed information update because setState() tells Flutter to rebuild the UI with the new value.]

### Observation: Changing the goal
[When the goal changes from 8 to 6, the target number of glasses decreases. The progress indicator updates according to the new goal, and the tracker shows progress toward the revised target.]

### Last 3 build() logs
[Paste the last three actual build() log lines from the Debug Console here.]
## Activity 3 - Weather Dashboard
### Observation: Removing Expanded
[When Expanded was removed, the layout changed because the affected widget no longer occupied its equal share of the available horizontal space. Depending on the layout constraints, this could cause uneven spacing or a layout overflow. After restoring Expanded, the widgets shared the available space as intended.]

## Activity 4 - Campus Cafe Menu
### Observation: GridView columns
[With two columns, each menu item has more horizontal space, making the cards wider. With three columns, more items appear in each row, but each card becomes narrower. The three-column layout displays more items across the screen.]

## Activity 5 - Theme and Components
### Observation: Card border radius
[When the border radius was changed from 8 to 20, the card corners became more rounded. A radius of 8 produces slightly rounded corners, while a radius of 20 gives the card a softer, more curved appearance.]

## Review Questions
1. [A StatelessWidget is used for UI components that do not manage changing state. A StatefulWidget is used when a component needs to update its UI when data changes. For example, a profile card can use StatelessWidget, while a water tracker that counts glasses uses StatefulWidget.]
2. [A StatefulWidget uses two classes because the widget describes the component, while its associated State class stores data that can change and builds the UI. The createState() method connects the widget to its State object.]
3. [The value of _glasses changes, but Flutter is not notified to rebuild the UI immediately. Therefore, the displayed counter and progress bar may not update until another rebuild occurs. The increment should be placed inside setState().]
4. [Flutter calls build() when a widget is first built and may call it again when its state changes, such as after setState(), or when relevant dependencies change. It describes the UI using the current data.]
5. [For a Row, the main axis is horizontal and the cross axis is vertical. For a Column, the main axis is vertical and the cross axis is horizontal.]
6. [Without Expanded, the StatBox no longer shares the available row width equally with the other expanded boxes. Its width may depend on its contents, causing uneven spacing or layout overflow. The exact result depends on the remaining layout constraints.]
7. [GridView.builder displays items in a scrollable grid and builds items as needed, which is useful for long lists. A Column arranges children vertically and does not scroll by itself. Displaying too many items in a Column may cause overflow.]
8. [Stack places widgets on top of one another. Positioned controls where a child appears by setting distances from the top, bottom, left, or right of the Stack. They can be used to place a badge over a menu card.]
9. [ThemeData defines shared styling for an application, helping widgets maintain a consistent appearance. Styling an individual widget changes only that widget unless the style is reused elsewhere.]
10. [The _isDark variable stores the current dark-mode setting. The switch calls _setDark() when its value changes. The method uses setState() to update _isDark, causing the app to rebuild. The themeMode property then selects either ThemeMode.dark or ThemeMode.light.]

## GitHub Repository
[].
