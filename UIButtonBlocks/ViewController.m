//
//  ViewController.m
//  UIButtonBlocks
//
//  Created by Matthew on 16/1/13.
//  Copyright © 2016年 Matthew.ye. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+Blocks.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *insideButton;
@property (weak, nonatomic) IBOutlet UIButton *outsideButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.insideButton addAction:^(UIButton *btn) {
        NSLog(@"action1");
    } forControlEvent:UIControlEventTouchUpInside];

    [self.outsideButton addAction:^(UIButton *btn) {
        [self.insideButton addAction:^(UIButton *btn) {
            NSLog(@"action2");
        } forControlEvent:UIControlEventTouchUpInside];
    } forControlEvent:UIControlEventTouchUpOutside];
    
    [self.insideButton addAction:^(UIButton *btn) {
        NSLog(@"insideButton");
    } forControlEvent:UIControlEventValueChanged];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
