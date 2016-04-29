//
//  ViewController.m
//  UIButtonDemo
//
//  Created by iOS on 13-9-23.
//  Copyright (c) 2013年 apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self layout];
}
-(void)layout
{
    //Button风格
    /*
     typedef NS_ENUM(NSInteger, UIButtonType) {
     UIButtonTypeCustom = 0,           // 无风格
     UIButtonTypeRoundedRect,          // 圆角矩形
     UIButtonTypeDetailDisclosure,     // 蓝色的披露按钮，可放在任何文字旁
     UIButtonTypeInfoLight,            // 微件(widget)使用的小圆圈信息按钮，可以放在任何文字旁
     UIButtonTypeInfoDark,             // 白色背景下使用的深色圆圈信息按钮 
     UIButtonTypeContactAdd,           // 蓝色加号(+)按钮，可以放在任何文字旁
     };
     */
    
    //Button状态
    /*
     
     typedef NS_OPTIONS(NSUInteger, UIControlState) {
     UIControlStateNormal       = 0,        //常态
     UIControlStateHighlighted  = 1 << 0,                  // used when UIControl isHighlighted is set     //高亮
     UIControlStateDisabled     = 1 << 1,   //禁用
     UIControlStateSelected     = 1 << 2,                  // flag usable by app (see below)                 //选中
     UIControlStateApplication  = 0x00FF0000,              // additional flags available for application use//当应用程序标志使用时  
     UIControlStateReserved     = 0xFF000000               // flags reserved for internal framework use//为内部框架预留的  
     };
     */
    
    //Button动作
    /*
     
     UIControlEventTouchDown        // 按下
     UIControlEventTouchDownRepeat  // 多次按下
     UIControlEventTouchDragInside  // 保持按下然后在按钮及其一定的外围拖动
     UIControlEventTouchDragOutside // 保持按下,在按钮外面拖动
     UIControlEventTouchDragEnter   // DragOutside进入DragInside触发
     UIControlEventTouchDragExit    // in到out触发
     UIControlEventTouchUpInside    // 在按钮及其一定外围内松开
     UIControlEventTouchUpOutside   // 按钮外面松开
     UIControlEventTouchCancel      // 点击取消
     */
    
    //常规创建btn1
    UIButton *btn1=[[UIButton alloc]initWithFrame:CGRectMake(10, 10, 300, 50)];
    //类方法创建btn2
    UIButton *btn2=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn2.frame=CGRectMake(10, 100, 300, 50);
    
    
    //设置btn1标题
    [btn1 setTitle:@"button1" forState:UIControlStateNormal];
    //设置btn1以图片形式显示
    [btn1 setImage:[UIImage imageNamed:@"btn1_bg.png"] forState:UIControlStateHighlighted];
    
    //设置btn2标题
    [btn2 setTitle:@"button2" forState:UIControlStateNormal];
    //设置btn2标题阴影
    [btn2 setTitleShadowColor:[UIColor redColor] forState:UIControlStateNormal];
    //设置btn2标题颜色(正常情况下)
    [btn2 setTitleColor:[UIColor yellowColor] forState:UIControlStateNormal];
    //设置btn2标题颜色(点中,高亮)
    [btn2 setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    //设置btn2的背景图片
    [btn2 setBackgroundImage:[UIImage imageNamed:@"btn1_bg.png"] forState:UIControlStateNormal];
    
    //当按钮高亮或者禁用，UIButton 类可以调整自己的外观，下面几个属性可以让你按照需要对按钮的外观进行微调
    //当btn2高亮时,禁用外观微调
    btn2.adjustsImageWhenHighlighted=NO;
    //当btn2禁用时,禁用外观微调
    btn2.adjustsImageWhenDisabled=NO;
    //按下btn2是,发光
    btn2.showsTouchWhenHighlighted=YES;
    //为btn2添加事件
    [btn2 addTarget:self action:@selector(printToSth) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    //添加按钮到当前视图
    [self.view addSubview:btn1];
    [self.view addSubview:btn2];
    
    //显示不同风格的Button
    UIButton *bt1=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    UIButton *bt2=[UIButton buttonWithType:UIButtonTypeDetailDisclosure];
    UIButton *bt3=[UIButton buttonWithType:UIButtonTypeInfoLight];
    UIButton *bt4=[UIButton buttonWithType:UIButtonTypeInfoDark];
    UIButton *bt5=[UIButton buttonWithType:UIButtonTypeContactAdd];
    [bt1 setTitle:@"UIButtonTypeRoundedRect" forState:UIControlStateNormal];
    [bt2 setTitle:@"UIButtonTypeDetailDisclosure" forState:UIControlStateNormal];
    [bt3 setTitle:@"UIButtonTypeInfoLight" forState:UIControlStateNormal];
    [bt4 setTitle:@"UIButtonTypeInfoDark" forState:UIControlStateNormal];
    [bt5 setTitle:@"UIButtonTypeContactAdd" forState:UIControlStateNormal];
    bt1.frame=CGRectMake(10, 200, 300, 40);
    bt2.frame=CGRectMake(10, 250, 300, 40);
    bt3.frame=CGRectMake(10, 300, 300, 40);
    bt4.frame=CGRectMake(10, 350, 300, 40);
    bt5.frame=CGRectMake(10, 400, 300, 40);
    [self.view addSubview:bt1];
    [self.view addSubview:bt2];
    [self.view addSubview:bt3];
    [self.view addSubview:bt4];
    [self.view addSubview:bt5];
}
-(void)printToSth
{
    NSLog(@"调用printToSth方法");
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
