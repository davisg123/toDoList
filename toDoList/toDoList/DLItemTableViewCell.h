//
//  DLItemTableViewCell.h
//  toDoList
//
//  Created by Davis Gossage on 11/10/14.
//  MIT License
//

#import <UIKit/UIKit.h>

@interface DLItemTableViewCell : UITableViewCell

@property IBOutlet UILabel *titleLabel;
@property IBOutlet UIImageView *iconImageView;
@property IBOutlet UITextView *descriptionTextView;

- (void)showDescription;
- (void)hideDescription;

@end
