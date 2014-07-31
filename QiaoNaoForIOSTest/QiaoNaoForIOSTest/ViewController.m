//
//  ViewController.m
//  QiaoNaoForIOSTest
//
//  Created by 阿凡树 QQ：729397005 on 14-7-31.
//  Copyright (c) 2014年 http://blog.afantree.com/. All rights reserved.
//

#import "ViewController.h"
#import "QiaoNaoForIOS.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSData* imageData = UIImageJPEGRepresentation([UIImage imageNamed:@"mx.jpg"], 0.7);
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSLog(@"str = %@",[QiaoNaoForIOS sendImageData:imageData toQianNaoID:@"common" withImageName:@"test"]);
    });
    
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://pic2.qnpic.com/doimg/729397005/4871a87b/"]];
    
    UIImageView* iv = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 300, 300)];
    [self.view addSubview:iv];
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSURLResponse* response;
        NSError* error;
        NSData* data = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
        iv.image = [UIImage imageWithData:data];
    });
    
    //NSLog(@"data:%@,\nresponse = %@,\nerror = %@",data,response,error);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated;
}

@end
