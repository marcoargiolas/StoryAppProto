//
//  TextViewController.m
//  StoryAppProto
//
//  Created by Marco Argiolas on 30/07/13.
//  Copyright (c) 2013 Marco Argiolas. All rights reserved.
//

#import "TextViewController.h"
#import "GlobalDefines.h"
#import "TextFilterToolbar.h"

@interface TextViewController ()

@end

@implementation TextViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        CGRect bounds = [[UIScreen mainScreen] applicationFrame];
        //Set Title
        self.title = @"Text Edit";
        [self.view setBackgroundColor:[UIColor blueColor]];
        //Back Button
        UIImage *backButtonImage = [UIImage imageNamed:@"Btn-NavBar-Back.png"];
        UIButton *backButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, backButtonImage.size.width, backButtonImage.size.height)];
        [backButton setBackgroundImage:backButtonImage forState:UIControlStateNormal];
        UIBarButtonItem *backButtonItem = [[UIBarButtonItem alloc] initWithCustomView:backButton];
        [backButton addTarget:self action:@selector(backButtonPressed) forControlEvents:UIControlEventTouchUpInside];
        self.navigationItem.leftBarButtonItem = backButtonItem;
        self.navigationItem.hidesBackButton = YES;
        
        //Done Button
        UIImage *doneButtonImage = [UIImage imageNamed:@"Btn-NavBar-Done.png"];
        UIButton *doneButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, doneButtonImage.size.width, doneButtonImage.size.height)];
        [doneButton setBackgroundImage:doneButtonImage forState:UIControlStateNormal];
        UIBarButtonItem *doneButtonItem = [[UIBarButtonItem alloc] initWithCustomView:doneButton];
        [doneButton addTarget:self action:@selector(doneButtonPressed) forControlEvents:UIControlEventTouchUpInside];
        self.navigationItem.rightBarButtonItem = doneButtonItem;

        TextFilterToolbar *toolbar = [[TextFilterToolbar alloc] initWithFrame:CGRectMake(0, bounds.size.height - STANDARD_NAVIGATION_BAR_HEIGHT - FILTER_TOOLBAR_HEIGHT, bounds.size.width, FILTER_TOOLBAR_HEIGHT)];
        [self.view addSubview:toolbar];
    }
    return self;
}

-(void)backButtonPressed
{
    [self.navigationController popViewControllerAnimated:YES];
}

-(void) doneButtonPressed
{
    NSLog(@"DONE BUTTON PRESSED");
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
