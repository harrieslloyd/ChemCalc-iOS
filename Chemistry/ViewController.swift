import UIKit
class ViewController: UIViewController {
override func viewDidLoad() {
super.viewDidLoad()
//We make a call to our keyboard handling function as soon as the view is loaded.
initializeHideKeyboard()
}
}
extension ViewController {
func initializeHideKeyboard(){
//Declare a Tap Gesture Recognizer which will trigger our dismissMyKeyboard() function
let tap: UITapGestureRecognizer = UITapGestureRecognizer(
target: self,
action: #selector(dismissMyKeyboard))
//Add this tap gesture recognizer to the parent view
view.addGestureRecognizer(tap)
}
@objc func dismissMyKeyboard(){
//endEditing causes the view (or one of its embedded text fields) to resign the first responder status.
//In short- Dismiss the active keyboard.
view.endEditing(true)
}
}
