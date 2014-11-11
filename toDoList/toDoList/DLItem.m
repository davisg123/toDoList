//
//  DLItem.m
//  toDoList
//
//  Created by Davis Gossage on 11/10/14.
//  MIT License
//

#import "DLItem.h"

@implementation DLItem

- (id)initWithCoder:(NSCoder *)coder {
    self = [super init];
    if (self) {
        self.itemDescription = [coder decodeObjectForKey:@"itemDescription"];
        self.icon = [UIImage imageWithData:[coder decodeObjectForKey:@"icon"]];
        self.backgroundColor = [coder decodeObjectForKey:@"backgroundColor"];
        self.itemTitle = [coder decodeObjectForKey:@"itemTitle"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
    [coder encodeObject:self.itemDescription forKey:@"itemDescription"];
    [coder encodeObject:UIImagePNGRepresentation(self.icon) forKey:@"icon"];
    [coder encodeObject:self.backgroundColor forKey:@"backgroundColor"];
    [coder encodeObject:self.itemTitle forKey:@"itemTitle"];
}

@end
