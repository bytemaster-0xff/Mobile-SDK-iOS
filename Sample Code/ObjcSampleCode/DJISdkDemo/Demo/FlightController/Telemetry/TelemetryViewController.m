//
//  TelemetryViewController.m
//  DJISdkDemo
//
//  Created by Kevin D. Wolf on 4/29/18.
//  Copyright © 2018 DJI. All rights reserved.
//

#import "TelemetryViewController.h"
#import <Foundation/Foundation.h>
#import "DemoComponentHelper.h"
#import "DemoAlertView.h"
#import <DJISDK/DJISDK.h>

@interface TelemetryViewController () <DJIFlightControllerDelegate>

@property (weak, nonatomic) IBOutlet UILabel *headingLabel;
@property (weak, nonatomic) IBOutlet UILabel *calibratingLabel;
@property (weak, nonatomic) IBOutlet UILabel *statusLabel;
@end

@implementation TelemetryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    //DJIFlightController* fc = [DemoComponentHelper fetchFlightController];
    //if (fc) {
      //  fc.delegate = self;
   // }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)flightController:(DJIFlightController *)fc didUpdateState:(DJIFlightControllerState *)state {
    self.headingLabel.text = [NSString stringWithFormat:@"%0.1f", fc.compass.heading];
}
@end
