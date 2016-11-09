//
//  CouponsTableViewController.m
//  Recognizer
//
//  Created by Mithra Desinguraj on 11/3/16.
//

#import "CouponsTableViewController.h"

@interface CouponsTableViewController ()

@end

@implementation CouponsTableViewController
NSArray *Data;
NSArray *thumbnail;

- (void)viewDidLoad {
    [super viewDidLoad];
    Data = [NSArray arrayWithObjects:@"Save $1.00 on Ocean Spray",@"Save $1.00 on 5 Yoplait Greek Yogurt",@"Save $3.00 on Gillette",@"Save $3.00 on Venus",@"Save $1.00 on SnackWell's",nil];
    thumbnail = [NSArray arrayWithObjects:@"c1.png",@"c2.png",@"c3.png",@"c4.png",@"c5.png",nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [Data count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"coupons";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [Data objectAtIndex:indexPath.row];
    cell.imageView.image = [UIImage imageNamed:[thumbnail objectAtIndex:indexPath.row]];
    return cell;
}


- (IBAction)Close:(id)sender {
    [self dismissViewControllerAnimated:YES completion:Nil];
}
@end
