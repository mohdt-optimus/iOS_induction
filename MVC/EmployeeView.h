//
//  EmployeeView.h
//  MVC
//
//  Created by Asif Noor on 9/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EmployeeView : UIView {
    UILabel *ageLabel;
    UILabel *phoneLabel;
    UILabel *nameLabel;
    UILabel *genderLabel;
    UILabel *dobLabel;
    UILabel *addressLabel;
    UILabel *comboAgeAndGenderLabel;
    UIButton *displayPhotoBtn;
    UIImageView *profileImageView;
    UILabel *personalLifeLable;
    UITableView *tblDramas;
    UILabel *dramaLabel;
    UILabel *heading;
}
@property (nonatomic,retain) UIButton *displayPhotoBtn;
@property (nonatomic,retain) UIImageView *profileImageView;
@property (nonatomic,retain) UILabel *comboAgeAndGenderLabel;
@property (nonatomic,retain) UILabel *addressLabel;
@property (nonatomic,retain) UILabel *dobLabel;
@property (nonatomic,retain) UILabel *phoneLabel;
@property (nonatomic,retain) UILabel *nameLabel;
@property (nonatomic,retain) UILabel *ageLabel;
@property (nonatomic,retain) UILabel *personalLifeLable;
@property (nonatomic,retain) UILabel *dramaLabel;
@property (nonatomic,retain) UILabel *heading;
@property (nonatomic,retain)    UITableView *tblDramas;
@end
