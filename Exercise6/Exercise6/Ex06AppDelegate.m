//
//  Ex06AppDelegate.m
//  Exercise6
//
//  Created by TPG on 3/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Ex06AppDelegate.h"
#import "MyUIViewController.h"
#import "PickerViewObject.h"
@implementation Ex06AppDelegate

@synthesize window = _window;

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];

    
    MyUIViewController *vc = [[MyUIViewController alloc] initWithNibName:@"MyUIViewController" bundle:nil];
    self.window.rootViewController =vc;
    [vc release];
    [self.window makeKeyAndVisible];
    

 
     
     
     PickerViewObject *pkvo = [[PickerViewObject alloc] init];
  
    pkvo.myImageView = vc.myImageView;
    pkvo.myLabel = vc.myLabel;
    
    [pkvo.myLabel setText:@"Porter"];
    [pkvo.myImageView setImage:[UIImage imageNamed:@"BeerIcon001.png"]];

     //pkvo.myPickerView = self.myPickerView;
     
     vc.myPickerView.dataSource = pkvo;//.myPickerView.dataSource;
     vc.myPickerView.delegate = pkvo;//.myPickerView.delegate;
     
     
     
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

@end
