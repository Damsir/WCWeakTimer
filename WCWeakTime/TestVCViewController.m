//
//  TestVCViewController.m
//  WCWeakTime
//
//  Created by admin on 12/04/2018.
//  Copyright © 2018 guanweicheng. All rights reserved.
//

#import "TestVCViewController.h"
#import "WCWeakTimer.h"

@interface TestVCViewController ()

@property (strong, nonatomic) WCWeakTimer *timer1;
@property (strong, nonatomic) WCWeakTimer *timer2;

@end

@implementation TestVCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor purpleColor];
    // 启动 timer1
    self.timer1 = [WCWeakTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timerAction:) userInfo:nil repeats:true];
    
    // 启动 timer2
    /*
    self.timer2 = [WCWeakTimer scheduledTimerWithTimeInterval:0.5 repeats:true block:^(WCWeakTimer *timer) {
        NSLog(@"timer_2执行了！！！！");
    }];
    */
    /*
     // 第三种初始化方式
     // block 里写了 self，可以自动释放
     self.timer1 = [WCWeakTimer scheduledTimerWithTimeInterval:1 repeats:true target:self safeBlock:^(WCWeakTimer *timer) {
     // block 里写满各种 self
     NSLog(@"timer_2");
     self.test = 1;
     self.test = 2;
     self.test = 3;
     self.test = 4;
     }];
     */
}

- (void)timerAction:(NSTimer *)t {
    [NSThread sleepForTimeInterval:1.0];        // 执行 0.2 秒
    NSLog(@"timer_1执行了！！！");
}

- (void)dealloc {
    NSLog(@"TestVCViewController销毁了");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
