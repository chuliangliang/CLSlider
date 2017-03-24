//
//  ViewController.h
//  CLSlider-Example
//
//  Created by chuliangliang on 2017/3/17.
//  Copyright © 2017年 chuliangliang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CLSlider.h"
@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *stateLabel;
- (IBAction)slider02ChangeAction:(CLSlider *)sender;

@end

