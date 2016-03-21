//
//  HXCircleImageView.m
//  HXCircleAnimation
//
//  Created by  TheLittleBoy on 16/3/21.
//  Copyright © 2016年 华夏大地教育. All rights reserved.
//

#import "HXCircleImageView.h"

@implementation HXCircleImageView

- (void)layoutSubviews {
    [super layoutSubviews];
    [self updateMaskToBounds:self.bounds];
}

- (void)updateMaskToBounds:(CGRect)maskBounds {
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    
    CGPathRef maskPath = CGPathCreateWithEllipseInRect(maskBounds, NULL);
    
    maskLayer.bounds = maskBounds;
    maskLayer.path = maskPath;
    maskLayer.fillColor = [UIColor blackColor].CGColor;
    
    CGPoint point = CGPointMake(maskBounds.size.width/2, maskBounds.size.height/2);
    maskLayer.position = point;
    
    self.layer.cornerRadius = CGRectGetHeight(maskBounds) / 2.0;
//    self.layer.borderColor = [[UIColor whiteColor] colorWithAlphaComponent:0.7].CGColor;
//    self.layer.borderWidth = 3.0f;
    
    [self.layer setMask:maskLayer];
}
@end
