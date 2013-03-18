//
//  ProductsController.m
//  Shop
//
//  Created by Sanjeev Verma on 3/15/13.
//  Copyright (c) 2013 Adobe. All rights reserved.
//

#import "ProductsController.h"
#import "ProductDetail.h"

@interface ProductsController ()

@end


@implementation ProductsController
@synthesize proInt;
- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
   
    [self makeData];
    [self setTitle:@"SHOP"];
    
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

-(void) makeData
{
    men = [[NSMutableArray alloc] init] ;
    women = [[NSMutableArray alloc] init] ;
    
    [men addObject:[[NSMutableDictionary alloc]
                    initWithObjectsAndKeys:@"Sweater", @"name" ,
                    @"sweater.png", @"image" ,
                    @"Monte Carlo", @"description", @"$ 200", @"price" ,nil]];
    [men addObject:[[NSMutableDictionary alloc]initWithObjectsAndKeys:@"Jackets",@"name",@"jacket.png",@"image",@"Leather Jacket",@"description",@"$ 250", @"price"  ,nil]];
    [women addObject:[[NSMutableDictionary alloc]initWithObjectsAndKeys:@"Jeans",@"name",@"jean.png",@"image",@"Levis",@"description",@"2500 Rupees", @"price", nil]];
    [women addObject:[[NSMutableDictionary alloc]initWithObjectsAndKeys:@"Shirt",@"name",@"shirt.png",@"image",@"Nike",@"description",@"2500 Rupees", @"price" ,nil]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    if(proInt==0)
    return [men count];
    if(proInt==1)
    return [women count];
    [self.tableView reloadData];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    if(proInt==0)
        cell.textLabel.text = [[men objectAtIndex:indexPath.row] objectForKey:@"name"];
    if(proInt==1)
        cell.textLabel.text = [[women objectAtIndex:indexPath.row] objectForKey:@"name"];
[cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
    
    // Configure the cell...
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    ProductDetail *proDetail = [[ProductDetail alloc]initWithNibName:@"ProductDetail" bundle:nil];
    if(proInt == 0)
    {
        proDetail.proImageString = [[NSString alloc] initWithString:[[men objectAtIndex:indexPath.row]objectForKey:@"image"]];
        proDetail.proLabelString = [[NSString alloc] initWithString:[[men objectAtIndex:indexPath.row]objectForKey:@"description"]];
        proDetail.proPriceString = [[NSString alloc] initWithString:[[men objectAtIndex:indexPath.row]objectForKey:@"price"]];
        proDetail.title=[[men objectAtIndex:indexPath.row]objectForKey:@"name"];
    }
    if(proInt == 1)
    {
        proDetail.proImageString = [[NSString alloc] initWithString:[[women objectAtIndex:indexPath.row]objectForKey:@"image"]];
        proDetail.proLabelString = [[NSString alloc] initWithString:[[women objectAtIndex:indexPath.row]objectForKey:@"description"]];
          proDetail.proPriceString = [[NSString alloc] initWithString:[[women objectAtIndex:indexPath.row]objectForKey:@"price"]];
        proDetail.title=[[women objectAtIndex:indexPath.row]objectForKey:@"name"];
    }
    
    [self.navigationController pushViewController:proDetail animated:YES];
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

@end
