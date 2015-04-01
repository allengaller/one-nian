//
//  VPPlotController.h
//  VoicePlot
//
//  Created by Yuan Xingliang on 8/7/12.
//  Copyright (c) 2012 Yuan Xingliang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VPPlotController : UIViewController {
    NSString* fun_str;
    IBOutlet UITextField *VPFun;
    //IBOutlet UITextField *VPFun;
}

//@property (retain, nonatomic) IBOutlet UITextField *VPFun;

- (void)passFun:(NSString *)value;

@end
