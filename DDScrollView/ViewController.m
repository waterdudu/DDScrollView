//
//  ViewController.m
//  DDScrollView
//
//  Created by dudu on 13-7-3.
//  Copyright (c) 2013年 dudu. All rights reserved.
//

#import "ViewController.h"

#import "UILabel+autoresize.h"
#import "data.h"
#define TEXT_COLOR [UIColor colorWithRed:133/256.0 green:192/256.0 blue:201/256.0 alpha:1];
#define BG_COLOR [UIColor colorWithRed:240/256.0 green:240/256.0 blue:242/256.0 alpha:1]


@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    CGRect frame = [UIScreen mainScreen].bounds;
    CGRect framet = CGRectZero;
    self.scrollView = [[DDScrollView alloc] initWithFrame:frame];
    self.scrollView.backgroundColor = BG_COLOR;
    self.scrollView.delegate = self;
    
    
    //-------------------------------------------------------------------
    //             the first label from file
    //-------------------------------------------------------------------
    CGRect label_frame = (CGRect){10, 10, frame.size.width - 10*2, 0};
    NSString* path = [[NSBundle mainBundle] pathForResource:@"Romeo&Juliet"
                                                     ofType:@"txt"];
    NSString* content = [NSString stringWithContentsOfFile:path
                                                  encoding:NSUTF8StringEncoding
                                                     error:NULL];
    
    UILabel *label = [UILabel makeAutoResizeLabel:content frame:label_frame tag:88];
    [self.scrollView addSubview:label];
    
    //-------------------------------------------------------------------
    //             the second label from string
    //-------------------------------------------------------------------
    framet = label.frame;
    label_frame = (CGRect){10, 10 + framet.origin.y+framet.size.height, frame.size.width - 10*2, 0};
    label = [UILabel makeAutoResizeLabel:t frame:label_frame tag:88];
    
    [self.scrollView addSubview:label];
    
    [self.view addSubview:self.scrollView];
    
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    CGPoint contentOffset = self.scrollView.contentOffset;
    CGSize contentSize    = self.scrollView.contentSize;
    CGRect frame          = self.scrollView.frame;
    UIEdgeInsets inset    = self.scrollView.contentInset;
    
    NSLog(@"> %f %f %f %f %f", contentOffset.x, contentOffset.y, contentSize.width, contentSize.height,inset.bottom);
    if (contentOffset.y + frame.size.height -  inset.bottom > contentSize.height) {
        [self addImageView:(CGRect){0,contentSize.height,frame.size.width,0}];
    }
    
    
}
- (void)addImageView:(CGRect)frame
{
    static bool b = false;
    if (!b) {
        b = true;
        
        CGRect f = frame;
        NSLog(@">>>    %f %f %f %f", f.origin.x, f.origin.y,f.size.width,f.size.height);

        UIImage *img = [UIImage imageNamed:@"1.jpg"];
        UIImageView *imgView = [[UIImageView alloc] initWithImage:img];
        
        f.size = (CGSize){f.size.width - 10, img.size.height};
        f.origin.x += 5;
        
        
        // make a scroll view
        UIScrollView *sv = [[UIScrollView alloc] initWithFrame:CGRectZero];
        sv.contentSize = img.size;

        [sv setFrame:f];
        [sv addSubview:imgView];
        
        
        [self.scrollView addSubview:sv];

//        [self.scrollView addSubview:imgView];
    }
}


@end
