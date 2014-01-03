//
//  GDTableViewController.m
//  HelloTableViewController
//
//  Created by International on 1/3/14.
//  Copyright (c) 2014 GD. All rights reserved.
//

#import "GDTableViewController.h"
#import "GDTableViewCell.h"

@interface GDTableViewController ()

@end

@implementation GDTableViewController

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
    self.arrayYear = [NSArray arrayWithObjects:@"1994",@"1972",@"1974",nil];
    self.arrayThumbnail = [NSArray arrayWithObjects:@"http://ia.media-imdb.com/images/M/MV5BODU4MjU4NjIwNl5BMl5BanBnXkFtZTgwMDU2MjEyMDE@._V1_SX34_CR0,0,34,50_.jpg",@"http://ia.media-imdb.com/images/M/MV5BMjEyMjcyNDI4MF5BMl5BanBnXkFtZTcwMDA5Mzg3OA@@._V1_SX34_CR0,0,34,50_.jpg",@"http://ia.media-imdb.com/images/M/MV5BNDc2NTM3MzU1Nl5BMl5BanBnXkFtZTcwMTA5Mzg3OA@@._V1_SX34_CR0,0,34,50_.jpg",nil];
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
    // Get the current cell
    static NSString *CellIdentifier = @"Cell";
    GDTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell
    NSString * movieTitle = [self.arrayTitle objectAtIndex:indexPath.row];
    cell.lblTitle.text = movieTitle;

    NSString * movieYear = [self.arrayYear objectAtIndex:indexPath.row];
    cell.lblYear.text = movieYear;
    
    NSString * movieThumbnail = [self.arrayThumbnail objectAtIndex:indexPath.row];
    NSURL *urlThumbnail = [NSURL URLWithString:movieThumbnail];
    NSData *dataThumbnail = [NSData dataWithContentsOfURL:urlThumbnail];
    UIImage *imageThumbnail = [UIImage imageWithData:dataThumbnail];
    cell.imgThumbnail.image = imageThumbnail;
    
    return cell;
}

@end
