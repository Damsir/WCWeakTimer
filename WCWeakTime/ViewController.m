//
//  ViewController.m
//  WCWeakTime
//
//  Created by admin on 12/04/2018.
//  Copyright © 2018 guanweicheng. All rights reserved.
//

#import "ViewController.h"
#import "TestVCViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor yellowColor];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"跳转" style:UIBarButtonItemStylePlain target:self action:@selector(pushTestVC)];
}

- (void)pushTestVC {
    [self.navigationController pushViewController:[TestVCViewController new] animated:YES];
}

- (void)dealloc {
    NSLog(@"ViewController销毁了");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
