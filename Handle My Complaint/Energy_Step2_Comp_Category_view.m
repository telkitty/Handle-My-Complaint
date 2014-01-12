//
//  Energy_Step2_Comp_Type_view.m
//  Handle My Complaint
//
//  Created by Yi Zhang on 9/01/2014.
//  Copyright (c) 2014 HMC. All rights reserved.
//

#import "Energy_Step2_Comp_Type_view.h"
#import "Energy_Step2a_Billing_Account_View.h"

@interface Energy_Step2_Comp_Type_view ()

@end

@implementation Energy_Step2_Comp_Type_view
@synthesize tableView;
@synthesize complaintCategory;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        complaintCategory = @[@"Issue with Bill or Account",
                              @"Service Connection or Disconnection",
                              @"Problem with Meter",
                              @"Paying a Bill",
                              @"Sales, Marketing or Door-knocking",
                              @"Solar or Green Energy",
                              @"Other"
                              ];
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
                              @"Problem with Meter",
                              @"Paying a Bill",
                              @"Sales, Marketing or Door-knocking",
                              @"Solar or Green Energy",
                              @"Other"
                              ];
        
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
    Energy_Step2a_Billing_Account_View *billAccountView = [[Energy_Step2a_Billing_Account_View alloc] initWithNibName:@"Energy_Step2a_Billing_Account_View" bundle:nil];
    [self.view addSubview:billAccountView.view];
    
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
    const NSInteger DESCRIPTION_LABEL_TAG = 10000;
    
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    
    static NSString *SimpleTableIdentifier = @"List Table";
    
    NSUInteger row = [indexPath row];
    UILabel *descriptionLabel;

    descriptionLabel =[[UILabel alloc] initWithFrame:CGRectMake(10,5,300,30)];
    
    NSString *description = [complaintCategory objectAtIndex: row];
    descriptionLabel.text = description;
    descriptionLabel.tag = DESCRIPTION_LABEL_TAG;
    [cell.contentView addSubview:descriptionLabel];
    
    descriptionLabel.font = [UIFont fontWithName:@"HelveticaNeue-Light" size:15.0f];
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
/*
    NSUInteger row = [indexPath row];
    MapAnnotation *currentAnnotation =  [listData objectAtIndex:row];
    
    if(currentAnnotation.title == @"Current Location" || currentAnnotation.title == @"Specified Location"
       || currentAnnotation.title == @"Start Location" || currentAnnotation.title == @"End Location")
    {
        return;
    }
    NSError* errorStr = nil;
    NSString* subtitle = currentAnnotation.subtitle;
    NSString *reference = currentAnnotation.reference;
    NSString *detailString = [NSString stringWithFormat:@"https://maps.googleapis.com/maps/api/place/details/json?reference="];
    detailString = [detailString stringByAppendingString:reference];
    detailString = [detailString stringByAppendingString:@"&sensor=true&key="];
    detailString = [detailString stringByAppendingString:key];
    
    NSString* query = [NSString stringWithContentsOfURL:[NSURL URLWithString:detailString] encoding:NSUTF8StringEncoding error:&errorStr];
    
    NSData *resultJson = [query dataUsingEncoding:NSUTF8StringEncoding];
    
    
    if( query )
    {
        CJSONDeserializer *jsonDeserializer = [CJSONDeserializer deserializer];
        NSError *error;
        NSDictionary *resultsDictionary = [jsonDeserializer deserializeAsDictionary:resultJson error:&error];
        
        if (resultsDictionary) {
            NSDictionary* result = [resultsDictionary objectForKey:@"result"];
            
            NSString* phone = [result objectForKey:@"international_phone_number"];
            NSString* web = nil;
            web = [result objectForKey:@"website"];
            if(web == nil || web.length == 0)
                web = [result objectForKey:@"url"];
            
            detailView  = [[DetailView alloc] initWithNibName:@"DetailView" bundle:nil delegate:self Annotation:currentAnnotation];
            
            detailView.nameStr = currentAnnotation.title;
            detailView.addressStr = currentAnnotation.subtitle;
            detailView.phoneStr = phone;
            
            NSString *encodedString = [web stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
            detailView.websiteStr =[web stringByAddingPercentEscapesUsingEncoding:
                                    NSUTF8StringEncoding];
            
            detailView.shouldAlert = currentAnnotation.shouldAlert;
            
        }
    }
    else
    {
        printf("Error = %s", [errorStr userInfo]);
    }
    [self loadDetails];
    [detailView repositionButtons];
*/
}



@end
