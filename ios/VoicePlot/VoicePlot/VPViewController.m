//
//  VPViewController.m
//  VoicePlot
//
//  Created by Yuan Xingliang on 8/2/12.
//  Copyright (c) 2012 Yuan Xingliang. All rights reserved.
//

#import "VPViewController.h"
#import "VPPlotController.h"
#import "../funMining/funMiningController.h"

@interface VPViewController (Private)

- (void)disableButton;

- (void)enableButton;

@end

@implementation VPViewController

- (id)init
{
	if (self = [super init])
	{
		self.title = TITLE;
	}
	return self;
}

- (void)dealloc {
    [_textView release];
    [_recognizeButton release];
    [super dealloc];
}

#pragma mark
#pragma mark 接口回调

//	识别结束回调
- (void)onRecognizeEnd:(IFlyRecognizeControl *)iFlyRecognizeControl theError:(SpeechError) error
{
	NSLog(@"识别结束回调finish.....");
	[self enableButton];
	
	NSLog(@"getUpflow:%d,getDownflow:%d",[iFlyRecognizeControl getUpflow],[iFlyRecognizeControl getDownflow]);
	
}

- (void)onUpdateTextView:(NSString *)sentence
{
	
	NSString *str = [[NSString alloc] initWithFormat:@"%@%@", _textView.text, sentence];
	
    NSLog(str);
    funMiningController* fm_obj = [[funMiningController alloc] init];
    NSMutableArray* fun_array = [[NSMutableArray alloc] init];
    fun_array = [fm_obj fun_mining:str];
    
    NSMutableString * result = [[NSMutableString alloc] init];
    for (NSObject * obj in fun_array)
    {
        [result appendString:[obj description]];
    }
    _textView.text = result;
    [result release];
    [fun_array release];
    [fm_obj release];

}

- (void)onRecognizeResult:(NSArray *)array
{
	[self performSelectorOnMainThread:@selector(onUpdateTextView:) withObject:
	 [[array objectAtIndex:0] objectForKey:@"NAME"] waitUntilDone:YES];
}

- (void)onResult:(IFlyRecognizeControl *)iFlyRecognizeControl theResult:(NSArray *)resultArray
{
	[self onRecognizeResult:resultArray];
	
}
#pragma mark
#pragma mark 内部调用

- (void)disableButton
{
	_recognizeButton.enabled = NO;
	//_setupButton.enabled = NO;
	_textView.editable = NO;
	self.navigationController.navigationItem.leftBarButtonItem.enabled = NO;
}

- (void)enableButton
{
	_recognizeButton.enabled = YES;
	//_setupButton.enabled = YES;
	_textView.editable = YES;
	self.navigationController.navigationItem.leftBarButtonItem.enabled  = YES;
}

// 转写
- (void)onButtonRecognize
{
	if([_iFlyRecognizeControl start])
	{
		[self disableButton];
	}
}

- (void)viewDidLoad
{
    self.title = @"Voice Plot";
    
	NSString *initParam = [[NSString alloc] initWithFormat:
						   @"server_url=%@,appid=%@",ENGINE_URL,APPID];
    
	// 识别控件
	_iFlyRecognizeControl = [[IFlyRecognizeControl alloc] initWithOrigin:H_CONTROL_ORIGIN theInitParam:initParam];
	[self.view addSubview:_iFlyRecognizeControl];
	[_iFlyRecognizeControl setEngine:@"sms" theEngineParam:nil theGrammarID:nil];
	[_iFlyRecognizeControl setSampleRate:16000];
	_iFlyRecognizeControl.delegate = self;
	[initParam release];
    
    [_recognizeButton setTitle:BUTTON_TITLE1 forState:UIControlStateNormal];
    [_recognizeButton addTarget:self action:@selector(onButtonRecognize) forControlEvents:UIControlEventTouchDown];
	
	//_recoginzeSetupController = [[UIRecognizeSetupController alloc] initWithRecognize:_iFlyRecognizeControl];
	[super viewDidLoad];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
	[_textView resignFirstResponder];
}

- (void)viewDidUnload
{
    [_textView release];
    _textView = nil;
    [_recognizeButton release];
    _recognizeButton = nil;
    [super viewDidUnload];
}


- (IBAction)PlotClick:(id)sender
{
    VPPlotController *FunView = [[VPPlotController alloc]init];
    //self.delegate = FunView;
    //FunView.delegate = self;
    NSLog(@"fun is %@", _textView.text);
    [FunView passFun:_textView.text];
    //FunView.VPFun.text = [[NSString alloc] init];
    //FunView.VPFun.text = @"hello";
    //[self passFun:@"hello"];
    [self.navigationController pushViewController:FunView animated:YES];
    [FunView release];
}
@end
