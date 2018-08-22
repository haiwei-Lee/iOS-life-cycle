//
//  ViewController.m
//  life-cycle
//
//  Created by lee on 2018/6/25.
//  Copyright © 2018年 首约科技（北京）有限公司 Inc. All rights reserved.
//

#import "ViewController.h"
#import "LhwTestViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%@ Current method == %@",NSStringFromClass([self class]),NSStringFromSelector(_cmd));
    
    UIButton * button = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 200, 60)];
    button.center = self.view.center;
    button.backgroundColor = [UIColor redColor];
    [button setTitle:@"tip" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonClicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)buttonClicked{
//    [self presentViewController:[LhwTestViewController new] animated:YES completion:^{
//       
//        NSLog(@"present completion");
//    }];
    [self.navigationController pushViewController:[LhwTestViewController new] animated:YES];
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

-(void)dealloc{
     NSLog(@"%@ Current method == %@",NSStringFromClass([self class]),NSStringFromSelector(_cmd));
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
