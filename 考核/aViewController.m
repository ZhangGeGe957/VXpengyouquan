//
//  aViewController.m
//  考核
//
//  Created by 张佳乔 on 2021/7/30.
//

#import "aViewController.h"
#import "newViewController.h"

@interface aViewController ()

@end

@implementation aViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithTitle:@"push" style:UIBarButtonItemStyleDone target:self action:@selector(push:)];;
    self.navigationItem.rightBarButtonItem = rightButton;
}

- (void)push:(UIButton*)button {
    newViewController *new = [[newViewController alloc] init];
    UINavigationController *friend = [[UINavigationController alloc] initWithRootViewController:new];
    friend.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:friend animated:YES completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
