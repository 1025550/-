//
//  ViewController.m
//  反地理编码
//
//  Created by apple on 16/5/23.
//  Copyright © 2016年 SOBOOT. All rights reserved.
//

#import "ViewController.h"
#import <CoreLocation/CoreLocation.h>
@interface ViewController ()

//地址编码的对象
@property(nonatomic,strong)CLGeocoder *geocoder;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)reveserGeocode:(id)sender {
    
    //获取用户出入的经纬度
    NSString  *longtitude=self.longitude.text;
    NSString *latitude=self.latitude.text;
    
    if (longtitude.length==0||longtitude==nil||latitude.length==0||latitude==nil) {
        NSLog(@"请输入经纬度");
        return;
    }
    //2.根据用户出入的经纬度创建CLlocation对象
    CLLocation *locayion=[[CLLocation alloc]initWithLatitude:[latitude doubleValue] longitude:[longtitude doubleValue]];
    [self.geocoder reverseGeocodeLocation:locayion completionHandler:^(NSArray<CLPlacemark *> * _Nullable placemarks, NSError * _Nullable error) {
        for (CLPlacemark *place in placemarks) {
//            NSLog(@"城市:%@ 名字:%@ 经度:%f 纬度%f",place.name,place.addressDictionary,place.location.coordinate.longitude,place.location.coordinate.latitude);
            
            self.reverseDetailAddressLabel.text=place.locality;
            NSLog(@"1111111111");
            
        }
        
    }];
}

//懒加载
-(CLGeocoder *)geocoder{
    if (!_geocoder) {
        _geocoder=[[CLGeocoder alloc]init];
    }

    return _geocoder;
}
@end
