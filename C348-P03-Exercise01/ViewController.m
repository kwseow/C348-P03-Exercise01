//
//  ViewController.m
//  C348-P03-Exercise01
//
//  Created by Seow Khee Wei (RP) on 3/11/14.
//  Copyright (c) 2014 Republic Polytechnic. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *outLblA;
@property (weak, nonatomic) IBOutlet UILabel *outLblB;
@property (weak, nonatomic) IBOutlet UILabel *outLblC;
@property (weak, nonatomic) IBOutlet UISlider *outSlider;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)SegControlChanged:(UISegmentedControl *)sender {
    
    NSInteger ind = [sender selectedSegmentIndex];
    double sliderValue = [[self outSlider] value];
    NSString *tempStr = [NSString stringWithFormat:@"The slider is set at %f", sliderValue];

    UILabel *tempLbl;
    if (ind==0){
        tempLbl = [self outLblA];
    }else if (ind==1){
        tempLbl = [self outLblB];
    }
    else {
        tempLbl = [self outLblC];
    }
    [tempLbl setText:tempStr];
    
    
}

@end
