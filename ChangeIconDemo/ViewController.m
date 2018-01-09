//
//  ViewController.m
//  ChangeIconDemo
//
//  Created by Readygo X on 2018/1/9.
//  Copyright © 2018年 Beginners. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeIconButtonClick:(UIButton *)sender {
    if ([[UIApplication sharedApplication] supportsAlternateIcons]) {
        
        NSString *iconName = nil;
        if (sender.tag == 1) {
            iconName = @"exampleIcon";
        } else if (sender.tag == 2) {
            iconName = @"podsIcon";
        }
        
        [[UIApplication sharedApplication] setAlternateIconName:iconName completionHandler:^(NSError * _Nullable error) {
            
        }];
    }
}

@end
