//
//  VPAppDelegate.h
//  VoicePlot
//
//  Created by Yuan Xingliang on 8/2/12.
//  Copyright (c) 2012 Yuan Xingliang. All rights reserved.
//

#import <UIKit/UIKit.h>

@class VPViewController;

@interface VPAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) VPViewController *viewController;

@property (strong, nonatomic) UINavigationController *naviController;

@end
