//
//  ViewController.m
//  CLSlider-Example
//
//  Created by chuliangliang on 2017/3/17.
//  Copyright © 2017年 chuliangliang. All rights reserved.
//

#import "ViewController.h"
#import "CLSlider.h"


@interface ViewController ()
@property (nonatomic,strong) CLSlider *mSlider1;
@property (weak, nonatomic) IBOutlet CLSlider *mSlider2;
@property (nonatomic,strong) CLSlider *mSlider3;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.mSlider1 = [CLSlider new];
    self.mSlider1.sliderStyle = CLSliderStyle_Nomal;
    self.mSlider1.backgroundColor = [UIColor blackColor];
    self.mSlider1.thumbTintColor = [UIColor redColor];
    self.mSlider1.thumbShadowColor = [UIColor whiteColor];
    self.mSlider1.thumbShadowOpacity = 0.9f;
    self.mSlider1.thumbDiameter = 25;
    self.mSlider1.scaleLineColor = [UIColor whiteColor];
    self.mSlider1.scaleLineWidth = 5.0f;
    self.mSlider1.scaleLineHeight = 10;
    self.mSlider1.scaleLineNumber = 6;
    [self.mSlider1 setSelectedIndex:4];
    [self.mSlider1 addTarget:self action:@selector(slider01ChangeAction:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:self.mSlider1];
    
    self.mSlider2.sliderStyle = CLSliderStyle_Point;
    self.mSlider2.backgroundColor = [UIColor cyanColor];
    self.mSlider2.thumbTintColor = [UIColor greenColor];
    self.mSlider2.thumbShadowColor = [UIColor blackColor];
    self.mSlider2.thumbShadowOpacity = 0.6f;
    self.mSlider2.thumbDiameter = 20;
    self.mSlider2.scaleLineColor = [UIColor blackColor];
    self.mSlider2.scaleLineWidth = 0.5f;
    self.mSlider2.scaleLineHeight = 4;
    self.mSlider2.scaleLineNumber = 10;
    [self.mSlider2 setSelectedIndex:2];

    
    self.mSlider3 = [CLSlider new];
    self.mSlider3.sliderStyle = CLSliderStyle_Cross;
    self.mSlider3.backgroundColor = [UIColor colorWithRed:126/255.0 green:152/255.0 blue:242/255.0 alpha:1];
    self.mSlider3.thumbTintColor = [UIColor colorWithRed:33/255.0 green:148/255.0 blue:242/255.0 alpha:1];
    self.mSlider3.thumbShadowColor = [UIColor colorWithRed:229/255.0 green:251/255.0 blue:0 alpha:1];
    self.mSlider3.thumbShadowOpacity = 1.0f;
    self.mSlider3.thumbDiameter = 23;
    self.mSlider3.scaleLineColor = [UIColor lightGrayColor];
    self.mSlider3.scaleLineWidth = 2.0f;
    self.mSlider3.scaleLineHeight = 10;
    self.mSlider3.scaleLineNumber = 8;
    [self.mSlider3 setSelectedIndex:6];
    [self.mSlider3 addTarget:self action:@selector(slider03ChangeAction:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:self.mSlider3];
    
    

    self.stateLabel.text =  @"请滑动滑竿";

}


-(void)viewWillLayoutSubviews
{
    CGFloat W  = CGRectGetWidth([UIScreen mainScreen].bounds);
    self.stateLabel.frame = CGRectMake(0, 60, W, 20);
    
    self.mSlider1.frame = CGRectMake(10, 200, W-20, 30);
    
    self.mSlider2.frame = CGRectMake(10, 250, W-20, 30);
    
    self.mSlider3.frame = CGRectMake(10, 300, W-20, 30);
    
}


- (void)slider01ChangeAction:(CLSlider *)sender {
    
    self.stateLabel.text =  [NSString stringWithFormat:@"当前滑动滑竿1 value: %ld",sender.currentIdx];
}

- (IBAction)slider02ChangeAction:(CLSlider *)sender {
    self.stateLabel.text =  [NSString stringWithFormat:@"当前滑动滑竿2 value: %ld",sender.currentIdx];
}

- (void)slider03ChangeAction:(CLSlider *)sender {
    self.stateLabel.text =  [NSString stringWithFormat:@"当前滑动滑竿3 value: %ld",sender.currentIdx];
}

@end
