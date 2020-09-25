//
//  ViewController.m
//  WebRTC_new
//
//  Created by 胡志辉 on 2018/9/4.
//  Copyright © 2018年 Mr.hu. All rights reserved.
//

#import "ViewController.h"
#import <ReactiveObjC/ReactiveObjC.h>
#import <WebRTC/WebRTC.h>
#import "WebRTCHelper/WebRTCHelper.h"

#define kAPPID @"1234567890abcdefg"

#define kDeviceUUID [[[UIDevice currentDevice] identifierForVendor] UUIDString]

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *roomTF;
@property (weak, nonatomic) IBOutlet UIButton *jionRoomBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[self.roomTF rac_textSignal] subscribeNext:^(NSString * _Nullable x) {
        if ([x isEqualToString:@""]) {
            self.jionRoomBtn.enabled = false;
        }else{
            self.jionRoomBtn.enabled = true;
        }
    }];
//    [self connect:@"100"];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = true;
}

- (IBAction)joinRoomBtnClick:(UIButton *)sender {
    
}


-(void)connect:(NSString *)roomId{
//    NSString * string = @"http://115.236.101.203:18800/token";
//    string = [NSString stringWithFormat:@"%@?appid=%@&uid=%@",string,kAPPID,kDeviceUUID];
//    NSURL * url = [NSURL URLWithString:string];
//    RTCLog(@"Joining room:%@ on room server.", roomId);
//    NSMutableURLRequest * urlRequest = [NSMutableURLRequest requestWithURL:url];
//    urlRequest.HTTPMethod = @"POST";
//    __weak ViewController * weakSelf = self;
//    [[NSURLConnection rac_sendAsynchronousRequest:urlRequest] subscribeNext:^(RACTwoTuple<NSURLResponse *,NSData *> * _Nullable x) {
//        NSString * str = [[NSString alloc] initWithData:[x second] encoding:NSUTF8StringEncoding];
//
//        NSLog(@"%@",str);
//    }];
//    [[WebRTCHelper shareInstance] connectServer:@"169.254.245.179" port:@"3000" room:@"100"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
