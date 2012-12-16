//
//  AppDelegate.m
//  TrackMix
//
//  Created by Vishaal Gupta on 2012-12-16.
//  Copyright (c) 2012 Sam Eisenstat. All rights reserved.
//

#import "AppDelegate.h"
#import "Track.h"

@implementation AppDelegate

@synthesize textField = _textField;
@synthesize slider = _slider;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	self.track = [[Track alloc] init];
	[self updateUserInterface];
}

- (IBAction)mute:(id)sender {
	[self.track setVolume:0.0];
	[self updateUserInterface];
}

- (IBAction)takeFloatValueForVolumeFrom:(id)sender {
	float newValue = [sender floatValue];
	[self.track setVolume:newValue];
	[self updateUserInterface];
}

- (void) updateUserInterface {
	float volume = [self.track volume];
	[self.textField setFloatValue:volume];
	[self.slider setFloatValue:volume];
}

@end
