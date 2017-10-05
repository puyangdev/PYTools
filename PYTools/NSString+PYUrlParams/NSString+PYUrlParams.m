//
//  NSString+PYUrlParams.m
//  Pods
//
//  Created by mac on 2017/10/5.
//

#import "NSString+PYUrlParams.h"

@implementation NSString (PYUrlParams)
+ (NSDictionary *)py_urlParamsWithUrl:(NSString *)url {
    if (!url || !url.length) {
        return nil;
    }
    
    if ([url rangeOfString:@"?"].location == NSNotFound) {
        return nil;
    }
    
    NSArray *separateDoubtArray = [url componentsSeparatedByString:@"?"];
    if (separateDoubtArray.count != 2) {
        return nil;
    }
    
    NSString *doubtString = [separateDoubtArray lastObject];
    NSArray *separateAndArray = [doubtString componentsSeparatedByString:@"&"];
    
    NSMutableDictionary *queryStringDictionary = [NSMutableDictionary dictionary];
    
    for (NSString *keyValuePair in separateAndArray) {
        NSArray *pairComponents = [keyValuePair componentsSeparatedByString:@"="];
        if (pairComponents.count != 2) {
            continue;
        }
        NSString *key = [[pairComponents firstObject] stringByRemovingPercentEncoding];
        NSString *value = [[pairComponents lastObject] stringByRemovingPercentEncoding];
        [queryStringDictionary setObject:value forKey:key];
    }
    
    return queryStringDictionary;
}
@end
