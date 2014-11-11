//
//  DLSchoolItem.m
//  toDoList
//
//  Created by Davis Gossage on 11/10/14.
//  Copyright (c) 2014 Davis Gossage. All rights reserved.
//

#import "DLSchoolItem.h"
#import "UIColor+DLPalette.h"

@implementation DLSchoolItem

- (id)initWithTitle:(NSString*)title andDescription:(NSString *)description{
    self = [super init];
    self.icon  = [UIImage imageNamed:@"work"];
    self.backgroundColor = [UIColor DLRed];
    self.itemDescription = description;
    self.itemTitle = title;
    return self;
}

@end
