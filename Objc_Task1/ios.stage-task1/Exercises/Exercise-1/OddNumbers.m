//
//  OddNumbers.m
//  ios.stage-task1
//
//  Created by Alex Tsybulko on 4.05.21.
//

#import <Foundation/Foundation.h>
#import "OddNumbers.h"

@implementation OddNumbers

- (NSInteger)oddNumbers:(NSArray <NSNumber *> *)array {
    NSInteger count = [array count];
    NSInteger odd = 0;
    for (NSInteger index = 0; index < count; index++) {
        
        if (([[array objectAtIndex:index] integerValue] % 2) != 0) {
            odd += 1;
        }
    }
    return odd;
}

@end
