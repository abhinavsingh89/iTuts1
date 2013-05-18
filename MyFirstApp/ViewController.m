//
//  ViewController.m
//  MyFirstApp
//
//  Created by Abhinav Singh on 2013-04-21.
//  Copyright (c) 2013 MontrealColg. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>
#import <MediaPlayer/MediaPlayer.h>

@interface ViewController ()

@end

@implementation ViewController

-(void) viewWillAppear:(BOOL)animated
{
    NSLog(@"ViewWillAppear");
}

-(void) viewDidAppear:(BOOL)animated
{
    NSLog(@"ViewDidAppear");
}

-(void) viewWillDisappear:(BOOL)animated
{
    NSLog(@"viewWillDisappear");

}

-(void) viewDidDisappear:(BOOL)animated
{
    NSLog(@"viewDidDisappear");

}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"ViewDidLoad");
    [_lbl setText:@"ABC"];
	// Do any additional setup after loading the view, typically from a nib.
    [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"bg_tile.png"]]];
    
    UILabel* lbl = [[UILabel alloc] init];
    lbl.frame = CGRectMake(10, 90, 300, 50);
    lbl.text = @"Hello! How are you?";
    [self.view addSubview:lbl];
    
    NSMutableArray* string = [[NSMutableArray alloc] initWithObjects:@"ABC", @"DEF", @"GHI", @"JKL", nil];
    
    NSArray* key = [NSArray arrayWithObjects:@"Key1", @"Key2", @"Key3", @"Key4", nil];
    
    NSDictionary* dic = [[NSDictionary alloc] initWithObjects:string forKeys:key];
    
    for(int i = 0; i< [string count]; i++)
    {
       // NSLog(@"%@ ",[string objectAtIndex:i]);
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)btnTapped:(id)sender
{
    NSLog(@"Btn Tapped");
    
    UIAlertView* alertView = [[UIAlertView alloc] initWithTitle:@"MyFirstApp" message:@"Do you want to present View Controller" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Ok", nil];
    [alertView show];
    
}

-(void) returnTheValue:(NSString*)str andAnother:(NSString*)str2
{
    NSLog(@"Rcvd at Obj-A Str : %@",str);
    NSLog(@"Rcvd at Obj-A Str2: %@", str2);
}

-(void) returnNewValues:(NSString *)newValue
{
    NSLog(@"Rcvd new value %@",newValue);
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if(buttonIndex == 0)
    {
        NSLog(@"Cancel Pressed");
    }
    if(buttonIndex == 1)
    {
        NSLog(@"Ok Pressed");
        FirstTableViewViewController* tblView = [[FirstTableViewViewController alloc] initWithNibName:@"FirstTableViewViewController" bundle:nil];
//        [self presentViewController:tblView animated:YES completion:nil];
        
        tblView.recvdValue = @"Jason";
        [self.navigationController pushViewController:tblView animated:YES];
        

        
    }
}


@end
