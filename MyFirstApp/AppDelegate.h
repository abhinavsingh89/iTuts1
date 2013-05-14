//
//  AppDelegate.h
//  MyFirstApp
//
//  Created by Abhinav Singh on 2013-04-21.
//  Copyright (c) 2013 MontrealColg. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    int a;
}

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) UINavigationController *navC;

@end
