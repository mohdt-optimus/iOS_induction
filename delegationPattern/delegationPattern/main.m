

#import <Cocoa/Cocoa.h>

@interface RealPrinter:NSObject
{
}
-(void) print;
@end
@interface Printer:NSObject
{
}
-(void) print;
@end

@implementation RealPrinter
{
}
-(void)print
{
    NSLog(@" Print something here");
}
@end
@implementation Printer
{
    RealPrinter *r;
}
-(void)print
{
    r=[[RealPrinter alloc]init];
    [r print];
}
@end

int main()
{
    Printer *p=[[Printer alloc]init];
    [p print];
    return 0;
}