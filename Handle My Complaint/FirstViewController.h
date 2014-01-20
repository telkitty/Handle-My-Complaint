//
//  FirstViewController.h
//  Handle My Complaint
//
//  Created by Yi Zhang on 8/01/2014.
//  Copyright (c) 2014 HMC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Energy_Step2_Comp_Category_view.h"

@interface FirstViewController : UIViewController
{
    Energy_Step2_Comp_Category_view *categoryView;
}

@property (retain, nonatomic) Energy_Step2_Comp_Category_view *categoryView;
-(IBAction)energyButtonPressed:(id)sender;

@end
