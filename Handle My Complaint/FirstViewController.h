//
//  FirstViewController.h
//  Handle My Complaint
//
//  Created by Yi Zhang on 8/01/2014.
//  Copyright (c) 2014 HMC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Energy_Step2_Comp_Type_view.h"

@interface FirstViewController : UIViewController
{
    Energy_Step2_Comp_Type_view *typeView;
}

@property (retain, nonatomic) Energy_Step2_Comp_Type_view *typeView;
-(IBAction)energyButtonPressed:(id)sender;

@end
