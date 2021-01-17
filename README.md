# Mvvm-Example

In this project I am using MVVM, Combine, Core data.

## MVVM
At the core of this pattern is the ViewModel, which is a spcial type of model that represents the UI state of the app. It contains properties that detail the state of each and every UI control.
For example, the current text for a text field, or whether a specific button is enabled. It also exposes the actions the view can perform, like buttton taps or gestures.

Follow these rules:
1. The View has a reference to the ViewModel, but not vice-versa
2. The ViewModel has a reference to the Model, but not vice-versa
3. The View has no reference to the Model or vice-versa.

Now, how does the ViewModel update the View?
Data Binding is what allows you to connect a View to its ViewModel.  Once you are on the ViewModel side, using Combine becomes the natural choice. It allows you to clearnly define a chain that starts in your UI, way down to a network call.

## Introduction to Combine:
Announced at WWDC 2019, is Apple’s new “reactive” framework for handling events over time. You can use Combine to unify and simplify your code for dealing with things like delegates, notifications, timers, completion blocks and callbacks

### There are three main components:

1. Publishers: Things that produce values.
2. Operators: Things that do work with values.
3. Subscribers: Things that care about values.

```
Publishers:
Objects that conform to Publisher deliver a sequence of values over time. The protocol has two associated types: Output, the type of value it produces, and Failure, the type of error it could encounter.

Every publisher can emit multiple events:

An output value of Output type.
A successful completion.
A failure with an error of Failuretype.
Several Foundation types have been enhanced to expose their functionality through publishers, including Timer and URLSession.
```

Operators:
Operators are special methods that are called on publishers and return the same or a different publisher. An operator describes a behavior for changing values, adding values, removing values or many other operations. You can chain multiple operators together to perform complex processing.

Think of values flowing from the original publisher, through a series of operators. Like a river, values come from the upstream publisher and flow to the downstream publisher.
```

Subscribers:
Publishers and operators are pointless unless something is listening to the published events. That something is the Subscriber.

Subscriber is another protocol. Like Publisher, it has two associated types: Input and Failure. These must match the Output and Failure of the publisher.

A subscriber receives a stream of value, completion or failure events from a publisher.
```

Use the standard JSONDecoder to decode the JSON from the API

You can write the decode logic by hand or you can use a service like QuickType. 
As a rule of thumb, for services I own, I do it by hand. For third party services, I generate the boilerplate using QuickType.

### Reference URLs: 
https://www.raywenderlich.com/4161005-mvvm-with-combine-tutorial-for-ios
https://www.raywenderlich.com/7864801-combine-getting-started

