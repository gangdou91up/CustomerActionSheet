//
//  ViewController.h
//  CustomerActionSheet
//
//  Created by leigang on 15/4/7.
//  Copyright (c) 2015年 gang. All rights reserved.
//

#import <UIKit/UIKit.h>
@class GoodsViewController;
@interface ViewController : UIViewController

@property(nonatomic,strong)GoodsViewController *goodsVC;

- (IBAction)popView:(id)sender;

@end

