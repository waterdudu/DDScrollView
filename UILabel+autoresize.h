//
//  UILabel+autoresize.h
//  UIScrollViewTest2
//
//  Created by dudu on 13-7-2.
//  Copyright (c) 2013年 dudu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (autoresize)

+ (UILabel *)makeAutoResizeLabel:(NSString *)content frame:(CGRect)frame tag:(NSInteger)tag;

@end
