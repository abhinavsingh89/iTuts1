//
//  CodeBasedCell.m
//  MyFirstApp
//
//  Created by Abhinav Singh on 2013-05-18.
//  Copyright (c) 2013 MontrealColg. All rights reserved.
//

#import "CodeBasedCell.h"

@implementation CodeBasedCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        self.myCodeBasedLbl = [[UILabel alloc] init];
        self.myCodeBasedLbl.frame = CGRectMake(10, 10, 300, 40);
        [self addSubview:self.myCodeBasedLbl];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
