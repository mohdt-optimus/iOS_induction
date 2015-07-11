//
//  DataModel.m
//  MVC
//
//  Created by Asif Noor on 9/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "DataModel.h"
#import "EmployeeInfo.h"
static DataModel *manager = nil;
static NSMutableDictionary *dictionary;
@implementation DataModel

+(DataModel*) manager {
	@synchronized (self){
		if (manager == nil) {
            manager = [[self alloc] init];
            
            
            
			dictionary = [[NSMutableDictionary alloc] init];
            
            [dictionary setValue:@"Syra Yousaf" forKey:@"name"];
            [dictionary setValue:@"Female" forKey:@"gender"];
            [dictionary setValue:@"April 20, 1988" forKey:@"DOB"];
            [dictionary setValue:@"24 Years" forKey:@"age"];
            [dictionary setValue:@"Karachi,Pakistan" forKey:@"address"];
            [dictionary setValue:@"employee.jpg" forKey:@"photoPath"];
            [dictionary setValue:@"(111)-234-134" forKey:@"phone"];            
            [dictionary setValue:@"Syra was born and brought up into a Muslim family in Karachi, Pakistan. Her mother is from Afghanistan and father from Pakistan. She is the sister of another Pakistani Actress Alishba Yousuf." forKey:@"personalLife"]; 
            NSArray *career = [[NSArray alloc] initWithObjects:@"Mera Naseeb, Drama",@"Bheja Fry, TV Show",@"Most Wanted, TV Show", nil];
            [dictionary setValue:career forKey:@"career"];
            [career release];
            
            
		}else {
            return manager;
        }
    }		
	return manager;
}

- (id) init {
	self = [super init];
	if(self != nil) {	
        
		
		
	}
	return self;
}
- (EmployeeInfo*) getEmployeeInfo
{
    NSLog(@"%@",dictionary);
    if (dictionary != nil) {
        
        EmployeeInfo *employeeInfo = [[[EmployeeInfo alloc] init]autorelease];
        employeeInfo.name = [dictionary valueForKey:@"name"];
        employeeInfo.age = [dictionary valueForKey:@"age"];
        employeeInfo.gender = [dictionary valueForKey:@"gender"];
        employeeInfo.DOB = [dictionary valueForKey:@"DOB"];
        employeeInfo.photoPath =  [dictionary valueForKey:@"photoPath"];
        employeeInfo.phone =  [dictionary valueForKey:@"phone"];
        employeeInfo.address =  [dictionary valueForKey:@"address"];
        employeeInfo.personalLife =  [dictionary valueForKey:@"personalLife"];
        employeeInfo.careerArray =  [dictionary valueForKey:@"career"];
        return employeeInfo;
    }
    
	
	return nil;
	
}




@end
