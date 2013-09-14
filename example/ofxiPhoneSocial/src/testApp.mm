#include "testApp.h"

//--------------------------------------------------------------
void testApp::setup(){	
	// initialize the accelerometer
	ofxAccelerometer.setup();
	
	//If you want a landscape oreintation 
	//iPhoneSetOrientation(OFXIPHONE_ORIENTATION_LANDSCAPE_RIGHT);
	
	ofBackground(0);
    testImage.loadImage("icon.png");
    font.loadFont("vag.ttf", 18);
}

//--------------------------------------------------------------
void testApp::update(){

}

//--------------------------------------------------------------
void testApp::draw(){
    ofSetColor(255,255, 255);
    font.drawString("double tap to share", 20, 60);
	testImage.draw(ofGetWidth()/2, ofGetHeight()/2, testImage.width, testImage.height);
}

//--------------------------------------------------------------
void testApp::exit(){

}

//--------------------------------------------------------------
void testApp::touchDown(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void testApp::touchMoved(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void testApp::touchUp(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void testApp::touchDoubleTap(ofTouchEventArgs & touch){

//    social->postToFaceBook("I'm posting an ofImage", testImage);
//    social->tweet("I'm tweeting from openFrameworks!");
//    social->postToFaceBook("I'm posting an image as a filename", "icon.png");
//    social->tweet("I'm tweeting an ofImage", testImage);
//    social->show("I'm not sure where I want to share this image...", testImage);

    social->share("Hello!", "icon.png");
}

//--------------------------------------------------------------
void testApp::touchCancelled(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void testApp::lostFocus(){

}

//--------------------------------------------------------------
void testApp::gotFocus(){

}

//--------------------------------------------------------------
void testApp::gotMemoryWarning(){

}

//--------------------------------------------------------------
void testApp::deviceOrientationChanged(int newOrientation){

}

