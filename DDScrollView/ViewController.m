//
//  ViewController.m
//  DDScrollView
//
//  Created by dudu on 13-7-3.
//  Copyright (c) 2013年 dudu. All rights reserved.
//

#import "ViewController.h"

#import "UILabel+autoresize.h"

NSString *t = @"这是导演罗莎莎从申奥短片开始与张艺谋合作八年后，她为《金陵十三钗》拍下的全程纪录，揭秘这部巨资大片背后的故事。 《张艺谋和他的金陵十三钗》总共五集，分别是《十三钗的诞生》、《遇见贝尔》、《新演员乐与路》、《艰难的战争》、《一个镜头的执着》，详细纪录了《十三 钗》不为人知的幕后故事，包括巨星克里斯蒂安贝尔在生活中显露的活泼搞笑的一面；好莱坞威廉姆斯特效团队如何在制作战争戏的过程中精确到一颗子弹，以及人 身体上最细微的炸点；“十三钗”及教会学生是如何在万人海选中脱颖而出；还有被选中的“十三钗”经历的“魔鬼训练”，从完全业余的状态到在镜头前风情万 种……©豆瓣\n"
"这是导演罗莎莎从申奥短片开始与张艺谋合作八年后，她为《金陵十三钗》拍下的全程纪录，揭秘这部巨资大片背后的故事。 《张艺谋和他的金陵十三钗》总共五集，分别是《十三钗的诞生》、《遇见贝尔》、《新演员乐与路》、《艰难的战争》、《一个镜头的执着》，详细纪录了《十三 钗》不为人知的幕后故事，包括巨星克里斯蒂安贝尔在生活中显露的活泼搞笑的一面；好莱坞威廉姆斯特效团队如何在制作战争戏的过程中精确到一颗子弹，以及人 身体上最细微的炸点；“十三钗”及教会学生是如何在万人海选中脱颖而出；还有被选中的“十三钗”经历的“魔鬼训练”，从完全业余的状态到在镜头前风情万 种……©豆瓣\n";

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    CGRect frame = [UIScreen mainScreen].applicationFrame;
    
    self.scrollView = [[DDScrollView alloc] initWithFrame:frame];
    
    CGRect label_frame = (CGRect){10, 10, 200, 0};
    UILabel *l = [UILabel makeAutoResizeLabel:t frame:label_frame tag:88];
    
    // the second label
    label_frame = (CGRect){10, 900, 300, 0};
    UILabel *l2 = [UILabel makeAutoResizeLabel:t frame:label_frame tag:88];
 
//    label_frame = (CGRect){800, 1600, 300, 0};
//    UILabel *l3 = [UILabel makeAutoResizeLabel:t frame:label_frame tag:88];
    
    
    [self.scrollView addSubview:l];
    [self.scrollView addSubview:l2];
//    [self.scrollView addSubview:l3];
    
    
    
    [self.view addSubview:self.scrollView];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
