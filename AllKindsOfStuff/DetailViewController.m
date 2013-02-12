//
//  DetailViewController.m
//  AllKindsOfStuff
//
//  Created by Mike Petrogeorge on 2/5/13.
//  Copyright (c) 2013 org.petrogeorge. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
- (void)configureView;
@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
        if([self.detailItem isEqualToString:@"Yellow"])
            self.view.backgroundColor = [UIColor yellowColor];
        
        if([self.detailItem isEqualToString:@"Red"])
            self.view.backgroundColor = [UIColor redColor];
  
        if([self.detailItem isEqualToString:@"Blue"])
            self.view.backgroundColor = [UIColor blueColor];
  
        if([self.detailItem isEqualToString:@"Green"])
            self.view.backgroundColor = [UIColor greenColor];
        
        
        
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _uiDatePicker.accessibilityLabel = @"datePicker";
    _uiDatePicker.accessibilityIdentifier = @"datePicker";
    _uiDatePicker.enabled = YES;
    _uiDatePicker.accessibilityValue  = @"datePicker";

    _uiSwitch.accessibilityLabel = @"uiSwitch";
    _uiSwitch.accessibilityIdentifier = @"uiSwitch";
    _uiSwitch.accessibilityValue  = @"uiSwitch";
    _uiSwitch.enabled = YES;
    
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction) buttonPressed:(UIButton*)sender
{
    _detailDescriptionLabel.text = sender.titleLabel.text;
}

- (IBAction)toggleControls:(id)sender {
    
    if ([sender selectedSegmentIndex] == kSwitchesSegmentIndex)
    {
        _detailDescriptionLabel.text = @"First";
    }
    else
    {
        _detailDescriptionLabel.text = @"Second";
        
    }
}
- (IBAction) switchChanged:(id)sender {
    
    UISwitch  *daSwitch = (UISwitch *)sender;
    if(daSwitch.isOn)
        _detailDescriptionLabel.text = @"ON";
    else
        _detailDescriptionLabel.text = @"Off";
}


@end
