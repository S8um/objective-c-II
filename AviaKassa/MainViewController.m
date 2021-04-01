//
//  ViewController.m
//  AviaKassa
//
//  Created by admin on 08.03.2021.
//

#import "MainViewController.h"

#define task1 @"Задание 1"
#define task20 @"Задание 2.0"
#define task21 @"Задание 2.1"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"Меню";
    self.view.backgroundColor = [UIColor systemBlueColor];
    
    CGRect redViewFrame = CGRectMake(40.0, 100.0, [UIScreen mainScreen].bounds.size.width - 80.0, [UIScreen mainScreen].bounds.size.height - 140.0);
    UIView *redView = [[UIView alloc] initWithFrame: redViewFrame];
    redView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview: redView];
    
    [self configureControls];
}

#pragma mark - Navigation
- (void)openFirstViewController {
    FirstViewController *firstViewController = [FirstViewController new];
    firstViewController.viewTitle = task1;
    [self.navigationController pushViewController:firstViewController animated:YES];
}

- (void)openSecondViewController {
    SecondViewController *secondViewController = [SecondViewController new];
    secondViewController.viewTitle = task20;
    [self.navigationController pushViewController:secondViewController animated:YES];
}

- (void)openTableViewController {
    TableViewController *tableViewController = [TableViewController new];
    tableViewController.viewTitle = task21;
    [self.navigationController pushViewController:tableViewController animated:YES];
}

#pragma mark - Configure UI

- (void)configureControls {
    CGFloat buttonWidth = 200;
    CGFloat buttonHeight = 50;
    CGFloat kXOffset = ([UIScreen mainScreen].bounds.size.width - buttonWidth) / 2;
    CGFloat kYOffset = 20;
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    button1.frame = CGRectMake(kXOffset, 120, buttonWidth, buttonHeight);
    button1.backgroundColor = [UIColor systemBlueColor];
//    button1.center = self.view.center;
    [button1 setTitle:task1 forState:UIControlStateNormal];
    [button1 addTarget:self action:@selector(openFirstViewController) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button1];

    UIButton *button20 = [UIButton buttonWithType:UIButtonTypeCustom];
    button20.frame = CGRectMake(kXOffset, button1.frame.origin.y + buttonHeight + kYOffset, buttonWidth, buttonHeight);
    button20.backgroundColor = [UIColor systemBlueColor];
    [button20 setTitle:task20 forState:UIControlStateNormal];
    [button20 addTarget:self action:@selector(openSecondViewController) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button20];
    
    UIButton *button21 = [UIButton buttonWithType:UIButtonTypeCustom];
    button21.frame = CGRectMake(kXOffset, button20.frame.origin.y + buttonHeight + kYOffset, buttonWidth, buttonHeight);
    button21.backgroundColor = [UIColor systemBlueColor];
    [button21 setTitle:task21 forState:UIControlStateNormal];
    [button21 addTarget:self action:@selector(openTableViewController) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button21];
}


@end
