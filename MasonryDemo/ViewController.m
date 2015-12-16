//
//  ViewController.m
//  MasonryDemo
//
//  Created by Eli on 15/12/6.
//  Copyright © 2015年 Ely. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"
@interface ViewController ()
@property (nonatomic,weak) UIView * blueView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView * blueView= [UIView new];
    blueView.backgroundColor  = [UIColor blueColor];
    [self.view addSubview:blueView];
    
    self.blueView =blueView;
//    blueView.translatesAutoresizingMaskIntoConstraints = NO;
    [blueView mas_makeConstraints:^(MASConstraintMaker *make) {
        //尺寸100*100 ，父视图居中
        make.width.equalTo(@100);
//        make.height.mas_equalTo(100);
//        make.center.equalTo (self.view);
        make.height.equalTo(blueView.mas_width).multipliedBy(2).offset(100);
        make.center.equalTo (self.view).centerOffset(CGPointMake(-100, 100));
//        make.centerX.equalTo(self.view.mas_centerX);
//        make.centerY.equalTo(self.view.mas_centerY);
//        make.edges.equalTo(self.view).insets(UIEdgeInsetsMake(50, 50, 50, 50));
//        make.size.equalTo(self.view).sizeOffset(CGSizeMake(-100, -100));
//        make.center.equalTo(self.view).priority(MASLayoutPriorityFittingSizeLevel);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
