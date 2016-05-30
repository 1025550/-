//
//  ViewController.h
//  反地理编码
//
//  Created by apple on 16/5/23.
//  Copyright © 2016年 SOBOOT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *longitude;

@property (weak, nonatomic) IBOutlet UITextField *latitude;

@property (weak, nonatomic) IBOutlet UILabel *reverseDetailAddressLabel;

- (IBAction)reveserGeocode:(id)sender;


@end

