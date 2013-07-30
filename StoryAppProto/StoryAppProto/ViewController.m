//
//  ViewController.m
//  StoryAppProto
//
//  Created by Marco Argiolas on 30/07/13.
//  Copyright (c) 2013 Marco Argiolas. All rights reserved.
//

#import "ViewController.h"
#import "TextViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    CGRect bounds = [[UIScreen mainScreen] applicationFrame];
    NSLog(@"BOUNDS %f %f %f %f", bounds.origin.x, bounds.origin.y, bounds.size.height, bounds.size.width);
    NSLog(@"NAVIGATION CONTROLLER %f", self.navigationController.navigationBar.frame.size.height);
	[self.navigationController.navigationBar setFrame:CGRectMake(self.navigationController.navigationBar.frame.origin.x,
                                                                 self.navigationController.navigationBar.frame.origin.y,
                                                                 self.navigationController.navigationBar.frame.size.width,
                                                                 100)];
    NSLog(@"NAVIGATION CONTROLLER %f", self.navigationController.navigationBar.frame.size.height);

    // Do any additional setup after loading the view, typically from a nib.
}

-(void) viewWillAppear:(BOOL)animated
{
    [self.navigationController.navigationBar setFrame:CGRectMake(self.navigationController.navigationBar.frame.origin.x,
                                                                 self.navigationController.navigationBar.frame.origin.y,
                                                                 self.navigationController.navigationBar.frame.size.width,
                                                                 100)];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)TextButtonPressed:(id)sender
{
    TextViewController *tvc = [[TextViewController alloc]initWithNibName:nil bundle:nil];
    [self.navigationController pushViewController:tvc animated:YES];
}
@end
