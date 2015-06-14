//
//  UIColor+TnE.m
//  TnEObjectiveCHelpers
//
//  Created by Sachith on 6/13/15.
//  Copyright (c) 2015 None. All rights reserved.
//

#import "UIColor+TnE.h"

@implementation UIColor(TnE)

+ (UIColor *)colorWithRGBHex:(UInt32)hex alpha:(CGFloat)opacity
{
    int r = (hex >> 16) & 0xFF;
    int g = (hex >> 8) & 0xFF;
    int b = (hex) & 0xFF;
    
    return [UIColor colorWithRed:r / 255.0f green:g / 255.0f blue:b / 255.0f alpha:opacity];
}

+ (UIColor *)colorWithHexString:(NSString *)hexToConvert
{
    return [UIColor colorWithHexString:hexToConvert alpha:1.0f];
}

+ (UIColor *)colorWithHexString:(NSString *)hexToConvert alpha:(CGFloat)opacity
{
    NSString *colorString = [[[hexToConvert stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] stringByTrimmingCharactersInSet:[NSCharacterSet symbolCharacterSet]] uppercaseString];
    
    if ([colorString hasPrefix:@"0X"]) colorString = [colorString substringFromIndex:2];
    
    NSScanner *scanner = [NSScanner scannerWithString:colorString];
    unsigned hexNum;
    if (![scanner scanHexInt:&hexNum]) return nil;
    
    return [UIColor colorWithRGBHex:hexNum alpha:opacity];
}

@end
