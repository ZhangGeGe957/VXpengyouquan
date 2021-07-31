//
//  RegistViewController.h
//  考核
//
//  Created by 张佳乔 on 2021/7/30.
//

#import <UIKit/UIKit.h>

@protocol TranAccount <NSObject>

- (void)accountArrat:(NSMutableArray*)number;

@end

NS_ASSUME_NONNULL_BEGIN

@interface RegistViewController : UIViewController<UITextFieldDelegate>

@property (nonatomic, strong) UITextField *accountText;
@property (nonatomic, strong) UITextField *passwordText;
@property (nonatomic, strong) UITextField *againText;
@property (nonatomic, strong) UIButton *sureButton;
@property (nonatomic, strong) NSMutableArray *numberArray;
@property (nonatomic, weak) id<TranAccount> delegate;

@end

NS_ASSUME_NONNULL_END
