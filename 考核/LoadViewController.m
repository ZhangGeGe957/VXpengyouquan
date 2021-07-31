//
//  LoadViewController.m
//  考核
//
//  Created by 张佳乔 on 2021/7/30.
//

#import "LoadViewController.h"
#import "RegistViewController.h"
#import "aViewController.h"
#import "bViewController.h"
#import "cViewController.h"
#import "dViewController.h"
#import "eViewController.h"


@interface LoadViewController ()<TranAccount>

@end

@implementation LoadViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _account = [[NSString alloc] init];
    _password = [[NSString alloc] init];
    
    _numberArray = [[NSMutableArray alloc] init];
    [_numberArray addObject:@"iOSnb123"];
    [_numberArray addObject:@"123456789"];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    _accountText = [[UITextField alloc] init];
    _accountText.keyboardType = UIKeyboardTypeDefault;
    _accountText.borderStyle = UITextBorderStyleRoundedRect;
    _accountText.frame = CGRectMake(100, 200, 200, 50);
    _accountText.delegate = self;
    _accountText.placeholder = @"请输入账号";
    [self.view addSubview:_accountText];
    
    
    _passwordText = [[UITextField alloc] init];
    _passwordText.keyboardType = UIKeyboardTypeDefault;
    _passwordText.borderStyle = UITextBorderStyleRoundedRect;
    _passwordText.frame = CGRectMake(100, 280, 200, 50);
    _passwordText.delegate = self;
    _passwordText.secureTextEntry = YES;
    _passwordText.placeholder = @"请输入密码";
    [self.view addSubview:_passwordText];
    
    UILabel *account = [[UILabel alloc] initWithFrame:CGRectMake(50, 200, 50, 50)];
    account.text = @"账号";
    [self.view addSubview:account];
    
    UILabel *password = [[UILabel alloc] initWithFrame:CGRectMake(50, 280, 50, 50)];
    password.text = @"密码";
    [self.view addSubview:password];
    
    _loadButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_loadButton setTitle:@"登陆" forState:UIControlStateNormal];
    _loadButton.frame = CGRectMake(100, 350, 70, 50);
    _loadButton.titleLabel.font = [UIFont systemFontOfSize:20];
    [_loadButton addTarget:self action:@selector(load:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_loadButton];
    
    _registButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_registButton setTitle:@"注册" forState:UIControlStateNormal];
    _registButton.frame = CGRectMake(200, 350, 70, 50);
    _registButton.titleLabel.font = [UIFont systemFontOfSize:20];
    [_registButton addTarget:self action:@selector(regist:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_registButton];
    
}


- (void)load:(UIButton*)button {
    
//    [self creatView];
    if ([_accountText.text isEqualToString:@""] || [_passwordText.text isEqualToString:@""]) {

        UIAlertController *tips = [UIAlertController alertControllerWithTitle:@"输入有误" message:nil preferredStyle:UIAlertControllerStyleAlert];
        [self presentViewController:tips animated:YES completion:nil];
        [self dismissViewControllerAnimated:YES completion:nil];

    } else if (([_accountText.text isEqualToString:_numberArray[0]] && [_passwordText.text isEqualToString:_numberArray[1]]) || ([_accountText.text isEqualToString:_account] && [_passwordText.text isEqualToString:_password])){
        [self creatView];
    } else {
        UIAlertController *tips = [UIAlertController alertControllerWithTitle:@"输入有误" message:nil preferredStyle:UIAlertControllerStyleAlert];
        [self presentViewController:tips animated:YES completion:nil];
        [self dismissViewControllerAnimated:YES completion:nil];
    }
    
    
}

- (void)regist:(UIButton*)button {
    
    RegistViewController *regist = [[RegistViewController alloc] init];
    regist.modalPresentationStyle = UIModalPresentationFullScreen;
    regist.delegate = self;
    [self presentViewController:regist animated:YES completion:nil];
    
}

- (void)accountArrat:(NSMutableArray *)number {
    _account = number[1];
    _password = number[0];
}

- (void)creatView {
    aViewController *aView = [[aViewController alloc] init];
    bViewController *bView = [[bViewController alloc] init];
    cViewController *cView = [[cViewController alloc] init];
    dViewController *dView = [[dViewController alloc] init];
    eViewController *eView = [[eViewController alloc] init];
    aView.title = @"1";
    bView.title = @"2";
    cView.title = @"3";
    dView.title = @"4";
    eView.title = @"5";
    
    UINavigationController *aa = [[UINavigationController alloc] initWithRootViewController:aView];
    UINavigationController *bb = [[UINavigationController alloc] initWithRootViewController:bView];
    UINavigationController *cc = [[UINavigationController alloc] initWithRootViewController:cView];
    UINavigationController *dd = [[UINavigationController alloc] initWithRootViewController:dView];
    UINavigationController *ee = [[UINavigationController alloc] initWithRootViewController:eView];
    
    UITabBarItem *aaa = [[UITabBarItem alloc] initWithTitle:@"第一" image:nil tag:111];
    aView.tabBarItem = aaa;
    UITabBarItem *bbb = [[UITabBarItem alloc] initWithTitle:@"第二" image:nil tag:112];
    bView.tabBarItem = bbb;
    UITabBarItem *ccc = [[UITabBarItem alloc] initWithTitle:@"第三" image:nil tag:113];
    cView.tabBarItem = ccc;
    UITabBarItem *ddd = [[UITabBarItem alloc] initWithTitle:@"第四" image:nil tag:114];
    dView.tabBarItem = ddd;
    UITabBarItem *eee = [[UITabBarItem alloc] initWithTitle:@"第五" image:nil tag:115];
    eView.tabBarItem = eee;
    
    NSArray *mianArray = [[NSArray alloc] initWithObjects:aa, bb, cc, dd, ee, nil];
    UITabBarController *main = [[UITabBarController alloc] init];
    main.viewControllers = mianArray;
    
    main.modalPresentationStyle = UIModalPresentationFullScreen;
    
    [self presentViewController:main animated:YES completion:nil];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [_accountText endEditing:YES];
    [_passwordText endEditing:YES];
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
