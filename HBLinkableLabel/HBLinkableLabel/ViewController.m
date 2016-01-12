//
//  ViewController.m
//  HBLinkableLabel
//
//  Created by wangfeng on 16/1/12.
//  Copyright (c) 2016年 HustBroventure. All rights reserved.
//

#import "ViewController.h"
#import "HBLinkableLabel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    HBLinkableLabel* label = [[HBLinkableLabel alloc]initWithFrame:CGRectMake(20, 60, 300, 300)];
    label.backgroundColor = [UIColor grayColor];
    label.numberOfLines = 0;
    label.selectedLinkBackgroundColor = [UIColor redColor];
    label.font = [UIFont systemFontOfSize:22];
    label.textColor = [UIColor whiteColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.text = @"KILabel 是 iOS 7 简单易用的 UILabel 替代品，提供链接自动检测，类似 URLs，twitter 类型的用户名和 hashtags。";
    label.linkRanges = @[[NSValue valueWithRange:NSMakeRange(3, 4)],[NSValue valueWithRange:NSMakeRange(12, 3)]];
    label.linkTapHandler = ^(NSRange range){
        NSLog(@"%@",NSStringFromRange(range));
    };
    [self.view addSubview:label];

}



@end
