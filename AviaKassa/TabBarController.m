//
//  TabBarController.m
//  AviaKassa
//
//  Created by admin on 22.03.2021.
//

#import "TabBarController.h"
#import "SecondViewController.h"
#import "TableViewController.h"

@interface TabBarController ()

@end

@implementation TabBarController

- (instancetype)init {
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        self.viewControllers = [self createViewControllers];
        self.tabBar.tintColor= [UIColor blueColor];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

#pragma mark - Private

- (NSArray<UIViewController *> *)createViewControllers {
    NSMutableArray<UIViewController *> *controllers = [NSMutableArray new];
    
    SecondViewController *secondViewController = [SecondViewController new];
    secondViewController.viewTitle = @"Days of week";
    secondViewController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"First" image:[UIImage systemImageNamed:(@"folder")] selectedImage:[UIImage systemImageNamed:@"folder.fil"]];
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:secondViewController];
    
    [controllers addObject:navigationController];
    
    
    TableViewController *tableViewController = [TableViewController new];
    tableViewController.viewTitle = @"Month";
    tableViewController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Second" image:[UIImage systemImageNamed:(@"folder")] selectedImage:[UIImage systemImageNamed:@"folder.fil"]];
    UINavigationController *tableNavigationTController = [[UINavigationController alloc] initWithRootViewController:tableViewController];
    
    [controllers addObject:tableNavigationTController];
    
    return controllers;
}

@end
