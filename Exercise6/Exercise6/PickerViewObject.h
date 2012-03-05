//
//  PickerViewObject.h
//  Exercise6
//
//  Created by TPG on 3/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PickerViewObject : NSObject <UIPickerViewDelegate, UIPickerViewDataSource>

@property (nonatomic, retain) UIImageView *myImageView;
@property (nonatomic, retain) UILabel *myLabel;
//@property (nonatomic, retain) UIPickerView *myPickerView;

@end
