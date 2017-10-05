//
//  NSString+PYSize.m
//  Pods
//
//  Created by mac on 2017/10/5.
//

#import "NSString+PYSize.h"


@implementation NSString (PYSize)

- (CGSize)py_sizeWithFont:(UIFont *)font width:(CGFloat)width {
    CGSize size = CGSizeMake(width, CGFLOAT_MAX);
    NSDictionary *dict = @{NSFontAttributeName: font};
    size = [self boundingRectWithSize:size
                              options:NSStringDrawingUsesLineFragmentOrigin
                           attributes:dict
                              context:nil].size;
    return size;
}

@end
