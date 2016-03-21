//
//  ViewController.m
//  HXCircleAnimation
//
//  Created by  TheLittleBoy on 16/3/21.
//  Copyright © 2016年 华夏大地教育. All rights reserved.
//

#import "ViewController.h"
#import "UIView+HXCircleAnimation.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor colorWithRed:0.29 green:0.59 blue:0.81 alpha:1];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonTouchUpAction:(id)sender {
    
    [sender showCircleAnimationLayerWithColor:[UIColor whiteColor] andScale:3.0f];
}

- (IBAction)viewTapAction:(UITapGestureRecognizer *)sender {
    
    [sender.view showCircleAnimationLayerWithColor:[UIColor colorWithRed:rand()%255/255.0 green:rand()%255/255.0 blue:rand()%255/255.0 alpha:1.0f] andScale:3.0f];
    
}

- (IBAction)viewTapAction2:(UITapGestureRecognizer *)sender {
    
    [sender.view showCircleAnimationLayerWithColor:[UIColor whiteColor] andScale:4.0f];

}



@end
