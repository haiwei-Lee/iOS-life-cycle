//
//  LhwTestViewController.m
//  life-cycle
//
//  Created by lee on 2018/6/26.
//  Copyright © 2018年 首约科技（北京）有限公司 Inc. All rights reserved.
//

#import "LhwTestViewController.h"

@interface LhwTestViewController ()

@end

@implementation LhwTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%@ Current method == %@",NSStringFromClass([self class]),NSStringFromSelector(_cmd));
    // Do any additional setup after loading the view.
    UIButton * button = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 200, 60)];
    button.center = self.view.center;
    button.backgroundColor = [UIColor redColor];
    [button setTitle:@"dismiss" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonClicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    NSLog(@"%@ Current method == %@",NSStringFromClass([self class]),NSStringFromSelector(_cmd));
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    NSLog(@"%@ Current method == %@",NSStringFromClass([self class]),NSStringFromSelector(_cmd));
}

-(void)viewWillLayoutSubviews{
    [super viewWillLayoutSubviews];
    NSLog(@"%@ Current method == %@",NSStringFromClass([self class]),NSStringFromSelector(_cmd));
}

- (void)viewDidLayoutSubviews{
    [super viewDidLayoutSubviews];
    NSLog(@"%@ Current method == %@",NSStringFromClass([self class]),NSStringFromSelector(_cmd));
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    NSLog(@"%@ Current method == %@",NSStringFromClass([self class]),NSStringFromSelector(_cmd));
}
-(void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    NSLog(@"%@ Current method == %@",NSStringFromClass([self class]),NSStringFromSelector(_cmd));
}


- (void)buttonClicked{
    [self dismissViewControllerAnimated:YES completion:^{
        NSLog(@"dismiss completion");
    }];
}

-(void)dealloc{
    NSLog(@"%@ Current method == %@",NSStringFromClass([self class]),NSStringFromSelector(_cmd));
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
