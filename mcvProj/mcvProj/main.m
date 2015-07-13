#import <Cocoa/Cocoa.h>

        @interface Box_Model:NSObject
        {
        }
        //@property(nonatomic, readwrite) int height; // Property
        -(int)volume: (int)len bre:(int)b1 heig:(int)hei;
        @end

        @interface Box_View_Control : NSObject
        {
        }
        -(void)input_value;
        @end

    @implementation Box_Model
    //@synthesize height;
    -(int)volume:(int)len bre:(int)b1 heig:(int)hei
    {
    return (len*b1*hei);
    }
    @end

    @implementation Box_View_Control
    -(void)input_value
    {
        int l=1;
        int b=1;
        int h=1;
        int vol=1;
        
        NSLog(@"Enter the value of Height=");
        scanf("%d", &h);
    
        NSLog(@"Enter the Value of Breadth=");
        scanf("%d", &b);
        
        NSLog(@"Enter the Value of Breadth=");
        scanf("%d", &l);
    
        Box_Model *box1 = [[Box_Model alloc]init];
        vol=[box1 volume:l bre:b heig:h];
        
        NSLog(@"Result =%d",vol);
    }
    @end

int main()
{
    Box_View_Control *bo1 = [[Box_View_Control alloc]init];
    [bo1 input_value];
    return 0;
}