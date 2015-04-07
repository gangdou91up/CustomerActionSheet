//
//  GoodsViewController.m
//  CustomerActionSheet
//
//  Created by leigang on 15/4/7.
//  Copyright (c) 2015年 gang. All rights reserved.
//

#import "GoodsViewController.h"

@interface GoodsViewController ()

@end

@implementation GoodsViewController
@synthesize myPopView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    CGFloat screen_width = [UIScreen mainScreen].bounds.size.width;
    //这个myPopView可以换成各种你自己想要定义的View,有很大的灵活性
    myPopView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, screen_width, 200)];
    _sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    _sureBtn.frame = CGRectMake(20, myPopView.frame.size.height - 50, myPopView.frame.size.width - 40, 40);
    [_sureBtn setTitle:@"确定" forState:UIControlStateNormal];
    [_sureBtn setBackgroundColor:[UIColor colorWithRed:254.0/255 green:196.0/255 blue:45.0/255 alpha:1.0]];
    [myPopView addSubview:_sureBtn];
    [_sureBtn addTarget:self action:@selector(slideOut) forControlEvents:UIControlEventTouchUpInside];
    
    //让视图消失屏幕
    CGRect frame = myPopView.frame;
    frame.origin = CGPointMake(0.0, self.view.bounds.size.height);
    myPopView.frame = frame;
    myPopView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:myPopView];
    
    //让视图从底部弹出来
    [UIView beginAnimations:@"presentWithSuperview" context:nil];
    frame.origin = CGPointMake(0, self.view.bounds.size.height - myPopView.frame.size.height);
    myPopView.frame = frame;
    [UIView commitAnimations];
    
    
}

//点击确定后我们会让视图移动到屏幕外
-(void)slideOut{
    [UIView beginAnimations:@"removeFromSuperviewWithAnimation" context:nil];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDidStopSelector:@selector(animationDidStop:finished:context:)];
    CGRect frame = self.view.frame;
    frame.origin = CGPointMake(0.0f, self.view.bounds.size.height);
    self.view.frame = frame;
    [UIView commitAnimations];
}

- (void)animationDidStop:(NSString *)animationID finished:(NSNumber *)finished context:(void *)context {
    if ([animationID isEqualToString:@"removeFromSuperviewWithAnimation"]) {
        [self.view removeFromSuperview];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
