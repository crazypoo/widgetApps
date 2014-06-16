//
//  ViewController.m
//  widgetApps
//
//  Created by crazypoo on 14/6/16.
//  Copyright (c) 2014年 crazypoo. All rights reserved.
//

#import "ViewController.h"
#import <NotificationCenter/NotificationCenter.h>

@interface ViewController ()
            

@end

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NCWidgetController *lol = [[NCWidgetController alloc] init];
    [lol setHasContent:NO forWidgetWithBundleIdentifier:@"LOL.HI.Widget"];
    NSString *urlStr = @"urlscheme://";
    [[self extensionContext] openURL:[NSURL URLWithString:urlStr] completionHandler:nil];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height/2 - 15, self.view.frame.size.width, 30)];
    label.font = [UIFont systemFontOfSize:18];
    label.textAlignment = NSTextAlignmentCenter;
    label.text = @"大家好，我是一个widget";
    [self.view addSubview:label];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
