//
//  ViewController.m
//  TestOpenUrl
//
//  Created by yfw－iMac on 15/12/17.
//  Copyright © 2015年 Sunqichao. All rights reserved.
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

- (IBAction)click:(UIButton *)sender {
    switch (sender.tag) {
        case 1:
        {
            [SQCJumpOut callWithNumber:@"15618553322" appearAlert:NO];
        }
            break;
        case 2:
        {
            [SQCJumpOut jumpToOSDetailSet:SQCJumpTophotos];

        }
            break;
        case 3:
        {
            [SQCJumpOut openWebSite:@"https://www.baidu.com/"];

        }
            break;
        case 4:
        {
            [SQCJumpOut jumpToOSDetailSet:SQCJumpToSiri];

        }
            break;
        case 5:
        {
            [SQCJumpOut jumpToOSDetailSet:SQCJumpToSoftWareUpdate];

        }
            break;
        case 6:
        {
            [SQCJumpOut jumpToOSDetailSet:SQCJumpToSounds];
            
        }
            break;
        case 7:
        {
            [SQCJumpOut jumpToOSDetailSet:SQCJumpToWiFi];
            
        }
            break;
        default:
            break;
    }
    
}



@end
