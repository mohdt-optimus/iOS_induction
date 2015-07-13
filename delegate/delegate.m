//
//  delegate.m
//  delegation_designpattern
//
//  Created by optimusmac-12 on 13/07/15.
//  Copyright (c) 2015 mdtaha.optimus. All rights reserved.
//

#import "delegate.h"

#import <Foundation/Foundation.h>

@implementation parent
{
}

-(void) do
{
    child *chd=[[child alloc] init];
    [chd do];
}
@end


@implementation child
{}
-(void) do
{
    NSLog(@"Printing from child class");
}

@end

