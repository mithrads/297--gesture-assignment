//
//  RecognizerTableViewController.h
//  Recognizer
//
//  Created by Mithra Desinguraj on 11/2/16.
//
#import "RecognizerViewController.h"



@interface RecognizerViewController ()

@end

@implementation RecognizerViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
   // [self setModalPresentationStyle:UIModalPresentationCurrentContext];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)longPressDetected:(UIGestureRecognizer *)sender {
    _statusLabel.text = @"Long Press";
}

- (IBAction)LeftSwipe:(UISwipeGestureRecognizer *)sender {
}

- (IBAction)swipeDetected:(UIGestureRecognizer *)sender {
  
}

- (IBAction)tapDetected:(UIGestureRecognizer *)sender {
    UIAlertView *ContactInformation =[[UIAlertView alloc] initWithTitle: @"Contact help Desk" message:@"444 444 5555" delegate:self cancelButtonTitle:@"Done" otherButtonTitles: @"Call",nil];
        [ContactInformation show];
}


- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    
    // My OK button
    
    if (buttonIndex == alertView.cancelButtonIndex) {
        
        // Action to start the game again... (don't work)
        [self viewDidLoad];
        
    } else if (buttonIndex == alertView.firstOtherButtonIndex) {
        
        NSURL *pho_No = [NSURL URLWithString:[NSString stringWithFormat:@"tel:4084277465"]];
        
        if ([[UIApplication sharedApplication] canOpenURL:pho_No])
        {
            [[UIApplication sharedApplication] openURL:pho_No];
        }
        else
        {
            
        }
        
    }
    
}



- (IBAction)pinchDetected:(UIGestureRecognizer *)sender {

    CGFloat scale =
       [(UIPinchGestureRecognizer *)sender scale];
    CGFloat velocity =
       [(UIPinchGestureRecognizer *)sender velocity];

    NSString *resultString = [[NSString alloc] initWithFormat:
         @"Pinch - scale = %f, velocity = %f",
         scale, velocity];
    _statusLabel.text = resultString;
}

- (IBAction)rotationDetected:(UIGestureRecognizer *)sender {
    CGFloat radians =
          [(UIRotationGestureRecognizer *)sender rotation];
    CGFloat velocity =
          [(UIRotationGestureRecognizer *)sender velocity];

    NSString *resultString = [[NSString alloc] initWithFormat:
              @"Rotation - Radians = %f, velocity = %f",
              radians, velocity];
    _statusLabel.text = resultString;
}


@end
