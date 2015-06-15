//
//  UIColor+TnE.h
//  TnEObjectiveCHelpers
//
//  Created by Sachith on 6/13/15.
//  Copyright (c) 2015 None. All rights reserved.
//

#import <UIKit/UIColor.h>

@interface UIColor(TnE)

+ (UIColor *)colorWithHexString:(NSString *)hexToConvert;
+ (UIColor *)colorWithHexString:(NSString *)hexToConvert alpha:(CGFloat)opacity;

@end
