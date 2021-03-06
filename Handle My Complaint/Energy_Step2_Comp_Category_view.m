//
//  Energy_Step2_Comp_Category_view.m
//  Handle My Complaint
//
//  Created by Yi Zhang on 9/01/2014.
//  Copyright (c) 2014 HMC. All rights reserved.
//

#import "Energy_Step2_Comp_Category_view.h"
#import "Energy_Step2a_Billing_Account_View.h"
#import "Energy_Step2b_Conn_Disconn.h"

@interface Energy_Step2_Comp_Category_view ()
//@interface Energy_Step2_Comp_Category_view ()

@end

@implementation Energy_Step2_Comp_Category_view
@synthesize tableView;
@synthesize complaintCategory;
@synthesize selected;

const NSInteger CAT_DESCRIPTION_LABEL_TAG = 10000;
const NSInteger CAT_IMAGE_TAG = 10001;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        complaintCategory = @[@"Issue with Bill or Account",
                              @"Service Connection or Disconnection",
                              @"Paying a Bill",
                              @"Sales, Marketing or Door-knocking",
                              @"Problem with Meter",
                              @"Solar or Green Energy",
                              @"Other"
                              ];
        
        selected = [[NSMutableArray alloc] init];
    }
    return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil delegate:(id)aDelegate {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
        //        delegate = aDelegate;
        
        complaintCategory = @[@"Issue with Bill or Account",
                              @"Service Connection or Disconnection",
                              @"Paying a Bill",
                              @"Sales, Marketing or Door-knocking",
                              @"Problem with Meter",
                              @"Solar or Green Energy",
                              @"Other"
                              ];
        
    selected = [[NSMutableArray alloc] init];
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)nextButtonPressed:(id)sender;
{
    int choice = [[selected objectAtIndex:0] intValue];
    if(choice == 0)
    {
        Energy_Step2a_Billing_Account_View *billAccountView = [[Energy_Step2a_Billing_Account_View alloc] initWithNibName:@"Energy_Step2a_Billing_Account_View" bundle:nil];
        [self.view addSubview:billAccountView.view];
    }
    
    else if(choice == 1)
    {
        Energy_Step2b_Conn_Disconn *connDisconnView = [[Energy_Step2b_Conn_Disconn alloc] initWithNibName:@"Energy_Step2b_Conn_Disconn" bundle:nil];
        [self.view addSubview:connDisconnView.view];
    }
    
/*
     switch (choice)
     {
     case 0:
     Energy_Step2a_Billing_Account_View *billAccountView = [[Energy_Step2a_Billing_Account_View alloc] initWithNibName:@"Energy_Step2a_Billing_Account_View" bundle:nil];
     [self.view addSubview:billAccountView.view];
     break;
     case 1:
    Energy_Step2b_Conn_Disconn *connDisconnView = [[Energy_Step2b_Conn_Disconn alloc] initWithNibName:@"Energy_Step2b_Conn_Disconn" bundle:nil];
    [self.view addSubview:connDisconnView.view];

             
     break;
     case 2:
     NSLog (@"two");
     break;
     case 3:
     NSLog (@"three");
     break;
     case 4:
     NSLog (@"four");
     break;
     case 5:
     NSLog (@"five");
     break;
     default:
     NSLog (@"Integer out of range");
     break;
     }
*/

}

- (NSInteger)tableView:(UITableView *)tableView numberOfSectionsInTableView:(UITableView *)tView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 7;
}

- (UITableViewCell *)tableView:(UITableView *)myTableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{

    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    
    static NSString *SimpleTableIdentifier = @"List Table";
    
    NSUInteger row = [indexPath row];
    UILabel *descriptionLabel;
    UIImageView *checked;

    descriptionLabel =[[UILabel alloc] initWithFrame:CGRectMake(10,5,300,30)];
    
    NSString *description = [complaintCategory objectAtIndex: row];
    descriptionLabel.text = description;
    descriptionLabel.tag = CAT_DESCRIPTION_LABEL_TAG;
    [cell.contentView addSubview:descriptionLabel];
    
    descriptionLabel.font = [UIFont fontWithName:@"HelveticaNeue-Light" size:15.0f];

    UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(250, 5, 25, 25)];
    imageView.tag=CAT_IMAGE_TAG;
    UIImage *image = [UIImage imageNamed:@"Check-icon.png"];
    [imageView setImage:image];
    [cell.contentView addSubview:imageView];
    [imageView setHidden:YES];
    
    return cell;
}


- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath: (NSIndexPath *) indexPath
{
    return 35;
}



- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
  
    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0,0,tableView.frame.size.width,5)];
    return headerView;
    
}

-(float)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    
    return  0.0;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    UIImageView *imageView = (UIImageView *)[cell.contentView viewWithTag:CAT_IMAGE_TAG];
    
    if(imageView.hidden == YES)
    {
        [selected addObject:[NSNumber numberWithInteger:indexPath.row]];
        [imageView setHidden:NO];
    }
    else
    {
        [imageView setHidden:YES];
        [selected removeObject:[NSNumber numberWithInteger:indexPath.row]];
    }
}

-(IBAction)backButtonPressed:(id)sender
{
    [self.view removeFromSuperview];
}




@end
