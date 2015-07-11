//
//  EmployeeView.m
//  MVC
//
//  Created by Asif Noor on 9/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "EmployeeView.h"

#import <QuartzCore/QuartzCore.h>
#define FirstRowX 163
#define FirstRowY 15
#define LabelWidth 225
#define LabelHeight 40 
#define IconWidth 12
#define IconHeight 12
#define SecondRowX 413
@implementation EmployeeView

@synthesize displayPhotoBtn,
            profileImageView,
            comboAgeAndGenderLabel,
            addressLabel,
            dobLabel,
            phoneLabel,
            nameLabel,
            ageLabel,
            dramaLabel,
            heading,
            personalLifeLable,tblDramas;
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
        profileImageView = [[UIImageView alloc] initWithFrame:CGRectMake(10, FirstRowY,143 ,150)];
        profileImageView.layer.borderColor = [UIColor grayColor].CGColor;
        profileImageView.layer.borderWidth = 7.0;
        profileImageView.userInteractionEnabled = TRUE;
        profileImageView.hidden = YES;
        [self addSubview:profileImageView];
        [profileImageView release];
        
        CGRect nameRect = CGRectMake(10, FirstRowY+160,LabelWidth-100, LabelHeight-10);;
        self.displayPhotoBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        displayPhotoBtn.frame = nameRect;
        [displayPhotoBtn setTitle:@"Show Employee Info" forState:UIControlStateNormal];
        displayPhotoBtn.titleLabel.font = [UIFont systemFontOfSize:10];
        displayPhotoBtn.backgroundColor = [UIColor grayColor];
        [self addSubview:displayPhotoBtn];
        [displayPhotoBtn release];
        
        nameRect =   CGRectMake(FirstRowX+40, FirstRowY, LabelWidth, LabelHeight-10);
        nameLabel = [[UILabel alloc] initWithFrame:nameRect];
        nameLabel.textColor = [UIColor blueColor];
        nameLabel.font = [UIFont boldSystemFontOfSize:20.0];
        [self addSubview:nameLabel];
        [nameLabel release];
        
        
        CGRect comboRect =   CGRectMake(FirstRowX+40, FirstRowY+30, LabelWidth-50, LabelHeight-10);
        comboAgeAndGenderLabel = [[UILabel alloc] initWithFrame:comboRect];
        
        [self addSubview:comboAgeAndGenderLabel];
        [comboAgeAndGenderLabel release];
        
        comboRect =   CGRectMake(FirstRowX+40, FirstRowY+70, LabelWidth-50, LabelHeight-10);
        [dobLabel setBackgroundColor:[UIColor blueColor]];
        dobLabel = [[UILabel alloc] initWithFrame:comboRect];
        [self addSubview:dobLabel];
        [dobLabel release];
        
        //second columns
        comboRect =   CGRectMake(400, FirstRowY+30, LabelWidth, LabelHeight-10);
        
        addressLabel = [[UILabel alloc] initWithFrame:comboRect];
        [self addSubview:addressLabel];
        [addressLabel release];
        
        comboRect =   CGRectMake(SecondRowX+40, FirstRowY+70, LabelWidth, LabelHeight-10);
        phoneLabel = [[UILabel alloc] initWithFrame:comboRect];
        [self addSubview:phoneLabel];
        [phoneLabel release];
        
        comboRect =   CGRectMake(FirstRowX+40, FirstRowY+120, LabelWidth, LabelHeight-10);
        heading = [[UILabel alloc ] initWithFrame:comboRect];
        heading.text = @"Personal Life";
        heading.hidden = true;
        heading.textColor = [UIColor blueColor];
        [self addSubview:heading];
        [heading release];
        
        comboRect =   CGRectMake(FirstRowX+40, FirstRowY+150, 500, 150);
        personalLifeLable = [[UILabel alloc] initWithFrame:comboRect];

        personalLifeLable.numberOfLines = 0;
        [self addSubview:personalLifeLable];
        [personalLifeLable release];
        
        comboRect =   CGRectMake(20, FirstRowY+300, LabelWidth-50, LabelHeight-10);
        dramaLabel = [[UILabel alloc ] initWithFrame:comboRect];
        dramaLabel.text = @"Career";
        dramaLabel.hidden = YES;
        dramaLabel.textColor = [UIColor blackColor];
        [self addSubview:dramaLabel];
        [dramaLabel release];
        
        comboRect =   CGRectMake(20, FirstRowY+350, 750, 700);
        tblDramas = [[UITableView alloc] initWithFrame:comboRect style:UITableViewStylePlain];
        [self addSubview:tblDramas];
        [tblDramas release];

        
        
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
