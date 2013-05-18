//
//  MyFirstDefaultCell.h
//  MyFirstApp
//
//  Created by Abhinav Singh on 2013-05-11.
//  Copyright (c) 2013 MontrealColg. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyFirstDefaultCell : UITableViewCell
@property (weak, nonatomic) UILabel *lbl1;
@property (weak, nonatomic) UILabel *lbl2;
@property (weak, nonatomic) UIImageView *imgView;


+ (id) createCell;

 @end
