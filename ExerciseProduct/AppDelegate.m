//
//  AppDelegate.m
//  ExerciseProduct
//
//  Created by user on 2017/3/23.
//  Copyright © 2017年 Annie. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

#import "CJFirstViewController.h"
#import "CJSecondViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    
    ViewController *vc = [[ViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    nav.title = @"0";
    nav.navigationBarHidden = NO;
    nav.navigationBar.translucent = NO;
    
    CJFirstViewController *firstVC = [[CJFirstViewController alloc] init];
    firstVC.title = @"1";
    firstVC.view.backgroundColor = [UIColor blackColor];
    UINavigationController *nav1 = [[UINavigationController alloc] initWithRootViewController:firstVC];
    nav1.tabBarItem.title = @"navFirst";
    nav1.navigationBar.translucent = NO;
    nav1.navigationBarHidden = NO;
    
    CJSecondViewController *secondVC = [[CJSecondViewController alloc] init];
    secondVC.tabBarItem.title = @"second";
    secondVC.view.backgroundColor = [UIColor grayColor];
    
    UITabBarController *tabbar = [[UITabBarController alloc] init];
    tabbar.viewControllers = @[nav,nav1,secondVC];
    self.window.rootViewController = tabbar;
    [self.window makeKeyAndVisible];
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
