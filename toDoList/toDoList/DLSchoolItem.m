//
//  DLSchoolItem.m
//  toDoList
//
//  Created by Davis Gossage on 11/10/14.
//  MIT License
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
