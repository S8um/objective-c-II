//
//  FirstViewController.m
//  AviaKassa
//
//  Created by admin on 08.03.2021.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"First Controller";
    
    self.view.backgroundColor = [UIColor blueColor];
    
    [self configureControls];
}

#pragma mark - Configure UI

- (void)configureControls {
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    label.center = CGPointMake(self.view.center.x, self.view.center.y - 200);
    label.text = @"Картинка";
    [label setTextColor:[UIColor yellowColor]];
    label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:label];
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"moon"]];
    imageView.frame = CGRectMake(200, 200, 200, 200);
    imageView.contentMode = UIViewContentModeScaleAspectFill;
    
    imageView.center = CGPointMake(self.view.center.x, self.view.center.y);
    
    [self.view addSubview:imageView];
    
}

@end
