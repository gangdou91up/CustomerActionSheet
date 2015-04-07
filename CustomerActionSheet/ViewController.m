//
//  ViewController.m
//  CustomerActionSheet
//
//  Created by leigang on 15/4/7.
//  Copyright (c) 2015年 gang. All rights reserved.
//

#import "ViewController.h"
#import "GoodsViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)popView:(id)sender {
    _goodsVC = [[GoodsViewController alloc] init];
    //更改GoodsViewController的背景色，以便我们观察区别
    UIColor *myColor = [UIColor colorWithRed:127.0/255 green:127.0/255 blue:127.0/255 alpha:0.5f];
    _goodsVC.view.backgroundColor = myColor;
    [self.view addSubview:_goodsVC.view];
    [_goodsVC viewWillAppear:NO];
}
@end
