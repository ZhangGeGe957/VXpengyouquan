//
//  newViewController.h
//  考核
//
//  Created by 张佳乔 on 2021/7/30.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface newViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;

@property (nonatomic, strong) NSArray *nameArray;
@property (nonatomic, strong) NSArray *titleArray;

@end

NS_ASSUME_NONNULL_END
