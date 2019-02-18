//
//  NSArray+RemoveDuplicate.m
//  ArrayRemoveDuplicate
//
//  Created by Peigen.Liu on 2/15/19.
//  Copyright © 2019 Peigen.Liu. All rights reserved.
//

#import "NSArray+RemoveDuplicate.h"


@implementation NSArray(RemoveDuplicate)


- (NSArray*)arrayByRemoveDuplicate{
    return [self arrayByRemoveDuplicateWithPropertyKeyPath:nil];
}



- (NSArray*)arrayByRemoveDuplicateWithPropertyKeyPath:(NSString*)keyPath{
    NSMutableArray *mArray = [NSMutableArray arrayWithCapacity:self.count];
    NSMutableSet *mSet = [NSMutableSet setWithCapacity:self.count];
    for (NSObject *obj in self) {
        NSObject *target;
        if (keyPath == nil || keyPath.length == 0) {
            target = obj;
        }else{
            target = [obj valueForKeyPath:keyPath];
        }
        NSUInteger originCount = mSet.count;
        [mSet addObject:target];
        if (originCount < mSet.count) {
            [mArray addObject:obj];
        }
        
    }
    
    return [NSArray arrayWithArray:mArray];
}

@end
