//
//  ViewController.m
//  TestMessageForwarding
//
//  Created by Lin,Shiwei on 2017/7/27.
//  Copyright © 2017年 Lin,Shiwei. All rights reserved.
//

#import "ViewController.h"
#import <objc/runtime.h>
@interface ViewController ()
@property (strong,nonatomic) ViewA *viewA;
@property (strong,nonatomic) ViewB *viewB;
@property (strong,nonatomic) ViewSubA *viewSubA;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    _viewB = [[ViewB alloc] init];
//
////    _viewA = [[ViewA alloc] initWithForwardingTarget:_viewB];
//    _viewSubA = [[ViewSubA alloc] initWithForwardingTarget:_viewB];
//    
////    id vA = _viewA;
////    [vA printSomething];
//    
//    id vSubA = _viewSubA;
//    [vSubA printSomething];
//
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
