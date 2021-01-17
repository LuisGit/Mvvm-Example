# Mvvm-Example

At the core of this pattern is the ViewModel, which is a spcial type of model that represents the UI state of the app. It contains properties that detail the state of each and every UI control.
For example, the current text for a text field, or whether a specific button is enabled. It also exposes the actions the view can perform, like buttton taps or gestures.

Follow these rules:
1. The View has a reference to the ViewModel, but not vice-versa
2. The ViewModel has a reference to the Model, but not vice-versa
3. The View has no reference to the Model or vice-versa.

Now, how does the ViewModel update the View?
Data Binding is what allows you to connect a View to its ViewModel.  Once you are on the ViewModel side, using Combine becomes the natural choice. It allows you to clearnly define a chain that starts in your UI, way down to a network call.

In this project I am using MVVM, Combine, Core data.