//
//  Dog.h
//  RealmDemo
//
//  Created by Zoey on 16/3/10.
//  Copyright © 2016年 Zoey. All rights reserved.
//

#import <Realm/Realm.h>

@class Person;
@interface Dog : RLMObject

@property (copy, nonatomic) NSString *name;
//@property (assign, nonatomic) NSInteger age;
//@property (assign, nonatomic) float weight;
@property (strong, nonatomic) Person *owner;

@end

// This protocol enables typed collections. i.e.:
// RLMArray<Dog>
RLM_ARRAY_TYPE(Dog)
