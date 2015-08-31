//
//  TabBarController.h
//  Big Theta
//
//  Created by Youdong Zhang and Nicholas Ward on 4/23/15.
//  Copyright (c) 2015 Pineapple Bears. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TabBarController : UITabBarController<UITabBarControllerDelegate>

-(void) growthWithSelection:(int)which;

@end
