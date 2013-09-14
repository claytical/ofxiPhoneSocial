//
//  ofxiPhoneSocial.h
//  ofxiPhoneSocial
//
//  Created by Clay Ewing on 9/13/13.
//
//

#import <UIKit/UIKit.h>
#import "ofMain.h"
#include "ofxiPhoneExtras.h"
#import "social/Social.h"
#import "accounts/Accounts.h"

@class ofxiPhoneSocialDelegate;

class ofxiPhoneSocial {
    
public:
    void postToFaceBook(string text, UIImage *image);
    void postToFaceBook(string text, ofImage image);
    void postToFaceBook(string text, string filename);
    void postToFaceBook(string text);
    void tweet(string text);
    void tweet(string text, UIImage * image);
    void tweet(string text, ofImage image);
    void tweet(string text, string filename);
    void share(string text);
    void share(string text, string filename);
    void share(string text, ofImage image);
    void share(string text, UIImage * image);

private:

protected:
    
};


@interface ofxiPhoneSocialDelegate : NSObject {
    
}
@property (nonatomic, assign) ofxiPhoneSocial *delegate;
@end


