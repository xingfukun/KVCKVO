//
//  AppDelegate.m
//  KVCKVO
//
//  Created by joymain on 15/9/15.
//  Copyright (c) 2015年 邢富琨. All rights reserved.
//

#import "AppDelegate.h"
#import "KVCObject.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    
    KVCObject *obj = [[KVCObject alloc] init];
    
    //通过KVC模式对对象的成员变量赋值
    [obj setValue:@"Hello World" forKey:@"param1"];
    //通过KVC模式获取对象成员变量的值
    NSLog(@"%@",[obj valueForKey:@"param1"]);
    
    [obj setValuesForKeysWithDictionary:@{@"param1":@"Hello World2",@"param2":@"Hello World"}];
    NSLog(@"%@",[obj valueForKey:@"param1"]);
    
    //KVO模式监听testLabel中的text属性
    [obj addObserver:self forKeyPath:@"testLabel.text" options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld context:nil];
    
    [obj setValue:@"Hello" forKeyPath:@"testLabel.text"];
    NSLog(@"%@",[obj valueForKeyPath:@"testLabel.text"]);
    
    return YES;
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    NSLog(@"%@",change);
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
