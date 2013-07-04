DDScrollView
============

an autoresize scrollview

Usage
============

Just add DDScrollView.h and DDScrollView.m in your project.
NOTE:There is also a UIlabel category to create autoresized UILabel, you can test DDScrollView with this category.


1 new property of DDScrollView in your viewcontroller.h
```
@interface ViewController : UIViewController
@property (nonatomic, strong) DDScrollView *scrollView;
@end
```

2 init DDScrollView and add subviews
```
@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    CGRect frame = [UIScreen mainScreen].applicationFrame;
    
    self.scrollView = [[DDScrollView alloc] initWithFrame:frame];
    // add first label
    CGRect label_frame = (CGRect){10, 10, 200, 0};
    UILabel *l = [UILabel makeAutoResizeLabel:t frame:label_frame tag:88];
    
    // the second label
    label_frame = (CGRect){10, 900, 300, 0};
    UILabel *l2 = [UILabel makeAutoResizeLabel:t frame:label_frame tag:88];
 
    [self.scrollView addSubview:l];
    [self.scrollView addSubview:l2];

    [self.view addSubview:self.scrollView];
}
```

3 see more demo in the code
4 enjoy!

Screenshots
===================
![alt tag](https://raw.github.com/waterdudu/DDScrollView/raw/master/screenshots/DDScrolView1.png)
![alt tag](https://raw.github.com/waterdudu/DDScrollView/raw/master/screenshots/DDScrolView2.png)
![alt tag](https://raw.github.com/waterdudu/DDScrollView/raw/master/screenshots/DDScrolView3.png)


