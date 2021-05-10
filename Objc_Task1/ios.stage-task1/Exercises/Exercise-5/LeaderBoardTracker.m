#import "LeaderBoardTracker.h"

@interface LeaderBoardTracker()

@property (nonatomic, strong) NSArray <NSNumber *> *playersPlaces;

@end

@implementation LeaderBoardTracker

- (NSArray <NSNumber *> *)trackLeaderBoard:(NSArray <NSNumber *> *)rankedArray
                               playerArray:(NSArray <NSNumber *> *)playerArray {
    NSMutableArray *scores = [NSMutableArray arrayWithArray:@[]];
//    if (playerArray isEqualToArray:@[]) {
//        return scores;
//    }
    for (NSNumber *index in playerArray) {
        int rank = 1;
        int prevScore = -1;
        for (NSNumber *place in rankedArray) {
            if ([index intValue] >= [place intValue]) {
                break ;
            }
            if ([place intValue] != prevScore) {
                rank++;
                prevScore = [place intValue];
            }
        }
        [scores addObject:@(rank)];
    }
    return scores;
}

@end
