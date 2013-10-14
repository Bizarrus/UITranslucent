UITranslucent
=============

extends the UIView with native translucent

Use UITranslucent like UIView! For Storyboarding, set the Class over the InterfaceBuilder on an UIViewController.

How that works?
=============

Really simple. Apple forbid developers to access their private API to use translucent Layers. Unfortunately, let's steal the layer of a UIToolbar to visualize the whole ;)

Known issues
=============

The translucent layer supports only standard colors. Once an RGB color or alpha transparency is set, the layer remains white and the blur effect appears gray scaled.

**Works**
 `[UIColor whiteColor]
[UIColor blackColor]
[UIColor redColor]
[UIColor blueColor]`

**Don't work**
 `[UIColor colorWithRed: 255.0f green: 0.0f blue: 0.0f alpha: 0.5f]`
 
Screenshots
=============

![alt tag](https://raw.github.com/hovida/UITranslucent/master/Screenshots/example.png)

![alt tag](https://raw.github.com/hovida/UITranslucent/master/Screenshots/example_overlay.png)