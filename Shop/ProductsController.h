//
//  ProductsController.h
//  Shop
//
//  Created by Sanjeev Verma on 3/15/13.
//  Copyright (c) 2013 Adobe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProductsController : UITableViewController
{
    NSMutableArray *men;
    NSMutableArray *women;
    int proInt;
    
}
@property int proInt;
-(void) makeData;
@end
