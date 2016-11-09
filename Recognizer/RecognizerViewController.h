//
//  RecognizerTableViewController.h
//  Recognizer
//
//  Created by Mithra Desinguraj on 11/2/16.
//

#import <UIKit/UIKit.h>

@interface RecognizerViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *statusLabel;
- (IBAction)tapDetected:(UITapGestureRecognizer *)sender;
- (IBAction)pinchDetected:(UIPinchGestureRecognizer *)sender;
- (IBAction)rotationDetected:(UIRotationGestureRecognizer *)sender;
- (IBAction)swipeDetected:(UISwipeGestureRecognizer *)sender;
- (IBAction)longPressDetected:(UILongPressGestureRecognizer *)sender;

- (IBAction)LeftSwipe:(UISwipeGestureRecognizer *)sender;

@end
