//
//  FirstTableViewViewController.m
//  MyFirstApp
//
//  Created by Abhinav Singh on 2013-05-04.
//  Copyright (c) 2013 MontrealColg. All rights reserved.
//

#import "FirstTableViewViewController.h"
#import "MyFirstDefaultCell.h"

@interface FirstTableViewViewController ()

@end

@implementation FirstTableViewViewController

@synthesize recvdValue;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    dataArray = [[NSArray alloc] initWithObjects:@"ABC", @"DEF", @"GHI", @"JKL", @"MNO", nil];
    txtFld.delegate = self;
    
    NSLog(@"%@",self.recvdValue);

}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return [NSString stringWithFormat:@"Section %d", section];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 85.0;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
{
    return [dataArray count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString* identifier = @"MyDefaultCell";
    MyFirstDefaultCell* cell;
    
    cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    if(cell == nil)
        cell = [MyFirstDefaultCell createCell];
    
    cell.lbl1.text = [dataArray objectAtIndex:indexPath.row];
    cell.imgView.image = [UIImage imageNamed:@"bg_tile.png"];
    cell.lbl2.text = @"This is the label 2";
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"%d",indexPath.row);
}
    

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if([textField tag] == 1)
    {
        [txtField2 becomeFirstResponder];
    }
    if([textField tag] == 2)
        [textField resignFirstResponder];
   
    NSLog(@"Return Key Pressed");
    return YES;
}



@end
