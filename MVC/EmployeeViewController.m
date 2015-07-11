//
//  EmployeeViewController.m
//  MVC
//
//  Created by Asif Noor on 9/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "EmployeeViewController.h"
#import "EmployeeView.h"
#import "DataModel.h"
#import "EmployeeInfo.h"
@interface EmployeeViewController ()

@end

@implementation EmployeeViewController

- (id)init
{
    self = [super init];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(void) loadView {
    
    [super loadView];
    
    
    
    
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    employeeView = [[EmployeeView alloc] initWithFrame:CGRectMake(0, 0, 768, 1024)];
    employeeView.tblDramas.delegate = self;
    employeeView.tblDramas.dataSource = self;
    employeeView.backgroundColor = [UIColor whiteColor];
    [employeeView.displayPhotoBtn addTarget:self action:@selector(showEmployeeDetail:) forControlEvents:UIControlEventTouchUpInside];
    
    self.view = employeeView;
    [employeeView release];
    
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

-(void) showEmployeeDetail : (id) sender {
    
    DataModel *manager = [DataModel manager];
    employeeInfo = [manager getEmployeeInfo];
    NSLog(@"name = %@,phone = %@",employeeInfo.name,employeeInfo.DOB);
    employeeView.dobLabel.text = [NSString stringWithFormat:@"DOB:%@",employeeInfo.DOB];
    employeeView.nameLabel.text = employeeInfo.name;
    employeeView.phoneLabel.text = [NSString stringWithFormat:@"Phone:%@",employeeInfo.phone];
    employeeView.addressLabel.text = [NSString stringWithFormat:@"Address:%@",employeeInfo.address];
    
    employeeView.profileImageView.image = [UIImage imageNamed:employeeInfo.photoPath];
    employeeView.comboAgeAndGenderLabel.text = [NSString stringWithFormat:@"%@,%@",employeeInfo.gender,employeeInfo.age];
    employeeView.personalLifeLable.text = employeeInfo.personalLife;
    employeeView.profileImageView.hidden = false;
    employeeView.heading.hidden = false;
    employeeView.dramaLabel.hidden = false;
    
    dramas = employeeInfo.careerArray;
    
    [employeeView.tblDramas reloadData];
    NSLog(@"rows:%d",[employeeInfo.careerArray count]);
    
}
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    cell.backgroundColor = [UIColor lightGrayColor];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return [employeeInfo.careerArray count];
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *myIdentifier= @"myIdentifier";
    UITableViewCell *cell= (UITableViewCell *)[tableView dequeueReusableCellWithIdentifier:myIdentifier];
    
    if (cell==nil) {
        
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:myIdentifier] autorelease];
        
    }
    NSLog(@"obj value : %@",[dramas objectAtIndex:indexPath.row]);
    cell.textLabel.text = [dramas objectAtIndex:indexPath.row];
    
    return cell;
    
    
}
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return UIInterfaceOrientationIsPortrait(interfaceOrientation);
}

@end
