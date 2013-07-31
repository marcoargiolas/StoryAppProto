//
//  ViewController.m
//  StoryAppProto
//
//  Created by Marco Argiolas on 30/07/13.
//  Copyright (c) 2013 Marco Argiolas. All rights reserved.
//

#import "ViewController.h"
#import "TextViewController.h"
#import "GlobalDefines.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
}

-(void) viewDidAppear:(BOOL)animated
{
    //CGRect bounds = [[UIScreen mainScreen] applicationFrame];
    [self.navigationController.navigationBar setFrame:CGRectMake(self.navigationController.navigationBar.frame.origin.x,
                                                                 self.navigationController.navigationBar.frame.origin.y,
                                                                 self.navigationController.navigationBar.frame.size.width,
                                                                 NAVIGATION_BAR_HEIGHT)];
    //Set Title
    NSDictionary *attributes= [NSDictionary dictionaryWithObjectsAndKeys:[UIColor darkGrayColor],NSForegroundColorAttributeName, [UIFont fontWithName:@"Arial" size:HEADER_FONT_SIZE],NSFontAttributeName, nil];

    self.navigationController.navigationBar.titleTextAttributes = attributes;
    self.navigationController.navigationBar.shadowImage = [UIImage imageNamed:@"Bg-Navbar-Shadow.png"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)TextButtonPressed:(id)sender
{
    TextViewController *tvc = [[TextViewController alloc]initWithNibName:@"TextViewController" bundle:nil];
    [self.navigationController pushViewController:tvc animated:YES];
}
@end
