<p align="center" >
  <img src="https://github.com/igormatyushkin014/Visuality/blob/master/Logo/logo-300-300.png" alt="Visuality" title="Visuality">
</p>

# Visuality
`Visuality` is a library for iOS which includes set of extensions that simplify work with UI. Written in Swift.

**How To Get Started**

Copy content of `Visuality` folder to your project.

**Requirements**

* iOS 7 and later
* Xcode 7 and later

**Usage**

*View Initialization*

This library solves a problem of loading views from nib, which usually requires to write a lot of code. With `Visuality` it's possible to initialize view with one line of code.

Examples of view initialization by using methods from `UIView` extension:

```swift
/*
 * Initialize by nib name and bundle.
 */

let someBundle1 = NSBundle(identifier: "com.example.SomeBundleIdentifier")

let someView1 = SomeView.VT_viewFromNibWithName("SomeNibName", locatedInBundle: someBundle1)


/*
 * Initialize by nib name and bundle identifier.
 */

let someView2 = SomeView.VT_viewFromNibWithName("SomeNibName", locatedInBundleWithIdentifier: "com.example.SomeBundleIdentifier")


/*
 * Initialize by nib name located in main bundle.
 */

let someView3 = SomeView.VT_viewFromNibLocatedInMainBundleWithNibName("SomeNibName")


/*
 * Also, when you send nil as value for bundle,
 * view will be loaded from main bundle too.
 */

let someView4 = SomeView.VT_viewFromNibWithName("SomeNibName", locatedInBundle: nil)


/*
 * Initialize from nib with class name and bundle.
 */

let someBundle5 = NSBundle(identifier: "com.example.SomeBundleIdentifier")

let someView5 = SomeView.VT_viewFromNibWithClassNameLocatedInBundle(someBundle5)


/*
 * Initialize from nib with class name and bundle identifier.
 */

let someView6 = SomeView.VT_viewFromNibWithClassNameLocatedInBundleWithIdentifier("com.example.SomeBundleIdentifier")


/*
 * Initialize from nib with class name located in main bundle.
 */

let someView7 = SomeView.VT_viewFromNibWithClassNameLocatedInMainBundle()


/*
 * You can do the same thing by sending nil as value for bundle identifier.
 * In this case view will be loaded from main bundle too.
 */

let someView8 = SomeView.VT_viewFromNibWithClassNameLocatedInBundleWithIdentifier(nil)

```

**License**

`Visuality` is available under the MIT license. See the `LICENSE` file for more info.
