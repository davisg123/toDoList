//
//  DLItem.h
//  toDoList
//
//  Created by Davis Gossage on 11/10/14.
//  Copyright (c) 2014 Davis Gossage. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface DLItem : NSObject

@property NSString *itemDescription;
@property NSString *itemTitle;
@property UIImage *icon;
@property UIColor *backgroundColor;

@end
