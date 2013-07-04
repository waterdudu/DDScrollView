//
//  UILabel+autoresize.h
//  DDScrollView
//
//  Created by dudu on 13-7-3.
//  Copyright (c) 2013年 dudu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (autoresize)


+ (UILabel *)makeAutoResizeLabel:(NSString *)content frame:(CGRect)frame tag:(NSInteger)tag;


@end
