//
//  MMMainViewController.h
//  ManManDian
//
//  Created by omgder on 14-4-21.
//  Copyright (c) 2014年 omgder. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MMMainViewController : UIViewController<UISearchBarDelegate>

@property(nonatomic,strong)UIPageViewController *jingpin;
@property(nonatomic,strong)UIView *goodsView;
@property(nonatomic,strong)UISearchBar *chazhao;
@property(nonatomic,strong)UIPageControl *pageControl;
@property(nonatomic,strong)UIButton *diancan;
@property(nonatomic,strong)UIButton *shoucan;
@property(nonatomic,strong)UIButton *gerenzhongxin;
@property(nonatomic,strong)UIButton *yaoyiyao;
@property(nonatomic,strong)UIButton *chishenme;
@property(nonatomic,strong)UIButton *fujindecanting;

@end
