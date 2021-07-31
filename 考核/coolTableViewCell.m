//
//  coolTableViewCell.m
//  考核
//
//  Created by 张佳乔 on 2021/7/30.
//

#import "coolTableViewCell.h"

#define width [UIScreen mainScreen].bounds.size.width
#define height [UIScreen mainScreen].bounds.size.height

@implementation coolTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if ([self.reuseIdentifier isEqualToString:@"friend"]) {
        _headView = [[UIImageView alloc] init];
        _photoView = [[UIImageView alloc] init];
        _nameLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        _button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [self.contentView addSubview:_headView];
        [self.contentView addSubview:_photoView];
        [self.contentView addSubview:_nameLabel];
        [self.contentView addSubview:_titleLabel];
        [self.contentView addSubview:_button];
        [_headView.layer setMasksToBounds:YES];
        [_headView.layer setCornerRadius:5.0];
    } else if ([self.reuseIdentifier isEqualToString:@"cool"]){
        _headView = [[UIImageView alloc] init];
        _photoView = [[UIImageView alloc] init];
        _nameLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        _button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [self.contentView addSubview:_headView];
        [self.contentView addSubview:_photoView];
        [self.contentView addSubview:_nameLabel];
        [self.contentView addSubview:_titleLabel];
        [self.contentView addSubview:_button];
        _coolView = [[UIImageView alloc] init];
        [self.contentView addSubview:_coolView];
        [_headView.layer setMasksToBounds:YES];
        [_headView.layer setCornerRadius:5.0];
    } else if ([self.reuseIdentifier isEqualToString:@"head"]) {
        _headView = [[UIImageView alloc] init];
        _photoView = [[UIImageView alloc] init];
        [self.contentView addSubview:_photoView];
        _nameLabel = [[UILabel alloc] init];
        _nameLabel.textAlignment = NSTextAlignmentRight;
        [_photoView addSubview:_nameLabel];
        [_photoView addSubview:_headView];
        [_headView.layer setMasksToBounds:YES];
        [_headView.layer setCornerRadius:5.0];
    }
    return self;
}

- (void)layoutSubviews {
    if ([self.reuseIdentifier isEqualToString:@"friend"]) {
        _headView.frame = CGRectMake(10, 10, 50, 50);
        _photoView.frame = CGRectMake(70, 70, 200, 300);
        _nameLabel.frame = CGRectMake(70, 0, 300, 40);
        _titleLabel.frame = CGRectMake(70, 35, 300, 30);
        _button.frame = CGRectMake(0, 370, 200, 30);
    } else if ([self.reuseIdentifier isEqualToString:@"cool"]) {
        _headView.frame = CGRectMake(10, 10, 50, 50);
        _photoView.frame = CGRectMake(70, 70, 170, 270);
        _nameLabel.frame = CGRectMake(70, 0, 300, 40);
        _titleLabel.frame = CGRectMake(70, 35, 300, 30);
        _button.frame = CGRectMake(20, 350, 200, 30);
        _coolView.frame = CGRectMake(240, 70, 170, 270);
    } else if ([self.reuseIdentifier isEqualToString:@"head"]) {
        _photoView.frame = CGRectMake(0, 0, width, 250);
        _headView.frame = CGRectMake(330, 210, 75, 75);
        _nameLabel.frame = CGRectMake(220, 220, 100, 30);
    }
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
