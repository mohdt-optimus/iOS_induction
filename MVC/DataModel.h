//
//  DataModel.h
//  MVC
//
//  Created by Asif Noor on 9/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class EmployeeInfo;
@interface DataModel : NSObject
+(DataModel*) manager;
- (EmployeeInfo*) getEmployeeInfo;
@end