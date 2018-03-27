#include "ofApp.h"

//--------------------------------------------------------------
void ofApp::setup(){	
	// initialize the accelerometer
	ofxAccelerometer.setup();
	
	//If you want a landscape oreintation 
	//iPhoneSetOrientation(OFXIPHONE_ORIENTATION_LANDSCAPE_RIGHT);
	
	ofBackground(0);
    testImage.load("Icon.png");
    font.load("vag.ttf", 18);
}

//--------------------------------------------------------------
void ofApp::update(){

}

//--------------------------------------------------------------
void ofApp::draw(){
    ofSetColor(255,255, 255);
    font.drawString("double tap to share", 20, 60);
	testImage.draw(ofGetWidth()/2, ofGetHeight()/2, testImage.getWidth(), testImage.getHeight());
}

//--------------------------------------------------------------
void ofApp::exit(){

}

//--------------------------------------------------------------
void ofApp::touchDown(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void ofApp::touchMoved(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void ofApp::touchUp(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void ofApp::touchDoubleTap(ofTouchEventArgs & touch){

//    social->postToFaceBook("I'm posting an ofImage", testImage);
//    social->tweet("I'm tweeting from openFrameworks!");
//    social->postToFaceBook("I'm posting an image as a filename", "icon.png");
//    social->tweet("I'm tweeting an ofImage", testImage);
//    social->show("I'm not sure where I want to share this image...", testImage);

    social->share("Hello!", "Icon.png");
}

//--------------------------------------------------------------
void ofApp::touchCancelled(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void ofApp::lostFocus(){

}

//--------------------------------------------------------------
void ofApp::gotFocus(){

}

//--------------------------------------------------------------
void ofApp::gotMemoryWarning(){

}

//--------------------------------------------------------------
void ofApp::deviceOrientationChanged(int newOrientation){

}

