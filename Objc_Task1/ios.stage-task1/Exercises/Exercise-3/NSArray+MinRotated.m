#import "NSArray+MinRotated.h"

@implementation NSArray (MinRotated)

- (NSNumber *)minRotated {
    int index = (int)[self count];
    if (!index) {
        return nil;
    }
    int start = 0;
    int end = index - 1;
    int mid = start;
    if ([self[start] intValue] > [self[end] intValue]) {
        while (start < end) {
            mid = start + floor((end - start)/2);
            if (mid < end && [self[mid] intValue] > [self[mid + 1] intValue]) {
                return self[mid + 1];
            }
            else if (mid > start && [self[mid] intValue] < [self[mid - 1] intValue]) {
                return self[mid];
            }
            else {
                if ([self[mid] intValue] < [self[end] intValue]) {
                    end = mid - 1;
                }
                else {
                    start = mid + 1;
                }
            }
        }
        return self[end];
    }
    return self[start];
}

@end
