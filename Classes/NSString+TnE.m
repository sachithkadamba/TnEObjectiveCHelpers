//
//  NSString+TnE.m
//  TnEObjectiveCHelpers
//
//  Created by Sachith on 6/15/15.
//  Copyright (c) 2015 None. All rights reserved.
//

#import "NSString+TnE.h"

@implementation NSString(TnE)

- (CGSize)sizeWithFontName:(NSString*)fontName andSize:(CGFloat)fontSize
{
    CGSize stringSize = CGSizeZero;
    
    if (self.length != 0)
    {
        stringSize = [self sizeWithAttributes:
                       @{NSFontAttributeName:
                             [UIFont fontWithName:fontName size:fontSize]}];
        return stringSize;
    }
    return stringSize;
}

@end
