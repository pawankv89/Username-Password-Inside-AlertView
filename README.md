# Username Password Inside AlertView Demo

=========

## Username Password Inside AlertView in Swift 5.

------------
Added Some screens here.

![](https://github.com/pawankv89/Username-Password-Inside-AlertView/blob/master/images/screen_1.png)
![](https://github.com/pawankv89/Username-Password-Inside-AlertView/blob/master/images/screen_2.png)

## Usage
------------

####  Username Password Inside AlertView Demo

```swift



import UIKit

class ViewController: UIViewController {

override func viewDidLoad() {
super.viewDidLoad()
// Do any additional setup after loading the view.
}

/*

Editable Text Field inside Alert Controller iOS Tutorial


Using the UIAlertController class it is not only possible to show alerts, but also get text input using Text Fields. In this tutorial a username and password is obtained from the user and displayed in the console. This tutorial is made with Xcode 10 and built for iOS 12.

Open Xcode and create a new Single View App.

*/

@IBAction func showAlertController(_ sender: Any) {
// 1.
var usernameTextField: UITextField?
var passwordTextField: UITextField?

// 2.
let alertController = UIAlertController(
title: "Log in",
message: "Please enter your credentials",
preferredStyle: .alert)

// 3.
let loginAction = UIAlertAction(
title: "Log in", style: .default) {
(action) -> Void in

if let username = usernameTextField?.text {
print(" Username = \(username)")
} else {
print("No Username entered")
}

if let password = passwordTextField?.text {
print("Password = \(password)")
} else {
print("No password entered")
}
}

// 4.
alertController.addTextField {
(txtUsername) -> Void in
usernameTextField = txtUsername
usernameTextField!.placeholder = "<Your username here>"
}

alertController.addTextField {
(txtPassword) -> Void in
passwordTextField = txtPassword
passwordTextField?.isSecureTextEntry = true
passwordTextField?.placeholder = "<Your password here>"
}

// 5.
alertController.addAction(loginAction)
present(alertController, animated: true, completion: nil)

}

}





```




## License

This code is distributed under the terms and conditions of the [MIT license](LICENSE).

## Change-log

A brief summary of each this release can be found in the [CHANGELOG](CHANGELOG.mdown). 
