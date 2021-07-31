//
//  LoadViewController.h
//  考核
//
//  Created by 张佳乔 on 2021/7/30.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LoadViewController : UIViewController<UITextFieldDelegate>

@property (nonatomic, strong) UITextField *accountText;
@property (nonatomic, strong) UITextField *passwordText;
@property (nonatomic, strong) UIButton *loadButton;
@property (nonatomic, strong) UIButton *registButton;
@property (nonatomic, strong) NSMutableArray *numberArray;
@property (nonatomic, strong) NSString *account;
@property (nonatomic, strong) NSString *password;


- (void)creatView;

@end

NS_ASSUME_NONNULL_END
