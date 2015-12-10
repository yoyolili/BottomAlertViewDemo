//
//  ViewController.m
//  弹出菜单Demo
//
//  Created by 阿喵 on 15/12/8.
//  Copyright © 2015年 河南青云. All rights reserved.
//

#import "ViewController.h"
#import "TheAlertView.h"

@interface ViewController ()<UIGestureRecognizerDelegate>

@property (nonatomic, strong)UIView *theView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)btnClick:(UIButton *)sender {
    
    TheAlertView *alert = [TheAlertView alertView];
    [self.view addSubview:alert];
    
    [self.view bringSubviewToFront:alert];
    
    UIButton *closeBtn = [[UIButton alloc]initWithFrame:CGRectMake(20, 417, 40, 40)];
    [closeBtn setBackgroundImage:[UIImage imageNamed:@"button_picview_close_pressed"] forState:UIControlStateNormal];
    [closeBtn addTarget:self action:@selector(closeBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [alert addSubview:closeBtn];
    
    _theView = alert;

}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [_theView removeFromSuperview];
}

- (void)closeBtnClick
{
    [_theView removeFromSuperview];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
