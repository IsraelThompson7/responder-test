responder-test
==============

A sample project illustrating `UIKeyboard` behavior after dismissing a styled `UIAlertView`.

In this sample app, the primary view contains a single `UITextArea` with a custom view for its `inputAccessoryView`.  Tapping on the `UITextArea` invokes the `UIKeyboard`. Tapping on the "Alert" button on the accessory view above the keyboard invokes a `UIAlertView` with the `UIAlertViewStyleLoginAndPasswordInput` style. 

When dismissing the `UIAlertView`, the desired behavior is for the `UITextView` to become the first responder without dismissing the keyboard. In practice the keyboard hides then shows.  Logging shows the following order of execution:

> ResponderTest[1228:11303] handleKeyboardWillShow:
ResponderTest[1228:11303] handleKeyboardDidShow:
ResponderTest[1228:11303] handleAlertButtonTapped:
ResponderTest[1228:11303] handleKeyboardWillShow:
ResponderTest[1228:11303] handleKeyboardDidShow:
ResponderTest[1228:11303] alertView:clickedButtonAtIndex:
ResponderTest[1228:11303] alertView:willDismissWithButtonIndex:
ResponderTest[1228:11303] handleKeyboardWillHide:
ResponderTest[1228:11303] handleKeyboardDidHide:
ResponderTest[1228:11303] handleKeyboardWillShow:
ResponderTest[1228:11303] handleKeyboardDidShow:
ResponderTest[1228:11303] handleKeyboardWillHide:
ResponderTest[1228:11303] handleKeyboardDidHide:
ResponderTest[1228:11303] handleKeyboardWillShow:
ResponderTest[1228:11303] alertView:didDismissWithButtonIndex:
ResponderTest[1228:11303] handleKeyboardDidShow:

Looking for a solution that prevents the keyboard from dismissing.