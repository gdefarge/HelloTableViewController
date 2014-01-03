//
//  GDTableViewCell.h
//  HelloTableViewController
//
//  Created by International on 1/3/14.
//  Copyright (c) 2014 GD. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GDTableViewCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UIImageView *imgThumbnail;
@property (strong, nonatomic) IBOutlet UILabel *lblTitle;
@property (strong, nonatomic) IBOutlet UILabel *lblYear;

@end
