//
//  ProductDetail.m
//  Shop
//
//  Created by Sanjeev Verma on 3/15/13.
//  Copyright (c) 2013 Adobe. All rights reserved.
//

#import "ProductDetail.h"
#import "RootViewController.h"
#import "Payment.h"

@interface ProductDetail ()

@end

@implementation ProductDetail
@synthesize proImageString,proLabelString,proPriceString,proCategoryString;
@synthesize nextCount;
- (IBAction)buyNow:(id)sender {
    Payment *pay = [[Payment alloc] initWithNibName:@"Payment" bundle:nil];
    
    [self.navigationController pushViewController:pay animated:YES];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (IBAction)pressNext:(id)sender {
    if(nextCount == 1) {
        NSLog(self.proImageString);
    if(self.proImageString==@"sweater.png")
    {
    self.proImageString = @"sweater1.png";
    self.proLabelString=@"Brooklyn";
    self.proCategoryString=@"Men's Winter Coat";
    self.proPriceString=@"$ 300";
    }
        else if(self.proImageString==@"jacket.png")
        {
            self.proImageString = @"jacket1.png";
            self.proCategoryString = @"Down Jacket";
            self.proLabelString=@"El Gordo";
            self.proPriceString=@"$ 350";
        }
        else if(self.proImageString==@"shirt.png")
        {
            self.proImageString = @"shirt1.png";
            self.proLabelString=@"Louis Philiphe";
            self.proPriceString=@"3500 Rupees";
        }
        else
        {
            self.proImageString = @"jean1.png";
            self.proLabelString=@"Levis";
            self.proPriceString=@"4000 Rupees";
        }
    
    self.viewDidLoad;
    nextCount++;
    }
    else {
    //RootViewController *root = [[RootViewController alloc] initWithNibName:@"RootViewController" bundle:nil];
          nextCount = 1;
    [self.navigationController popToRootViewControllerAnimated:YES];
    }
    
    //self.parentViewController.viewDidLoad;
}

- (void)viewDidLoad
{
    proImage.image = [UIImage imageNamed:proImageString];
    proLable.text=proLabelString;
    proPrice.text=proPriceString;
    proCategory.text=proCategoryString;
    nextCount = 1;

    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
