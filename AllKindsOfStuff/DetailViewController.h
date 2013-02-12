//
//  DetailViewController.h
//  AllKindsOfStuff
//
//  Created by Mike Petrogeorge on 2/5/13.
//  Copyright (c) 2013 org.petrogeorge. All rights reserved.
//

#import <UIKit/UIKit.h>
#define kSwitchesSegmentIndex    0

@interface DetailViewController : UIViewController

@property (strong, nonatomic) NSString *detailItem;
@property (strong, nonatomic) NSString *backGroundColor;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@property (weak, nonatomic) IBOutlet UIButton *daButton;
@property (weak, nonatomic) IBOutlet UIDatePicker *uiDatePicker;
@property (weak, nonatomic) IBOutlet UISegmentedControl *uiSegmentCntl;
@property (weak, nonatomic) IBOutlet UISwitch *uiSwitch;

- (IBAction) buttonPressed:(UIButton*)sender;
- (IBAction)toggleControls:(id)sender;
- (IBAction) switchChanged:(id)sender;

@end
