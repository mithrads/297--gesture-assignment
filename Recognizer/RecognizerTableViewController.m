//
//  RecognizerTableViewController.m
//  Recognizer
//
//  Created by Mithra Desinguraj on 11/2/16.
//

#import "RecognizerTableViewController.h"

@interface RecognizerTableViewController ()

@end

@implementation RecognizerTableViewController
NSArray *tableData;
  NSArray *thumbnails;

- (void)viewDidLoad {
    [super viewDidLoad];
    tableData = [NSArray arrayWithObjects:@"Amazon Echo Dot $49.99", @"Roku-Streaming Stick  $39.99",@"Beats Headphones  $79.99",@"Apple IPad Mini $219.99",nil];
    thumbnails = [NSArray arrayWithObjects:@"1.png",@"2.jpg",@"3.png",@"4.png",nil];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tableData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"saleitems";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [tableData objectAtIndex:indexPath.row];
    cell.imageView.image = [UIImage imageNamed:[thumbnails objectAtIndex:indexPath.row]];
    return cell;
}



- (IBAction)close:(id)sender {
       [self dismissViewControllerAnimated:YES completion:Nil];
}
@end
