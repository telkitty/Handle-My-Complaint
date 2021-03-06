//
//  Energy_Step2_Comp_Category_view.h
//  Handle My Complaint
//
//  Created by Yi Zhang on 9/01/2014.
//  Copyright (c) 2014 HMC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Energy_Step2_Comp_Category_view : UIViewController
{
    IBOutlet UITableView *tableView;
    NSArray *complaintCategory;
    NSMutableArray *selected;

}

@property (nonatomic, retain) UITableView *tableView;
@property (nonatomic, retain) NSArray *complaintCategory;
@property (nonatomic, retain) NSMutableArray *selected;


-(IBAction)backButtonPressed:(id)sender;
-(IBAction)nextButtonPressed:(id)sender;
-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil delegate:(id)aDelegate;


@end
