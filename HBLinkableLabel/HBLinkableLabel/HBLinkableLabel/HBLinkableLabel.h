//
//  HBLinkableLabel.h
//  HBLinkableLabel
//
//  Created by wangfeng on 16/1/12.
//  Copyright (c) 2016年 HustBroventure. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^LinkTapHandler)(NSRange range);

@interface HBLinkableLabel : UILabel   <NSLayoutManagerDelegate>

/**
 *  是否开启
 */
@property (nonatomic, assign ) BOOL isLinkEnabled;

/**
 * @discussion The default value is (0.95, 0.95, 0.95, 1.0).
 */
@property (nullable, nonatomic, copy)  UIColor *selectedLinkBackgroundColor;
/**
 *  range的数组
 */
@property (nullable,nonatomic, copy) NSArray* linkRanges;

/**
 *  点击回调
 */
@property (nullable, nonatomic, copy) LinkTapHandler linkTapHandler;


@end
