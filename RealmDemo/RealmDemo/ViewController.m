//
//  ViewController.m
//  RealmDemo
//
//  Created by Zoey on 16/3/8.
//  Copyright © 2016年 Zoey. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *docPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    NSString *dbPath = [docPath stringByAppendingPathComponent:@"db"];
    if (![[NSFileManager defaultManager] fileExistsAtPath:docPath])
    {
        [[NSFileManager defaultManager] createDirectoryAtPath:dbPath withIntermediateDirectories:NO attributes:nil error:nil];
    }
    RLMRealm *realm = [RLMRealm realmWithPath:[dbPath stringByAppendingPathComponent:@"db.realm"]];
    NSLog(@"%@", realm.path);
    
    Dog *dahuang = [Dog new];
    dahuang.name = @"大黄";
//    dahuang.age = 22;
    
    Person *zoey = [Person new];
    zoey.name = @"zoey";
    
    dahuang.owner = zoey;
    [zoey.dogs addObject:dahuang];
    
    NSLog(@"%@", zoey.dogs);
    
    Person *me = [[Person alloc] initWithValue:@[@"Zoey", @[@[@"大黄"], @[@"刘狗"]]]];
    NSLog(@"%@", me);
    
    [realm beginWriteTransaction];
    [realm addObject:dahuang];
    [realm addObject:zoey];
    [realm commitWriteTransaction];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
@end
