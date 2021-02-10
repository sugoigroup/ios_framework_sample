//
//  ViewController.m
//  customerformyframework
//
//  Created by kimtaeho on 2021/02/10.
//

#import "ViewController.h"
#import <myframework/myframework.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    MyLogger *interface = [MyLogger sharedInstance:TRUE];
    [interface printMyLog:@"taeho"];
}


@end
