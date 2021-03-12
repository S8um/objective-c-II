//
//  SecondViewController.m
//  AviaKassa
//
//  Created by admin on 12.03.2021.
//

#import "SecondViewController.h"
#import "CustomTableCell.h"

@interface SecondViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *dayOfWeek;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = self.viewTitle;
    self.view.backgroundColor = [UIColor whiteColor];
    [self configureControls];
    self.dayOfWeek = [@[@"Понедельник",
                        @"Вторник",
                        @"Среда",
                        @"Четверг",
                        @"Пятница",
                        @"Суббота",
                        @"Воскресенье"] mutableCopy];
}

#pragma mark - Configure UI

- (void)configureControls {
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
    [self.view addSubview: self.tableView];
    
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    CustomTableCell *cell = [tableView dequeueReusableCellWithIdentifier:@"id"];
    
    if (!cell) {
        cell = [[CustomTableCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"id"];
    }
    
    cell.leftLabel.text = [NSString stringWithFormat:@"#%ld", (long)indexPath.row + 1];
    cell.rightLabel.text = [NSString stringWithFormat:@"%@", self.dayOfWeek[indexPath.row]];
    
    return  cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dayOfWeek.count;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    [self.dayOfWeek removeObjectAtIndex:indexPath.row];
    [self.tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
}

@end
