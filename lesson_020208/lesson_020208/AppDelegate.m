//
//  AppDelegate.m
//  lesson_020208
//
//  Created by Grigory Stolyarov on 24.04.2021.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    NSLog(@"Application didFinishLaunchingWithOptions");
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    NSLog(@"Application applicationWillResignActive");
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    NSLog(@"Application applicationDidBecomeActive");
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    NSLog(@"Application applicationDidEnterBackground");
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    NSLog(@"Application applicationWillEnterForeground");
}

- (void)applicationWillTerminate:(UIApplication *)application {
    NSLog(@"Application applicationWillTerminate");
}

@end
