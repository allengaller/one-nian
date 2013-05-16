//
//  VPPlotController.m
//  VoicePlot
//
//  Created by Yuan Xingliang on 8/7/12.
//  Copyright (c) 2012 Yuan Xingliang. All rights reserved.
//

#import "VPPlotController.h"
#import "VPViewController.h"

@interface VPPlotController ()

@end

@implementation VPPlotController
//@synthesize VPFun;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    //self.VPFun.text = [[NSString alloc] init];
    self->VPFun.text = self->fun_str;
    //[self passFun:@"hello"];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    //[self setVPFun:nil];
    [VPFun release];
    VPFun = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)dealloc {
    [VPFun release];
    [super dealloc];
}

- (void)passFun:(NSString *)value
{
    //self.VPFun.text = value;
    //self->VPFun.text = [[NSString alloc] init];
    //self->VPFun = [[UITextField alloc] init];
    //self->VPFun.text = value;
    self->fun_str = [[NSString alloc] init];
    self->fun_str = value;
    //NSLog(@"the get fun is %@", self->VPFun.text);
    //[self->fun_str release];
}
@end
