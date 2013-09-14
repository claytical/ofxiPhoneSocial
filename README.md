ofxiPhoneSocial
===============

Social Framework Integration into openFrameworks on iOS

##Installation
Add the Accounts and Social Framework to your project in Xcode.
Then just copy the ofxiPhonePayPal.h and ofxiPhonePayPal.mm files into your project.

##Usage

You can post directly to Facebook or Twitter. You can also choose from a menu of available services (email, weibo, twitter, etc).

There are three basic functions:

postToFacebook(text, image)
postToTwitter(text, image)
share(text, image)

Each function is overloaded so you don't have to include an image. You can also share the image via a filename, ofImage or UIImage.

Last but not least, if you want to change what's shown on the share menu, uncomment the follow line in ofxiPhoneSocial.h

activityController.excludedActivityTypes = @[UIActivityTypePostToWeibo, UIActivityTypeAssignToContact, UIActivityTypeCopyToPasteboard];

Autocomplete will help you but you can also view documentation at http://developer.apple.com/library/ios/#documentation/UIKit/Reference/UIActivity_Class/Reference/Reference.html#//apple_ref/occ/cl/UIActivity
