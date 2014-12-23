//
//  VPViewController.h
//  VoicePlot
//
//  Created by Yuan Xingliang on 8/2/12.
//  Copyright (c) 2012 Yuan Xingliang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import "iFlyISR/IFlyRecognizeControl.h"
#import "VPPlotController.h"

// 文本框
#define H_BACK_TEXTVIEW_FRAME		CGRectMake(6, 0, 308, 187)
//#define H_TEXTVIEW_FRAME			CGRectMake(10, 3, 300, 179)
#define H_TEXTVIEW_FRAME			CGRectMake(6, 0, 308, 185)å

//#define H_CONTROL_FRAME CGRectMake(20, 70, 282, 210)
#define H_CONTROL_ORIGIN CGPointMake(20, 70)

//此appid为您所申请,请勿随意修改
#define APPID @"500f4db7"
#define ENGINE_URL @"http://dev.voicecloud.cn:1028/index.htm"


#define H_BUTTON_RECOGNIZE			CGRectMake(50, 300, 80, 40)
#define H_BUTTON_RECOGNIZE_SETUP	CGRectMake(190, 300, 80, 40)


#define SECTION_TITLE1 @"识别结果"
#define SECTION_TITLE2 @"用户操作"

#define BUTTON_TITLE1  @"开始听写"
#define BUTTON_TITLE2  @"设置"

#define TITLE @"转写演示"

@interface VPViewController : UIViewController <IFlyRecognizeControlDelegate> {
    
    IBOutlet UIButton *_recognizeButton;
    IBOutlet UITextView *_textView;
	// 中间变量
	IFlyRecognizeControl		*_iFlyRecognizeControl;
    
}

- (IBAction)PlotClick:(id)sender;

@end
