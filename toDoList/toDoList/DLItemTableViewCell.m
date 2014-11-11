//
//  DLItemTableViewCell.m
//  toDoList
//
//  Created by Davis Gossage on 11/10/14.
//  Copyright (c) 2014 Davis Gossage. All rights reserved.
//

#import "DLItemTableViewCell.h"

@implementation DLItemTableViewCell

CGAffineTransform currentTransform;

- (void)awakeFromNib {
    // Initialization code
}

- (void)prepareForReuse{
    [self hideDescription];
}

- (void)showDescription{
    [UIView animateWithDuration:.5 animations:^{
        currentTransform = CGAffineTransformMakeTranslation(0, -_titleLabel.bounds.size.height*.8);
        [_descriptionTextView setAlpha:1.0];
        [_titleLabel setTransform:currentTransform];
    }];
}

- (void)hideDescription{
    [self hideDescriptionAnimated:true];
}

- (void)hideDescriptionAnimated:(BOOL)animated{
    [UIView animateWithDuration:.5 * animated animations:^{
        [_descriptionTextView setAlpha:0.0];
        [_titleLabel setTransform:CGAffineTransformIdentity];
    }];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
