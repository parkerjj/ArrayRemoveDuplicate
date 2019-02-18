# ArrayRemoveDuplicate
A Category for NSArray Remove Duplicate


# Usage
    $ [mArray arrayByRemoveDuplicate]
  Remove duplicate by the element itself.  Fliter by pointer.
  
 ####    or
  
    $ [mArray arrayByRemoveDuplicateWithPropertyKeyPath:@"someProperty"]
  Remove duplicate by the element it's property(keyPath).  Fliter by property's pointer.
  or you can overwrite property's -(NSUInteger)hash method to implement more function.
  
  


# Example
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


    Final Result:      
    Test : Before Count 200   After Count 100
    Test : Before Count 200   After Count 100
