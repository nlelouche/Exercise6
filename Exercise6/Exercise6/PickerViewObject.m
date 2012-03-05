//
//  PickerViewObject.m
//  Exercise6
//
//  Created by TPG on 3/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "PickerViewObject.h"

@implementation PickerViewObject
@synthesize myImageView;
@synthesize myLabel;
//@synthesize myPickerView;



- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return 3;
}

- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row 
          forComponent:(NSInteger)component reusingView:(UIView *)view{
    UIImage *i;
    switch (row) {
        case 0:
            i = [UIImage imageNamed:@"BeerIcon001.png"];
            break;
        case 1:
            i = [UIImage imageNamed:@"BeerIcon002.png"];
            break;
        case 2:
            i = [UIImage imageNamed:@"BeerIcon003.png"];
            break;
        default:
            i = [UIImage imageNamed:@"BeerIcon001.png"];
            break;
    }
    UIImageView *iv = [[UIImageView alloc] initWithImage:i];
    [iv autorelease];
    return iv;
}

-(CGFloat)pickerView:(UIPickerView *)pickerView
rowHeightForComponent:(NSInteger)component{
    return 110;
}
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row
       inComponent:(NSInteger)component{
    switch (row) {
        case 0:
            myImageView.image = [UIImage imageNamed:@"BeerIcon001.png"];
            myLabel.text = @"Porter";
            break;
        case 1:
            myImageView.image = [UIImage imageNamed:@"BeerIcon002.png"];
            myLabel.text = @"Lager";
            break;
        case 2:
            myImageView.image = [UIImage imageNamed:@"BeerIcon003.png"];
            myLabel.text = @"Pilsner";
            break;
        default:
            myImageView.image = [UIImage imageNamed:@"BeerIcon001.png"];
            myLabel.text = @"Porter";
            break;
    }
}


@end
