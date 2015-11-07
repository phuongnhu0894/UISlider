//
//  ViewController.m
//  UISlider
//
//  Created by student on 11/7/15.
//  Copyright © 2015 Techmaster. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (assign, nonatomic) NSTimer* timer;
@property (weak, nonatomic) IBOutlet UISlider *slider;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.timer = [NSTimer scheduledTimerWithTimeInterval:0.2 target:self selector:@selector(onTimer) userInfo:nil repeats:true];
    self.slider.transform = CGAffineTransformMakeRotation(-M_PI_2);
    self.slider.tintColor = [UIColor redColor];
    self.slider.thumbTintColor = [UIColor yellowColor];
}

- (void) onTimer {
    self.slider.value +=0.05;
    if (self.slider.value >= 1.0) {
        self.slider.value =1.0;
        [self.timer invalidate];
    }
    
}

@end
