//
//  main.m
//  ArrayRemoveDuplicate
//
//  Created by Peigen.Liu on 2/15/19.
//  Copyright © 2019 Peigen.Liu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TestObject.h"
#import "NSArray+RemoveDuplicate.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        
        
        NSMutableArray *mArray = [[NSMutableArray alloc] initWithCapacity:100];
        for (int i = 0; i < 100; i++) {
            NSString *string = [NSString stringWithFormat:@"%d",i];
            [mArray addObject:string];
            [mArray addObject:string];
        }
        NSLog(@"[Remove arrayByRemoveDuplicate] Test : Before Count %lu   After Count %lu", (unsigned long)[mArray count], [mArray arrayByRemoveDuplicate].count);
        
        
        
        [mArray removeAllObjects];
        for (int i = 0; i < 200; i++) {
            TestObject *testObj = [[TestObject alloc] init];
            [testObj setTestString:[NSString stringWithFormat:@"%d",i%100]];
            [mArray addObject:testObj];
        }
        NSLog(@"[Remove arrayByRemoveDuplicate] Test : Before Count %lu   After Count %lu", (unsigned long)[mArray count], [mArray arrayByRemoveDuplicateWithPropertyKeyPath:@"testString"].count);

    }
    return 0;
}
