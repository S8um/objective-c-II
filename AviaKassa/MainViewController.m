//
//  ViewController.m
//  AviaKassa
//
//  Created by admin on 08.03.2021.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"Main Controller";
    self.view.backgroundColor = [UIColor greenColor];
    
    CGRect redViewFrame = CGRectMake(40.0, 100.0, [UIScreen mainScreen].bounds.size.width - 80.0, [UIScreen mainScreen].bounds.size.height - 140.0);
    UIView *redView = [[UIView alloc] initWithFrame: redViewFrame];
    redView.backgroundColor = [UIColor redColor];
    [self.view addSubview: redView];
    
    [self configureControls];
}

#pragma mark - Navigation
- (void)openSecondViewController {
    FirstViewController *secondViewController = [FirstViewController new];
    [self.navigationController pushViewController:secondViewController animated:YES];
}

#pragma mark - Configure UI

- (void)configureControls {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(0, 0, 200, 100);
    button.backgroundColor = [UIColor blueColor];
    button.center = self.view.center;
    [button setTitle:@"Нажми" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(openSecondViewController) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}


@end
