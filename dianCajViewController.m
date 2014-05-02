//
//  dianCajViewController.m
//  ManManDian
//
//  Created by omgder on 14-5-1.
//  Copyright (c) 2014年 omgder. All rights reserved.
//

#import "dianCajViewController.h"

@interface dianCajViewController ()

@end

@implementation dianCajViewController
UINavigationBar *navgationBar;


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
    // Do any additional setup after loading the view.
    navgationBar = [[UINavigationBar alloc]init];
    navgationBar.frame = CGRectMake(0, 20, 320, 44);
   // navgationBar.
    //[self.view addSubview:navgationBar];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
