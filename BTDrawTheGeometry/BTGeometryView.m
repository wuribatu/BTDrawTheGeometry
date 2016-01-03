//
//  BTGeometry.m
//  BTDrawTheGeometry
//
//  Created by 乌日巴图 on 16/1/3.
//  Copyright © 2016年 wuribatu. All rights reserved.
//

#import "BTGeometryView.h"

@implementation BTGeometryView

- (void)drawRect:(CGRect)rect {
    CGContextRef ctx = UIGraphicsGetCurrentContext(); //获取绘图上下文
    CGContextSetLineWidth(ctx, 16);  //设置线宽
    CGContextSetRGBStrokeColor(ctx, 0, 1, 0, 1);
    
    /*****************下面绘制3条线段测试端点形状*********************/

    //定义4个点，绘制线段
    const CGPoint points1[] = {CGPointMake(10 , 40),
                               CGPointMake(100, 40),
                               CGPointMake(100, 40),
                               CGPointMake(20 , 70)};
    CGContextStrokeLineSegments(ctx, points1, 3);  //绘制线段（默认不绘制端点）
    
    CGContextSetLineCap(ctx, kCGLineCapSquare);  //设置端点的形状：方形端点
    const CGPoint points2[] = {CGPointMake(130, 40),
                               CGPointMake(230, 40),
                               CGPointMake(230, 40),
                               CGPointMake(140, 70)};
    CGContextStrokeLineSegments(ctx, points2, 4);
    
    CGContextSetLineCap(ctx, kCGLineCapRound);    //设置端点的形状：圆形端点
    const CGPoint points3[] = {CGPointMake(250, 40),
                               CGPointMake(350, 40),
                               CGPointMake(350, 40),
                               CGPointMake(260, 70)};
    CGContextStrokeLineSegments(ctx, points3, 4);
    
    /*****************下面绘制3条线段测试点线模式*********************/
    
    CGContextSetLineCap(ctx, kCGLineCapButt);
    CGContextSetLineWidth(ctx, 10);
    CGFloat patterns1[] = {6, 10};
    CGContextSetLineDash(ctx, 0, patterns1, 1);  //设置点线模式：实线宽6，间距宽10
    const CGPoint points4[] = {CGPointMake(40, 85),
                               CGPointMake(280, 85)};
    CGContextStrokeLineSegments(ctx, points4, 2);
    
    CGContextSetLineDash(ctx, 3, patterns1, 1); //设置点线模式：实线宽6，间距宽10，但第一条实线宽3
    const CGPoint points5[] = {CGPointMake(40, 105),
                               CGPointMake(280, 105)};
    CGContextStrokeLineSegments(ctx, points5, 2);
    
    CGFloat patterns2[] = {5, 1, 4, 1, 3, 1,
                           2, 1, 1, 1, 1, 2,
                           1, 3, 1, 4, 1, 5};
    CGContextSetLineDash(ctx, 0, patterns2, 18);
    const CGPoint points6[] = {CGPointMake(40, 125),
                               CGPointMake(280, 125)};
    CGContextStrokeLineSegments(ctx, points6, 2);
    
    /*****************下面填充矩形********************/
    
    CGContextSetStrokeColorWithColor(ctx, [UIColor blueColor].CGColor);
    CGContextSetLineWidth(ctx, 14);
    CGContextSetFillColorWithColor(ctx, [UIColor redColor].CGColor);
    CGContextFillRect(ctx, CGRectMake(30, 140, 120, 60)); //填充一个矩形
    
    CGContextSetFillColorWithColor(ctx, [UIColor yellowColor].CGColor);
    CGContextFillRect(ctx, CGRectMake(80, 180, 120, 60));
    
    /*****************下面绘制矩形边框********************/
    
    CGContextSetLineDash(ctx, 0, 0, 0); //取消设置点线模式
    CGContextStrokeRect(ctx, CGRectMake(30, 250, 120, 60));
    
    CGContextSetStrokeColorWithColor(ctx, [UIColor purpleColor].CGColor);
    CGContextSetLineJoin(ctx, kCGLineJoinRound); //设置线条连接点的形状
    CGContextStrokeRect(ctx, CGRectMake(80, 280, 120, 60));
    
    CGContextSetRGBStrokeColor(ctx, 1.0, 0, 1.0, 1.0); //设置线条颜色
    CGContextSetLineJoin(ctx, kCGLineJoinBevel);
    CGContextStrokeRect(ctx, CGRectMake(130, 310, 120, 60));

    /*****************下面绘制和填充一个椭圆********************/
    CGContextStrokeEllipseInRect(ctx, CGRectMake(30, 400, 120, 60));//绘制一个椭圆形
    CGContextSetRGBFillColor(ctx, 1, 0, 1, 1);
    CGContextFillEllipseInRect(ctx, CGRectMake(180, 400, 120, 60)); //填充一个椭圆形
}

@end
