//
//  newViewController.m
//  考核
//
//  Created by 张佳乔 on 2021/7/30.
//

#import "newViewController.h"
#import "coolTableViewCell.h"

#define width [UIScreen mainScreen].bounds.size.width
#define height [UIScreen mainScreen].bounds.size.height

@interface newViewController ()

@end

@implementation newViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _nameArray = [[NSArray alloc] initWithObjects:@"复杂化", @"ftttttt", @"爱尔兰堤坝", @"waxuuuuuuu", @"墨绿", @"浪极", @"Fahaxiki", @"w", @"kakule", @"Queren", nil];
    _titleArray = [[NSArray alloc] initWithObjects:@"3g实验室好棒耶", @"我好漂亮", @"你谁鸭", @"天真", @"looklookthis", @"沉迷学习 无法自拔", @"开心你就笑", @"大河之间天上来", @"红果果和绿泡泡爱爱爱", @"大坝冲坏了谁来修", nil];
    
    self.title = @"朋友圈";
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIBarButtonItem *right = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:self action:nil];
    self.navigationItem.rightBarButtonItem = right;
    
    UIBarButtonItem *left = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"shou.png"] style:UIBarButtonItemStylePlain target:self action:@selector(back)];
    self.navigationItem.leftBarButtonItem = left;
    
    
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 100, width, height - 100) style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
    [_tableView registerClass:[coolTableViewCell class] forCellReuseIdentifier:@"friend"];
    [_tableView registerClass:[coolTableViewCell class] forCellReuseIdentifier:@"cool"];
    [_tableView registerClass:[coolTableViewCell class] forCellReuseIdentifier:@"head"];
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        coolTableViewCell *cell = [_tableView dequeueReusableCellWithIdentifier:@"head" forIndexPath:indexPath];
        cell.photoView.image = [UIImage imageNamed:@"list_img3.png"];
        cell.headView.image = [UIImage imageNamed:@"sixin_img1.png"];
        cell.nameLabel.text = @"阡陌";
        cell.nameLabel.font = [UIFont systemFontOfSize:24];
        return cell;
        
    } else if (indexPath.row % 2) {
        coolTableViewCell *cell = [_tableView dequeueReusableCellWithIdentifier:@"friend" forIndexPath:indexPath];
        cell.nameLabel.text = _nameArray[indexPath.row - 1];
        cell.titleLabel.text = _titleArray[indexPath.row - 1];
        NSString *imageName = [[NSString alloc] initWithFormat:@"1-%ld.jpeg", (long)indexPath.row];
        cell.headView.image = [UIImage imageNamed:imageName];
        cell.photoView.image = [UIImage imageNamed:@"works_img4.png"];
        [cell.button setTitle:@"3g实验室" forState:UIControlStateNormal];
        return cell;
    } else {
        coolTableViewCell *cell = [_tableView dequeueReusableCellWithIdentifier:@"cool" forIndexPath:indexPath];
        cell.nameLabel.text = _nameArray[indexPath.row - 1];
        cell.titleLabel.text = _titleArray[indexPath.row - 1];
        NSString *imageName = [[NSString alloc] initWithFormat:@"1-%ld.jpeg", (long)indexPath.row];
        cell.headView.image = [UIImage imageNamed:imageName];
        cell.photoView.image = [UIImage imageNamed:@"works_img4.png"];
        cell.coolView.image = [UIImage imageNamed:@"works_img4.png"];
        [cell.button setTitle:@"linux实验室" forState:UIControlStateNormal];
        return cell;
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 11;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        return 310;
    }
    return 420;
}


- (void)back {
    [self dismissViewControllerAnimated:YES completion:nil];
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
