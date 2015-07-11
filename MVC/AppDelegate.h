//
//  AppDelegate.h
//  MVC
//
//  Created by Asif Noor on 9/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@class EmployeeViewController;
@interface AppDelegate : UIResponder <UIApplicationDelegate>{
    
    EmployeeViewController *employeeViewController;
}

@property (strong, nonatomic) UIWindow *window;



@end
