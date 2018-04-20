//
//  ViewController.m
//  ios_ui
//
//  Created by huagui.hu on 2018/4/17.
//  Copyright © 2018年 huagui.hu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextFieldDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self makeLabel];
    [self makeTextField];
    // Do any additional setup after loading the view, typically from a nib.
}
#pragma label的一些属性
-(void)makeLabel{
    UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(self.view.center.x-100, 100, 200, 40)];
    //设置label显示的文字
    lab.text = @"我是label文字dasdasadsadsadsrewrewrgegrgdsgsgsdfgdsfgererfgdsfgvsgfdsgrgersgdfsgvdfsgdsgrergrsfrs";
    //设置label文字颜色
    lab.textColor = [UIColor blackColor];
    //设置label背景颜色
    lab.backgroundColor = [UIColor grayColor];
    //设置文字位置
/*
    typedef NS_ENUM(NSInteger, NSTextAlignment) {
        NSTextAlignmentLeft      = 0,    // Visually left aligned 文字向左
#if TARGET_OS_IPHONE
        NSTextAlignmentCenter    = 1,    // Visually centered
        NSTextAlignmentRight     = 2,    // Visually right aligned
#else
        NSTextAlignmentRight     = 1,    // Visually right aligned
        NSTextAlignmentCenter    = 2,    // Visually centered
#endif
        NSTextAlignmentJustified = 3,    // Fully-justified. The last line in a paragraph is natural-aligned.
        NSTextAlignmentNatural   = 4,    // Indicates the default alignment for script
    }
    */
    lab.textAlignment = NSTextAlignmentCenter;
    //设置文字显示行数
    lab.numberOfLines = 2;
    //设置文字中断
    /*
     //按单词中断
     NSLineBreakByWordWrapping,
     //按字符中断
     NSLineBreakByCharWrapping,
     //按字符中断
     NSLineBreakByClipping,
     //最后一个行省略行首
     NSLineBreakByTruncatingHead,
     //最后一个行省略行尾
     NSLineBreakByTruncatingTail,
     ////最后一个行省略行中部
     NSLineBreakByTruncatingMiddle
     */
    lab.lineBreakMode = NSLineBreakByWordWrapping;
    [self.view addSubview:lab];
}
-(void)makeButton{
    
}
#pragma UITextField
-(void)makeTextField{
    UITextField *textField = [[UITextField alloc]initWithFrame:CGRectMake(self.view.center.x-100, 180, 200, 40)];
    
//    typedef NS_ENUM(NSInteger, UITextFieldViewMode) {
//        UITextFieldViewModeNever,
//        UITextFieldViewModeWhileEditing,
//        UITextFieldViewModeUnlessEditing,
//        UITextFieldViewModeAlways
//
//    typedef NS_ENUM(NSInteger, UITextBorderStyle) {
//        UITextBorderStyleNone,
//        UITextBorderStyleLine,
//        UITextBorderStyleBezel,
//        UITextBorderStyleRoundedRect
//    };
//};
    textField.borderStyle = UITextBorderStyleBezel;
    [self.view addSubview:textField];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
