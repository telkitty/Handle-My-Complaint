//
//  FirstViewController.m
//  Handle My Complaint
//
//  Created by Yi Zhang on 8/01/2014.
//  Copyright (c) 2014 HMC. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController
@synthesize categoryView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)energyButtonPressed:(id)sender;
{
//    typeView = [[Energy_Step2_Comp_Type_view alloc] initWithNibName:@"Energy_Step2_Comp_Type_view" bundle:nil];
    
    categoryView = [[Energy_Step2_Comp_Category_view alloc] initWithNibName:@"Energy_Step2_Comp_Type_view" bundle:nil delegate:self];
    [self.view addSubview:categoryView.view];

 
}

@end
