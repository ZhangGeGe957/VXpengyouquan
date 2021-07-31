//
//  ViewController.m
//  考核
//
//  Created by 张佳乔 on 2021/7/30.
//

#import "ViewController.h"
#import "LoadViewController.h"

#define width [UIScreen mainScreen].bounds.size.width
#define height [UIScreen mainScreen].bounds.size.height

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(photo:) userInfo:self repeats:YES];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"1 开机界面.jpg"]];
    [self.view addSubview:imageView];
    imageView.frame = CGRectMake(0, 0, width, height);
    
}

- (void)photo:(NSTimer*)timer {
    [_timer invalidate];
    _timer = nil;
    LoadViewController *new = [[LoadViewController alloc] init];
    new.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:new animated:YES completion:nil];
    
}

@end
