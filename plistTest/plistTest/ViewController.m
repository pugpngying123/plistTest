//
//  ViewController.m
//  plistTest
//
//  Created by iOS-Jay on 16/7/18.
//  Copyright © 2016年 iOS-Jay. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"kuaidialblack" ofType:@"plist"];
    NSMutableDictionary *data = [[NSMutableDictionary alloc] initWithContentsOfFile:plistPath];
    
//      NSLog(@"%@", data);
    

// 
////       添加一项内容
//    [data setObject:@"私人电话" forKey:@"13818786042"];
//    //获取应用程序沙盒的Documents目录
//    NSArray *paths=NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask,YES);
//    NSString *plistPath1 = [paths objectAtIndex:0];/Users/ios-jay/Desktop/桌面/plistTest/plistTest/kuaidialblack.plist
//    //得到完整的文件名
//    NSString *filename=[plistPath1 stringByAppendingPathComponent:@"plistdemo.plist"];
//    //输入写入
//    [data writeToFile:filename atomically:YES];
////    NSLog(@"%@",NSHomeDirectory());
//    //那怎么证明我的数据写入了呢？读出来看看
//    NSMutableDictionary *data1 = [[NSMutableDictionary alloc] initWithContentsOfFile:filename];
////    NSLog(@"%@", data1);
    
   

    NSArray *keys = [data allKeys];
    for (NSString *key in keys) {
//        NSLog(@"%@ is %@",key, [data objectForKey:key]);
    }
    if ([keys containsObject:@"075525983083"]) {
        NSLog(@"包含 \n");
    }
    NSLog(@"结束 \n");
    
  


    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
