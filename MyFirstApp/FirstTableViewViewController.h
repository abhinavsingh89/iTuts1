//
//  FirstTableViewViewController.h
//  MyFirstApp
//
//  Created by Abhinav Singh on 2013-05-04.
//  Copyright (c) 2013 MontrealColg. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstTableViewViewController : UIViewController<UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate>
{
    NSArray* dataArray;
    __weak IBOutlet UITableView *tblView;
    __weak IBOutlet UITextField *txtField2;
    __weak IBOutlet UITextField *txtFld;
}

@property(nonatomic, strong) NSString* recvdValue;

@end
