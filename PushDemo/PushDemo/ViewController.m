//
//  ViewController.m
//  PushDemo
//
//  Created by Zoey on 16/3/16.
//  Copyright © 2016年 Zoey. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILocalNotification *localNoti = [UILocalNotification new];
    localNoti.alertBody = @"本地通知调试";
    localNoti.fireDate = [NSDate dateWithTimeIntervalSinceNow:10];
    localNoti.applicationIconBadgeNumber = 1;
    localNoti.userInfo = @{@"name": @"本地推送"};
    localNoti.category = @"本地推送";
    localNoti.soundName = @"default";
    localNoti.repeatInterval = NSCalendarUnitMinute;
    [[UIApplication sharedApplication] scheduleLocalNotification:localNoti];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
