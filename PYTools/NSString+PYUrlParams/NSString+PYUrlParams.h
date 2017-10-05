//
//  NSString+PYUrlParams.h
//  Pods
//
//  Created by mac on 2017/10/5.
//

#import <Foundation/Foundation.h>

@interface NSString (PYUrlParams)
+ (NSDictionary *)py_urlParamsWithUrl:(NSString *)url;
@end
