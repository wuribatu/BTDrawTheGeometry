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
    
}

@end
