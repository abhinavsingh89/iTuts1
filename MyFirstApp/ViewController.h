//
//  ViewController.h
//  MyFirstApp
//
//  Created by Abhinav Singh on 2013-04-21.
//  Copyright (c) 2013 MontrealColg. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FirstTableViewViewController.h"


@interface ViewController : UIViewController <UITextFieldDelegate>
{
    IBOutlet UILabel* _lbl;
    __weak IBOutlet UITextField *done;
}

-(IBAction)btnTapped:(id)sender;

@end
