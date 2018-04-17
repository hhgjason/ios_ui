//
//  AppDelegate.h
//  ios_ui
//
//  Created by huagui.hu on 2018/4/17.
//  Copyright © 2018年 huagui.hu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

