//
//  DLDataModel.h
//  toDoList
//
//  Created by Davis Gossage on 11/10/14.
//  Copyright (c) 2014 Davis Gossage. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DLItem.h"

@interface DLDataModel : NSObject

+ (DLDataModel*)sharedInstance;

- (NSMutableArray*)currentList;

- (void)addItemToList:(DLItem *)item;

@end
