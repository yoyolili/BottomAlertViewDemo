//
//  TheAlertView.m
//  弹出菜单Demo
//
//  Created by 阿喵 on 15/12/9.
//  Copyright © 2015年 河南青云. All rights reserved.
//

#define BlackColor [UIColor blackColor]
#import "TheAlertView.h"

@interface TheAlertView ()

//@property (nonatomic, strong)  *theView;

@end

@implementation TheAlertView

+ (instancetype)alertView
{
    TheAlertView *view = [[TheAlertView alloc]initWithFrame:CGRectMake(0, 0, 375, 667)];
    view.backgroundColor = [UIColor lightTextColor];
    
    TheAlertView *bottomV = [TheAlertView bottomView];
    bottomV.frame = CGRectMake(0, 467, 375, 200);
    bottomV.backgroundColor = [UIColor lightGrayColor];
    [view addSubview:bottomV];
    
 //   theView = view;
    
    return view;
}

+ (instancetype)bottomView
{
    return [[NSBundle mainBundle] loadNibNamed:@"TheAlertView" owner:nil options:nil][0];
}


- (IBAction)btnClick:(UIButton *)sender {
    
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Message" message:@"This a button." delegate:nil cancelButtonTitle:@"cancel" otherButtonTitles:@"OK", nil];
    [alert show];
}

@end
