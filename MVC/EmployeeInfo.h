//
//  EmployeeInfo.h
//  MVC
//
//  Created by Asif Noor on 9/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface EmployeeInfo : NSObject{
    
    NSString                    *name;
    NSString                    *age;
    NSString                    *gender;
    NSString                    *DOB;
    NSString                    *phone;
    NSString                    *photoPath;
    NSString                    *address;
    NSString                    *personalLife;
    NSArray                     *careerArray;
}
@property (nonatomic,retain) NSString                    *gender;
@property (nonatomic,retain) NSString                    *DOB; 
@property (nonatomic,retain) NSString                    *photoPath;
@property (nonatomic,retain) NSString                    *phone;    
@property (nonatomic,retain) NSString                    *name;
@property (nonatomic,retain) NSString                    *age;
@property (nonatomic,retain) NSString                    *address;
@property (nonatomic,retain) NSString                    *personalLife;
@property (nonatomic,retain) NSArray                     *careerArray;
@end
