//
//  NSArray+RemoveDuplicate.h
//  ArrayRemoveDuplicate
//
//  Created by Peigen.Liu on 2/15/19.
//  Copyright © 2019 Peigen.Liu. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSArray (RemoveDuplicate)



/**
 Get the New Array with Removed duplicated.

 @return New Array
 */
- (NSArray*)arrayByRemoveDuplicate;




/**
 Get the New Array with Removed duplicated.
 Example: If you want to remove duplicated "Person" in @[persionA, pB, pC] by "SSN",
 Then set keyPath to "SSN"

 @param keyPath Property Keypath which is according for duplicated.
 @return New Clean Array
 */
- (NSArray*)arrayByRemoveDuplicateWithPropertyKeyPath:(NSString * _Nullable )keyPath;

@end

NS_ASSUME_NONNULL_END
