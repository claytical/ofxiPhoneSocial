//
//  ofxiPhoneSocial.m
//  ofxiPhoneSocial
//
//  Created by Clay Ewing on 9/13/13.
//
//

#import "ofxiPhoneSocial.h"

void ofxiPhoneSocial::postToFaceBook(string message, string image_filename) {
  //  social = [[ofxiPhoneSocialDelegate alloc] init];
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook]) {
        // Initialize Compose View Controller
        SLComposeViewController *viewController = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
        // Configure Compose View Controller
        [viewController setInitialText:ofxStringToNSString(message)];
            [viewController addImage:[UIImage imageNamed:ofxStringToNSString(image_filename)]];
            // Present Compose View Controller
        [ofxiPhoneGetAppDelegate().glViewController presentModalViewController:viewController animated:YES];
    } else {
        NSString *message = @"You haven't connected your Facebook account or you aren't connected to the network. You should check your settings.";
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error" message:message delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alertView show];

    }
}

void ofxiPhoneSocial::postToFaceBook(string message, UIImage *image) {
    //  social = [[ofxiPhoneSocialDelegate alloc] init];
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook]) {
        // Initialize Compose View Controller
        SLComposeViewController *viewController = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
        // Configure Compose View Controller
        [viewController setInitialText:ofxStringToNSString(message)];
        [viewController addImage:image];
        // Present Compose View Controller
        [ofxiPhoneGetAppDelegate().glViewController presentModalViewController:viewController animated:YES];
    } else {
        NSString *message = @"You haven't connected your Facebook account or you aren't connected to the network. You should check your settings.";
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error" message:message delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alertView show];

    }
}

void ofxiPhoneSocial::postToFaceBook(string message, ofImage image) {
    //  social = [[ofxiPhoneSocialDelegate alloc] init];
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook]) {
        // Initialize Compose View Controller
        SLComposeViewController *viewController = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
        // Configure Compose View Controller
        [viewController setInitialText:ofxStringToNSString(message)];
        /* thanks to xxxlol for this conversion code in the of forums
         http://forum.openframeworks.cc/index.php?topic=12377.0 */
      
        CGDataProviderRef provider = CGDataProviderCreateWithData(NULL, image.getPixels(), (image.getWidth()*image.getHeight()*3), NULL);
        CGImageRef imageRef = CGImageCreate(image.getWidth(), image.getHeight(), 8, 24, 3*image.getWidth(), CGColorSpaceCreateDeviceRGB(), kCGBitmapByteOrderDefault, provider, NULL, NO, kCGRenderingIntentDefault);
        NSData *imageData = UIImagePNGRepresentation([UIImage imageWithCGImage:imageRef]);
        UIImage *output = [UIImage imageWithData:imageData];
        /* end snippet */
        
        [viewController addImage:output];
        [ofxiPhoneGetAppDelegate().glViewController presentModalViewController:viewController animated:YES];
        
    } else {
        NSString *message = @"You haven't connected your Facebook account or you aren't connected to the network. You should check your settings.";
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error" message:message delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alertView show];
    }


    
    
}

void ofxiPhoneSocial::postToFaceBook(string message) {
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook]) {
        // Initialize Compose View Controller
        SLComposeViewController *viewController = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
        [viewController setInitialText:ofxStringToNSString(message)];
        [ofxiPhoneGetViewController() presentModalViewController:viewController animated:YES];
    } else {
        NSString *message = @"You haven't connected your Facebook account or you aren't connected to the network. You should check your settings.";
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error" message:message delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alertView show];

    }
}

void ofxiPhoneSocial::tweet(string message) {
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter]) {
        // Initialize Compose View Controller
        SLComposeViewController *viewController = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
        // Configure Compose View Controller
        [viewController setInitialText:ofxStringToNSString(message)];
        // Present Compose View Controller
        [ofxiPhoneGetViewController() presentModalViewController:viewController animated:YES];
    } else {
        NSString *message = @"You haven't connected your Twitter account or you aren't connected to the network. You should check your settings.";
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error" message:message delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alertView show];
        
    }
}


void ofxiPhoneSocial::tweet(string message, string image_filename) {
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter]) {
        // Initialize Compose View Controller
        SLComposeViewController *viewController = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
        // Configure Compose View Controller
        [viewController setInitialText:ofxStringToNSString(message)];
        [viewController addImage:[UIImage imageNamed:ofxStringToNSString(image_filename)]];

        // Present Compose View Controller
        [ofxiPhoneGetViewController() presentModalViewController:viewController animated:YES];
    } else {
        NSString *message = @"You haven't connected your Twitter account or you aren't connected to the network. You should check your settings.";
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error" message:message delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alertView show];
        
    }
}

void ofxiPhoneSocial::tweet(string message, ofImage image) {
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter]) {
        // Initialize Compose View Controller
        SLComposeViewController *viewController = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
        // Configure Compose View Controller
        [viewController setInitialText:ofxStringToNSString(message)];
        /* thanks to xxxlol for this conversion code in the of forums
         http://forum.openframeworks.cc/index.php?topic=12377.0 */
        
        CGDataProviderRef provider = CGDataProviderCreateWithData(NULL, image.getPixels(), (image.getWidth()*image.getHeight()*3), NULL);
        CGImageRef imageRef = CGImageCreate(image.getWidth(), image.getHeight(), 8, 24, 3*image.getWidth(), CGColorSpaceCreateDeviceRGB(), kCGBitmapByteOrderDefault, provider, NULL, NO, kCGRenderingIntentDefault);
        NSData *imageData = UIImagePNGRepresentation([UIImage imageWithCGImage:imageRef]);
        UIImage *output = [UIImage imageWithData:imageData];
        /* end snippet */
        
        [viewController addImage:output];
        
        // Present Compose View Controller
        [ofxiPhoneGetViewController() presentModalViewController:viewController animated:YES];
    } else {
        NSString *message = @"You haven't connected your Twitter account or you aren't connected to the network. You should check your settings.";
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error" message:message delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alertView show];
        
    }
}

void ofxiPhoneSocial::tweet(string message, UIImage * image) {
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter]) {
        // Initialize Compose View Controller
        SLComposeViewController *viewController = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
        // Configure Compose View Controller
        [viewController setInitialText:ofxStringToNSString(message)];
        
        [viewController addImage:image];
        
        // Present Compose View Controller
        [ofxiPhoneGetViewController() presentModalViewController:viewController animated:YES];
    } else {
        NSString *message = @"You haven't connected your Twitter account or you aren't connected to the network. You should check your settings.";
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error" message:message delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alertView show];
        
    }
}

void ofxiPhoneSocial::share(string text) {
    NSArray * activityItems = @[ofxStringToNSString(text)];
    
    UIActivityViewController *activityController = [[UIActivityViewController alloc]
                                                    initWithActivityItems:activityItems applicationActivities:nil];

    /*
     If you want to exclude activities, you can uncomment this and add in whatever you want
     */
    
    //activityController.excludedActivityTypes = @[UIActivityTypePostToWeibo, UIActivityTypeAssignToContact, UIActivityTypeCopyToPasteboard];

    [ofxiPhoneGetViewController() presentModalViewController:activityController animated:YES];
    
}

void ofxiPhoneSocial::share(string text, UIImage *image) {
    NSArray * activityItems = @[ofxStringToNSString(text), image];
    
    UIActivityViewController *activityController = [[UIActivityViewController alloc]
                                                    initWithActivityItems:activityItems applicationActivities:nil];
    
    /*
     If you want to exclude activities, you can uncomment this and add in whatever you want
     */
    
    //activityController.excludedActivityTypes = @[UIActivityTypePostToWeibo, UIActivityTypeAssignToContact, UIActivityTypeCopyToPasteboard];
    
    [ofxiPhoneGetViewController() presentModalViewController:activityController animated:YES];
    
}

void ofxiPhoneSocial::share(string text, ofImage image) {
    //UIActivityViewController *activityController = [UIActivityViewController alloc] initWithActivityItems: @[ofxStringToNSString(text) applicationActivities:nil];
    /* thanks to xxxlol for this conversion code in the of forums
     http://forum.openframeworks.cc/index.php?topic=12377.0 */
    
    CGDataProviderRef provider = CGDataProviderCreateWithData(NULL, image.getPixels(), (image.getWidth()*image.getHeight()*3), NULL);
    CGImageRef imageRef = CGImageCreate(image.getWidth(), image.getHeight(), 8, 24, 3*image.getWidth(), CGColorSpaceCreateDeviceRGB(), kCGBitmapByteOrderDefault, provider, NULL, NO, kCGRenderingIntentDefault);
    NSData *imageData = UIImagePNGRepresentation([UIImage imageWithCGImage:imageRef]);
    UIImage *output = [UIImage imageWithData:imageData];
    /* end snippet */

    NSArray * activityItems = @[ofxStringToNSString(text), output];
    
    UIActivityViewController *activityController = [[UIActivityViewController alloc]
                                                    initWithActivityItems:activityItems applicationActivities:nil];
    
    /*
     If you want to exclude activities, you can uncomment this and add in whatever you want
     */
    
    //activityController.excludedActivityTypes = @[UIActivityTypePostToWeibo, UIActivityTypeAssignToContact, UIActivityTypeCopyToPasteboard];
    
    [ofxiPhoneGetViewController() presentModalViewController:activityController animated:YES];
    
}

void ofxiPhoneSocial::share(string text, string filename) {
    //UIActivityViewController *activityController = [UIActivityViewController alloc] initWithActivityItems: @[ofxStringToNSString(text) applicationActivities:nil];
    NSArray * activityItems = @[ofxStringToNSString(text), [UIImage imageNamed:ofxStringToNSString(filename)]];
    
    UIActivityViewController *activityController = [[UIActivityViewController alloc]
                                                    initWithActivityItems:activityItems applicationActivities:nil];
    
    /*
     If you want to exclude activities, you can uncomment this and add in whatever you want
     */
    
    //activityController.excludedActivityTypes = @[UIActivityTypePostToWeibo, UIActivityTypeAssignToContact, UIActivityTypeCopyToPasteboard];
    
    [ofxiPhoneGetViewController() presentModalViewController:activityController animated:YES];
    
}
