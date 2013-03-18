//
//  Payment.m
//  Shop
//
//  Created by Sanjeev Verma on 3/17/13.
//  Copyright (c) 2013 Adobe. All rights reserved.
//

#import "Payment.h"
#import "ThankPage.h"
@interface Payment ()

@end

@implementation Payment
@synthesize cardno;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    [self setTitle:@"Credit Card Details"];
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)proceedEvent:(id)sender {
    ThankPage *thank = [[ThankPage alloc]initWithNibName:@"ThankPage" bundle:nil];
    [self.navigationController pushViewController:thank animated:YES];
}
- (IBAction)cancelEvent:(id)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (void)viewDidUnload {
    [self setCardno:nil];
    [super viewDidUnload];
}
@end
