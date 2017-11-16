//
//  ViewController.m
//  JHFont
//
//  Created by Jivan on 2017/11/16.
//  Copyright © 2017年 Jivan. All rights reserved.
//

#import "ViewController.h"
#import "Font.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 200, 100)];
    label.backgroundColor =[UIColor magentaColor];
    label.textColor = [UIColor yellowColor];
    label.font = [UIFont systemFontOfSize:15];
    label.text = @"哈哈哈";
    [self.view addSubview:label];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
