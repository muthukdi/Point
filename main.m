// Filename: main.m
// Author: Dilip Muthukrishnan
// Langugage: Objective-C
// Description: This is a program that models a Cartesian coordinate (x,y)
// where x and y are integers.

#import <Foundation/Foundation.h>

// The @interface section
@interface XYPoint: NSObject
-(void) setX: (int) xValue;
-(void) setY: (int) yValue;
-(int) getX;
-(int) getY;
@end

// The @implementation section
@implementation XYPoint
{
    int x;
    int y;
}
-(void) setX: (int) xValue
{
    x = xValue;
}
-(void) setY: (int) yValue
{
    y = yValue;
}
-(int) getX
{
    return x;
}
-(int) getY
{
    return y;
}
@end

// The program section
int main (int argc, char * argv[])
{
    @autoreleasepool 
    {
        XYPoint *point1 = [[XYPoint alloc] init];
        XYPoint *point2 = [[XYPoint alloc] init];
        [point1 setX: 3];
        [point1 setY: 4];
        [point2 setX: 2];
        [point2 setY: 5];
        NSLog (@"The first point is (%i,%i).", [point1 getX], [point1 getY]);
        NSLog (@"The second point is (%i,%i).", [point1 getX], [point2 getY]);
    }
    return 0;
}