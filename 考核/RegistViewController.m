//
//  RegistViewController.m
//  考核
//
//  Created by 张佳乔 on 2021/7/30.
//

#import "RegistViewController.h"

@interface RegistViewController ()

@end

@implementation RegistViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _numberArray = [[NSMutableArray alloc] init];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setTitle:@"返回" forState:UIControlStateNormal];
    button.frame = CGRectMake(20, 100, 60, 50);
    [self.view addSubview:button];
    button.titleLabel.font = [UIFont systemFontOfSize:22];
    [button addTarget:self action:@selector(back:) forControlEvents:UIControlEventTouchUpInside];
    
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
    
    _againText = [[UITextField alloc] init];
    _againText.keyboardType = UIKeyboardTypeDefault;
    _againText.borderStyle = UITextBorderStyleRoundedRect;
    _againText.frame = CGRectMake(100, 360, 200, 50);
    _againText.delegate = self;
    _againText.secureTextEntry = YES;
    _againText.placeholder = @"确认密码";
    [self.view addSubview:_againText];
    
    UILabel *account = [[UILabel alloc] initWithFrame:CGRectMake(50, 200, 50, 50)];
    account.text = @"账号";
    [self.view addSubview:account];
    
    UILabel *password = [[UILabel alloc] initWithFrame:CGRectMake(50, 280, 50, 50)];
    password.text = @"密码";
    [self.view addSubview:password];
    
    UILabel *again = [[UILabel alloc] initWithFrame:CGRectMake(20, 360, 100, 50)];
    again.text = @"确认密码";
    [self.view addSubview:again];
    
    _sureButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_sureButton setTitle:@"确认注册" forState:UIControlStateNormal];
    _sureButton.frame = CGRectMake(150, 420, 100, 50);
    _sureButton.titleLabel.font = [UIFont systemFontOfSize:24];
    [_sureButton addTarget:self action:@selector(sure:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_sureButton];
}

- (void)sure:(UIButton*)button {
    if ([_againText.text isEqualToString:_passwordText.text] && ![_accountText.text isEqualToString:@""]) {
        UIAlertController *tipView = [UIAlertController alertControllerWithTitle:@"提示" message:@"注册成功" preferredStyle:UIAlertControllerStyleAlert];
        [tipView addAction:[UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            [self->_numberArray addObject:self->_againText.text];
            [self->_numberArray addObject:self->_accountText.text];
            [self->_delegate accountArrat:self->_numberArray];
            [self dismissViewControllerAnimated:YES completion:nil];
        }]];
        
        [self presentViewController:tipView animated:true completion:nil];
    } else {
        UIAlertController *tips = [UIAlertController alertControllerWithTitle:@"注册失败" message:nil preferredStyle:UIAlertControllerStyleAlert];
         [self presentViewController:tips animated:YES completion:nil];
        [self dismissViewControllerAnimated:YES completion:nil];
    }
}

- (void)back:(UIButton*)button {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [_accountText endEditing:YES];
    [_passwordText endEditing:YES];
    [_accountText endEditing:YES];
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
