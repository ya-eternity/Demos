//
//  Person.h
//  RealmDemo
//
//  Created by Zoey on 16/3/10.
//  Copyright © 2016年 Zoey. All rights reserved.
//

#import <Realm/Realm.h>
#import "Dog.h"

@interface Person : RLMObject

@property (copy, nonatomic) NSString *name;
@property (strong, nonatomic) RLMArray <Dog> * dogs;

@end

// This protocol enables typed collections. i.e.:
// RLMArray<Person>
RLM_ARRAY_TYPE(Person)
