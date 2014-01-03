//
//  GDTableViewController.m
//  HelloTableViewController
//
//  Created by International on 1/2/14.
//  Copyright (c) 2014 GD. All rights reserved.
//

#import "GDTableViewController.h"

@interface GDTableViewController ()

@end

@implementation GDTableViewController

@synthesize arrayTitle = _arrayTitle;
@synthesize arrayYear = _arrayYear;

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
    [super viewDidLoad];

    
    // Populate the pseudo Model
    self.arrayTitle = [NSArray arrayWithObjects:@"The Shawshank Redemption",@"The Godfather",@"The Godfather: Part II",nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return self.arrayTitle.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    NSString * movieTitle = [self.arrayTitle objectAtIndex:indexPath.row];
    cell.textLabel.text = movieTitle;
    
    return cell;
}



@end
