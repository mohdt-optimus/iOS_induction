//
//  EmployeeViewController.h
//  MVC
//
//  Created by Asif Noor on 9/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class EmployeeView;
@class DataModel;
@class EmployeeInfo;
@interface EmployeeViewController : UIViewController <UITableViewDelegate,UITableViewDataSource> {
    
    EmployeeView *employeeView;
    EmployeeInfo *employeeInfo;
    NSArray *dramas;
}
@end
