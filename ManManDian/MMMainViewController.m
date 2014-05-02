//
//  MMMainViewController.m
//  ManManDian
//
//  Created by omgder on 14-4-21.
//  Copyright (c) 2014年 omgder. All rights reserved.
//

#import "MMMainViewController.h"
#import "scrollViewController.h"
#import "dianCajViewController.h"

@interface MMMainViewController ()

@end

@implementation MMMainViewController
@synthesize jingpin = _jingpin;
@synthesize goodsView =_goodsView;
@synthesize chazhao = _chazhao;
@synthesize diancan = _diancan;
@synthesize shoucan = _shoucan;
@synthesize gerenzhongxin = _gerenzhongxin;
@synthesize yaoyiyao = _yaoyiyao;
@synthesize chishenme = _chishenme;
@synthesize fujindecanting = _fujindecanting;
@synthesize pageControl = _pageControl;
/*
 @property(nonatomic,strong)UIPageViewController *jingpin;
 @property(nonatomic,strong)UIView *goodsView;
 @property(nonatomic,strong)UISearchBar *chazhao;
 @property(nonatomic,strong)UIButton *diancan;
 @property(nonatomic,strong)UIButton *shoucan;
 @property(nonatomic,strong)UIButton *gerenzhongxin;
 @property(nonatomic,strong)UIButton *yaoyiyao;
 @property(nonatomic,strong)UIButton *pinfan;
 @property(nonatomic,strong)UIButton *fujindecanting;
*/

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Do any additional setup after loading the view from its nib.
    //创建查找按钮；
    _chazhao = [[UISearchBar alloc]init];
    CGRect searchBarFrame = CGRectMake(0, 60, 320, 40);
    _chazhao.delegate = self;
    _chazhao.showsCancelButton = YES;
    _chazhao.frame = searchBarFrame;
    _chazhao.barStyle = UISearchBarStyleDefault;


    
    
    //首页推荐
    scrollViewController  *scrViewController = [[scrollViewController alloc]init];
    scrViewController.view.frame = CGRectMake(0, 80, 320, 200);
    
    //点餐按钮及布局
    _diancan = [UIButton buttonWithType:UIButtonTypeCustom];
    _diancan.frame = CGRectMake(0, 280, 160, 100);
    //[_diancan setBackgroundImage:<#(UIImage *)#> forState:<#(UIControlState)#>
    _diancan.backgroundColor = [UIColor redColor];
    _diancan.tintColor = [UIColor grayColor];
    _diancan.highlighted = YES;
    _diancan.tag = 0;
    _diancan.showsTouchWhenHighlighted = YES;
     
    
    
    //个人中心按钮及布局
    _gerenzhongxin = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _gerenzhongxin.frame =CGRectMake(160, 280, 160, 100);
    _gerenzhongxin.backgroundColor = [UIColor yellowColor];
    _gerenzhongxin.tintColor=[UIColor grayColor];
    _gerenzhongxin.tag = 1;
    _gerenzhongxin.showsTouchWhenHighlighted =YES;
    
    
    
    //附近按钮及布局
    _fujindecanting = [UIButton buttonWithType:UIButtonTypeCustom];
    _fujindecanting.frame = CGRectMake(0, 380, 160, 100);
    _fujindecanting.backgroundColor = [UIColor blueColor];
    _fujindecanting.tintColor = [UIColor grayColor];
    _fujindecanting.tag = 2;
    _fujindecanting.showsTouchWhenHighlighted = YES;
    
    
    //吃什么功能
    _chishenme = [UIButton buttonWithType:UIButtonTypeCustom];
    _chishenme.frame = CGRectMake(160, 380, 160, 100);
    _chishenme.backgroundColor = [UIColor greenColor];
    _chishenme.tintColor = [UIColor grayColor];
    _chishenme.tag = 3;
    _chishenme.showsTouchWhenHighlighted = YES;
    
    
    //监听按钮点击事件
    [_diancan addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [_gerenzhongxin addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [_fujindecanting addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [_chishenme addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    
    [self.view addSubview:scrViewController.view];
    [self.view addSubview:_chazhao];
    [self.view addSubview:_diancan];
    [self.view addSubview:_gerenzhongxin];
    [self.view addSubview:_fujindecanting];
    [self.view addSubview:_chishenme];
    
    
   

}


-(void)btnClick:(id)sender
{
    UIButton *btn = (UIButton *)sender;
    switch (btn.tag) {
        case 0:
        {
            NSLog(@"press btn0 \n");
            dianCajViewController *dvc = [[dianCajViewController alloc]init];
            [self presentViewController:dvc animated:YES completion:^{}];}
            
            break;
        case 1:
            NSLog(@"press btn1 \n");
        case 2:
            NSLog(@"press btn2 \n");
        case 3:
            NSLog(@"press btn3 \n");
        default:
            break;
    }



}
















- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
