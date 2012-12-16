//
//  AppDelegate.h
//  TrackMix
//
//  Created by Vishaal Gupta on 2012-12-16.
//  Copyright (c) 2012 Sam Eisenstat. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class Track;

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTextField *textField;
@property (weak) IBOutlet NSSliderCell *slider;

@property (strong) Track *track;

- (IBAction)mute:(id)sender;
- (IBAction)takeFloatValueForVolumeFrom:(id)sender;

- (void)updateUserInterface;

@end
