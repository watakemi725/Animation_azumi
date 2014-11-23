//
//  ViewController.m
//  Animation_azumi
//
//  Created by Takemi Watanuki on 2014/11/22.
//  Copyright (c) 2014年 Takemi Watanuki. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    [self animate:3];
//ぼくはホモです。。
}





-(void)animate:(int)count{
    
    
    [UIView animateWithDuration:0.1 animations:^{
        self.view.center = CGPointMake(160,538+count%2*50);
        NSLog(@"%d/%f",count,count%2*100.f);
    }completion: ^(BOOL finished){
        [self animate:count+1];
    }];
    

    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
