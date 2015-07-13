//
//  NSObject+first.h
//  factoryDesign
//
//  Created by optimusmac-12 on 13/07/15.
//  Copyright (c) 2015 ankitkrg.optimus. All rights reserved.
//


#import <Foundation/Foundation.h>
@interface NSObject (first)

@end
@protocol CMConsoleOutput <NSObject>

- (void) outputText: (NSString *) content;

@end


//Class one
#import "CMPrintLog.h"

@implementation CMPrintLog

- (void) outputText:(NSString *)content {
    
    fprintf(stdout, "%s\n", [content UTF8String]);
}

@end


//Class two
#import "CMLogOutput.h"

@implementation CMLogOutput

- (void) outputText:(NSString *)content {
    NSLog(content);
}

@end