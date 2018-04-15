//
//  ViewController.m
//  TKTableViewWIthSelectionBtn
//
//  Created by Tushar Kolhe on 15/04/18.
//  Copyright © 2018 Tushar Kolhe. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSMutableArray *selected_ids,*selected_nurse;
}
@end

@implementation ViewController
@synthesize users,arrayOfSelectedIndex,showBtnStatus,userId;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    users =[NSMutableArray arrayWithObjects:@"Shital",@"Minal",@"Komal",@"Mohini",@"Rajni",@"Varsha",@"Anamika",nil];
    userId =[NSMutableArray arrayWithObjects:@"0",@"1",@"2",@"3",@"4",@"5",@"6",nil];
    
    NSLog(@"Array %@",users);
    
    selected_ids = [[NSMutableArray alloc]init];
    selected_nurse = [[NSMutableArray alloc]init];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;    //count of section
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [users count];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        cell.textLabel.text = [users objectAtIndex:indexPath.row];
        
    }
    
    return cell;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
   
    
    return 70;
    // return the height of the particular row in the table view
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    
    NSString *nurseString = [users objectAtIndex:indexPath.row];
    NSString *idString = [userId objectAtIndex:indexPath.row];
    
    
    if (cell.accessoryType == UITableViewCellAccessoryCheckmark) {
        [selected_ids removeObject:idString];
        
        [selected_nurse removeObject:nurseString];
        NSLog(@"%@",selected_nurse);
        
        NSLog(@"%@",selected_ids);
        NSString *greeting = [selected_ids componentsJoinedByString:@"|"];
        NSLog(@"%@",greeting);
        
        
        cell.accessoryType = UITableViewCellAccessoryNone;
        
    } else {
        [selected_ids addObject:idString];
        
        [selected_nurse addObject:nurseString];
        NSLog(@"%@",selected_nurse);
        
        NSLog(@"%@",selected_ids);
        NSString *greeting = [selected_ids componentsJoinedByString:@"|"];
        NSLog(@"%@",greeting);
        
        
        cell.accessoryType=UITableViewCellAccessoryCheckmark;
    }
}


@end
