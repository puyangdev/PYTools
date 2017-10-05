//
//  UIDevice+PYHardware.m
//  Pods
//
//  Created by mac on 2017/10/5.
//

#import "UIDevice+PYHardware.h"
#import <sys/utsname.h>

@implementation UIDevice (PYHardware)

+ (NSString *)py_platformString {
    struct utsname systemInfo;
    uname(&systemInfo);
    NSString *result = [NSString stringWithCString:systemInfo.machine
                                          encoding:NSUTF8StringEncoding];
    // https://www.theiphonewiki.com/wiki/Models
    NSDictionary *matches = @{
                              @"i386" : @"32-bit Simulator",
                              @"x86_64" : @"64-bit Simulator",
                              
                              @"iPod1,1" : @"iPod Touch",
                              @"iPod2,1" : @"iPod Touch Second Generation",
                              @"iPod3,1" : @"iPod Touch Third Generation",
                              @"iPod4,1" : @"iPod Touch Fourth Generation",
                              @"iPod5,1" : @"iPod Touch Fifth Generation",
                              
                              @"iPad1,1" : @"iPad",
                              @"iPad2,1" : @"iPad 2",
                              @"iPad2,2" : @"iPad 2",
                              @"iPad2,3" : @"iPad 2",
                              @"iPad2,4" : @"iPad 2",
                              @"iPad2,5" : @"iPad Mini",
                              @"iPad2,6" : @"iPad Mini",
                              @"iPad2,7" : @"iPad Mini",
                              @"iPad3,1" : @"iPad 3",
                              @"iPad3,2" : @"iPad 3(GSM+CDMA)",
                              @"iPad3,3" : @"iPad 3(GSM)",
                              @"iPad3,4" : @"iPad 4(WiFi)",
                              @"iPad3,5" : @"iPad 4(GSM)",
                              @"iPad3,6" : @"iPad 4(GSM+CDMA)",
                              @"iPad4,1" : @"iPad Air",
                              @"iPad4,2" : @"iPad Air",
                              @"iPad4,3" : @"iPad Air",
                              @"iPad4,4" : @"iPad Mini 2",
                              @"iPad4,5" : @"iPad Mini 2",
                              @"iPad4,6" : @"iPad Mini 2",
                              @"iPad4,7" : @"iPad Mini 3",
                              @"iPad4,8" : @"iPad Mini 3",
                              @"iPad4,9" : @"iPad Mini 3",
                              @"iPad5,1" : @"iPad Mini 4",
                              @"iPad5,2" : @"iPad Mini 4",
                              @"iPad5,3" : @"iPad Air 2",
                              @"iPad5,4" : @"iPad Air 2",
                              @"iPad6,3" : @"iPad Pro (9.7in)",
                              @"iPad6,4" : @"iPad Pro (9.7in)",
                              @"iPad6,7" : @"iPad Pro (12.9in)",
                              @"iPad6,8" : @"iPad Pro (12.9in)",
                              
                              @"iPhone1,1" : @"iPhone",
                              @"iPhone1,2" : @"iPhone 3G",
                              @"iPhone2,1" : @"iPhone 3GS",
                              @"iPhone3,1" : @"iPhone 4",
                              @"iPhone3,3" : @"iPhone 4",
                              @"iPhone4,1" : @"iPhone 4S",
                              @"iPhone5,1" : @"iPhone 5(GSM)",
                              @"iPhone5,2" : @"iPhone 5(GSM+CDMA)",
                              @"iPhone5,3" : @"iPhone 5C(GSM)",
                              @"iPhone5,4" : @"iPhone 5C(GSM+CDMA)",
                              @"iPhone6,1" : @"iPhone 5S(GSM)",
                              @"iPhone6,2" : @"iPhone 5S(GSM+CDMA)",
                              @"iPhone7,1" : @"iPhone 6 Plus",
                              @"iPhone7,2" : @"iPhone 6",
                              @"iPhone8,1" : @"iPhone 6S",
                              @"iPhone8,2" : @"iPhone 6S Plus",
                              @"iPhone8,4" : @"iPhone SE",
                              @"iPhone9,1" : @"iPhone 7",
                              @"iPhone9,3" : @"iPhone 7",
                              @"iPhone9,2" : @"iPhone 7 Plus",
                              @"iPhone9,4" : @"iPhone 7 Plus",
                              };
    
    if (matches[result]) {
        return matches[result];
    }
    else {
        return result;
    }
}
@end
