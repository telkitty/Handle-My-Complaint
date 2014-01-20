//
//  Energy_Step2b_Conn_Disconn.h
//  Handle My Complaint
//
//  Created by Yi Zhang on 14/01/2014.
//  Copyright (c) 2014 HMC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Energy_Step2b_Conn_Disconn : UIViewController
{
    IBOutlet UITableView *tableView;
    NSArray *m_ConnDisconnCategories;
    NSMutableArray *selected;
    
}

@property (nonatomic, retain) UITableView *tableView;
@property (nonatomic, retain) NSArray *m_ConnDisconnCategories;
@property (nonatomic, retain) NSMutableArray *selected;


-(IBAction)backButtonPressed:(id)sender;
-(IBAction)nextButtonPressed:(id)sender;
-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil delegate:(id)aDelegate;


@end
