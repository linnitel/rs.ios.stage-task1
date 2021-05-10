#import "NumberConverter.h"

@implementation NumberConverter

- (NSArray *)numberConverter:(NSNumber *)number {
    NSMutableArray *numString = [NSMutableArray arrayWithArray:@[]];
    int numTmp = abs([number intValue]);
    if (number) {
        if (numTmp == 0) {
            [numString addObject:@"0"];
        }
        else {
            while (numTmp > 0) {
                NSString *digitStr = [NSString stringWithFormat:@"%d", numTmp % 10];
                [numString addObject:digitStr];
                numTmp = numTmp / 10;
            }
        }
    }
    return numString;
}

@end
