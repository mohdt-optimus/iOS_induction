//
//  main.m
//  factoryDesign
//
//  Created by Optimus-50 on 11/07/15.
//  Copyright (c) 2015 ankitkrg.optimus. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface Shape:NSObject
{
}
-(void) draw;
@end

@interface Rectangle:Shape
{
}
-(void) draw;
@end
@interface Square:Shape
{
}
-(void) draw;
@end
@interface Circle:Shape
{
}
-(void) draw;
@end

@interface ShapeFactory:NSObject
{
}
-(void) getShape:(int) s;
@end

@implementation Shape
{
}
@end

@implementation Rectangle
{
}
-(void) draw
{
    NSLog(@"This is a Rectangle");
}
@end

@implementation Square
{
}
-(void) draw
{
    NSLog(@"This is a Square");
}
@end

@implementation Circle
{
}
-(void) draw
{
    NSLog(@"This is a Circle");
}
@end

@implementation ShapeFactory
{
}
-(void) getShape: (int) s
{
    if(s==1)
    {
        [[[Rectangle alloc]init] draw];
        
    }
    else if(s==2)
    {
        [[[Square alloc]init] draw];
    }
   else if(s==3)
    {
        [[[Circle alloc]init] draw];
    }
    else
    {
        NSLog(@" Invalid");
    }
}
@end


int main()
{
    
    ShapeFactory *s=[[ShapeFactory alloc]init];
    
    [s getShape:1];
    
    [s getShape:2];
    
    [s getShape:3];
    
    return 0;

}
    
    


