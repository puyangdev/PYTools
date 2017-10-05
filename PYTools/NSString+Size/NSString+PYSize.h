//
//  NSString+PYSize.h
//  Pods
//
//  Created by mac on 2017/10/5.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (PYSize)
- (CGSize)py_sizeWithFont:(UIFont *)font width:(CGFloat)width;
@end
