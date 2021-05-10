#import "NSString+ValidNumber.h"

@implementation NSString (ValidNumber)

- (BOOL)isValidNumber {
    NSInteger count = self.length;
    if (count <= 0 || count > 100) {
        return false;
    }
    for (NSInteger item = 0; item < count; item++) {
        char ch = [self characterAtIndex:item];
        if (ch < '0' || ch > '9') {
           return false;
        }
    }
    return true;
}

@end
