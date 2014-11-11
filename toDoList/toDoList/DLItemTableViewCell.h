//
//  DLItemTableViewCell.h
//  toDoList
//
//  Created by Davis Gossage on 11/10/14.
//  Copyright (c) 2014 Davis Gossage. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DLItemTableViewCell : UITableViewCell

@property IBOutlet UILabel *titleLabel;
@property IBOutlet UIImageView *iconImageView;
@property IBOutlet UITextView *descriptionTextView;

@end
