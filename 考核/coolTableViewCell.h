//
//  coolTableViewCell.h
//  考核
//
//  Created by 张佳乔 on 2021/7/30.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface coolTableViewCell : UITableViewCell

@property (nonatomic, strong) UIImageView *headView;
@property (nonatomic, strong) UIImageView *photoView;
@property (nonatomic, strong) UILabel *nameLabel;
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UIButton *button;
@property (nonatomic, strong) UIImageView *coolView;

@end

NS_ASSUME_NONNULL_END
