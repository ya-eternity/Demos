//
//  Dog.m
//  RealmDemo
//
//  Created by Zoey on 16/3/10.
//  Copyright © 2016年 Zoey. All rights reserved.
//

#import "Dog.h"

@implementation Dog

// Specify default values for properties

//+ (NSDictionary *)defaultPropertyValues
//{
//    return @{};
//}

+ (NSString *)primaryKey
{
    return @"name";
}

// Specify properties to ignore (Realm won't persist these)

+ (NSArray *)ignoredProperties
{
    return @[@"owner"];
}

@end
