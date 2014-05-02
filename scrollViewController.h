//
//  scrollViewController.h
//  ManManDian
//
//  Created by omgder on 14-4-30.
//  Copyright (c) 2014年 omgder. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface scrollViewController :UIViewController<UIScrollViewDelegate>
@property (strong,nonatomic)UIScrollView *scrollView;
@property (strong,nonatomic)NSMutableArray *slideImages;
@property (strong,nonatomic)UIPageControl *pageControl;
@property (strong, nonatomic)UITextField *text;
@end

