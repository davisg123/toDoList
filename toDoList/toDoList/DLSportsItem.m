//
//  DLSportsItem.m
//  toDoList
//
//  Created by Davis Gossage on 11/10/14.
//  Copyright (c) 2014 Davis Gossage. All rights reserved.
//

#import "DLSportsItem.h"

@implementation DLSportsItem

- (id)initWithTitle:(NSString*)title andDescription:(NSString *)description{
    self = [super init];
    self.icon = [UIImage imageNamed:@"football"];
    self.backgroundColor = [UIColor greenColor];
    self.itemDescription = description;
    self.itemTitle = title;
    return self;
}

@end
