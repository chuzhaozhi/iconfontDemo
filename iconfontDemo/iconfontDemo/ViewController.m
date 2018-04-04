//
//  ViewController.m
//  iconfontDemo
//
//  Created by chuzhaozhi on 2018/4/4.
//  Copyright © 2018年 JackerooChu. All rights reserved.
//

#import "ViewController.h"
#import "TBCityIconFont.h"
#import "UIImage+TBCityIconFont.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor  whiteColor];
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 100, 30, 30)];
    [self.view addSubview:imageView];
    //图标编码是&#xe600，需要转成\U0000e600
    imageView.image = [UIImage iconWithInfo:TBCityIconInfoMake(@"\U0000e600", 30, [UIColor redColor])];
    
    
    UIImageView *imageView1 = [[UIImageView alloc] initWithFrame:CGRectMake(150, 100, 30, 30)];
    [self.view addSubview:imageView1];
   
    imageView1.image = [UIImage iconWithInfo:TBCityIconInfoMake(@"\U0000e61b", 30, [UIColor redColor])];
    
    //    button
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(100, 150, 40, 40);
    [self.view addSubview:button];
    [button setImage:[UIImage iconWithInfo:TBCityIconInfoMake(@"\U0000e614", 40, [UIColor redColor])] forState:UIControlStateNormal];
    
    //    label,label可以将文字与图标结合一起，直接用label的text属性将图标显示出来
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(50, 200, 280, 40)];
    [self.view addSubview:label];
    label.font = [UIFont fontWithName:@"iconfont" size:15];//设置label的字体
    label.text = @"在lable上显示  \U0000e658";
    
    

    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
