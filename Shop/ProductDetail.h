//
//  ProductDetail.h
//  Shop
//
//  Created by Sanjeev Verma on 3/15/13.
//  Copyright (c) 2013 Adobe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProductDetail : UIViewController {
    IBOutlet UIImageView *proImage;
    IBOutlet UILabel *proLable;
    IBOutlet UILabel *proPrice;
    NSString *proImageString;
    __weak IBOutlet UIButton *nextPro;
    NSString *proLabelString;
    NSString *proPriceString;
    int nextCount;
}
@property int nextCount;
@property (nonatomic) NSString *proImageString;
@property (nonatomic) NSString *proLabelString;
@property (nonatomic) NSString *proPriceString;

@end
