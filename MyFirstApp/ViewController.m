//
//  ViewController.m
//  MyFirstApp
//
//  Created by Abhinav Singh on 2013-04-21.
//  Copyright (c) 2013 MontrealColg. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>

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
    /*NSLog(@"ViewDidLoad");
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
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(recvdNotif:) name:@"myFirstNotif" object:nil];
    
    [self mainBundleDemo];
    [self docsDirectoryDemo];*/
    
    NSString* docsPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    
    NSData* data = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://www.beatrunapp.com/kilorunxml/coverImages/KiloRunMusicCover@2x.png"]];
    
    NSString* filePath = [docsPath stringByAppendingFormat:@"/coverImage.png"];
    
    [data writeToFile:filePath atomically:YES];
    
    NSFileManager* fileMan = [[NSFileManager alloc] init];
    
    NSString* myFirstCustomDirectory = [docsPath stringByAppendingFormat:@"/CustomDirectory"];
    
    NSError* err = nil;
    
    BOOL flag = YES;
    
    if(![fileMan fileExistsAtPath:myFirstCustomDirectory isDirectory:&flag])
        [fileMan createDirectoryAtPath:myFirstCustomDirectory withIntermediateDirectories:NO attributes:nil error:&err];
    
    NSString* copiedFilePath = [myFirstCustomDirectory stringByAppendingFormat:@"/coverImage123.png"];

    
    [fileMan moveItemAtPath:filePath toPath:copiedFilePath error:&err];
    
    if([[NSUserDefaults standardUserDefaults] boolForKey:@"appFirstRun"] == NO)
    {
        NSLog(@"This is the first Run of application");
        [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"appFirstRun"];
        [[NSUserDefaults standardUserDefaults] setObject:@"Jason" forKey:@"name"];
        [[NSUserDefaults standardUserDefaults] setObject:@"jasonwang@gmail.com" forKey:@"email"];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
    
    NSLog(@"Email %@",[[NSUserDefaults standardUserDefaults] objectForKey:@"email"] );
    
}

-(void) mainBundleDemo
{
    NSString* bgTilePath = [[NSBundle mainBundle] pathForResource:@"bg_tile" ofType:@"png"];
    NSLog(@"bgTilePath %@", bgTilePath);
}

-(NSURL*) docsDirectoryDemo
{
    NSLog(@"Docs Directory path : %@", [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject]);
}


-(void) recvdNotif:(NSNotification*) notif
{
    NSArray* myRecvdArray = [notif object];
    NSLog(@"notif recvd :%@", myRecvdArray);
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
    
    NSString* path = [[NSBundle mainBundle] pathForResource:@"HallOfTheMountainKing" ofType:@"mp3"];
    
    NSURL* url = [NSURL URLWithString:path];
    
    NSError* err = nil;
    
    AVAudioPlayer* player = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&err];
    
    [player setVolume:1.0];
    [player play];
    
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
