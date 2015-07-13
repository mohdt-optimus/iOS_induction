//
//  main.m
//  singleton_designpattern
//
//  Created by optimusmac-12 on 13/07/15.
//  Copyright (c) 2015 mdtaha.optimus. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "single.h"

int main()
{
    
    single *s1=[single shared];
    [single shared];
    if(s1==[single shared])
    {
        NSLog(@"No More Object Created");
    }
    [single shared];
    if(s1==[single shared])
    {
        NSLog(@"No more Object Created 2");
    }
   
}