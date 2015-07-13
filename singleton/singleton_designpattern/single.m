//
//  single.m
//  singleton_designpattern
//
//  Created by optimusmac-12 on 13/07/15.
//  Copyright (c) 2015 mdtaha.optimus. All rights reserved.
//

#import "single.h"

@implementation single

+(id) shared
{
    static single *s=nil;
    static dispatch_once_t token;
    dispatch_once(&token,^{s=[[self alloc] init];
    });
    return s;
    
    
}
- (id)init {
    if (self == [super init])
    {        
        NSLog(@"This will Print only Once");
    }
    return self;
}


@end