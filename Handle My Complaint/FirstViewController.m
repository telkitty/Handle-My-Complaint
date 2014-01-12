//
//  FirstViewController.m
//  Handle My Complaint
//
//  Created by Yi Zhang on 8/01/2014.
//  Copyright (c) 2014 HMC. All rights reserved.
//

#import "FirstViewController.h"
#import "Energy_Step2_Comp_Type_view.h"

@interface FirstViewController ()

@end

@implementation FirstViewController
@synthesize typeView;

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
    
    typeView = [[Energy_Step2_Comp_Type_view alloc] initWithNibName:@"Energy_Step2_Comp_Type_view" bundle:nil delegate:self];    
    [self.view addSubview:typeView.view];

 
}

@end
