//
//  DLDataModel.m
//  toDoList
//
//  Created by Davis Gossage on 11/10/14.
//  Copyright (c) 2014 Davis Gossage. All rights reserved.
//

#import "DLDataModel.h"

@implementation DLDataModel

static DLDataModel* gSharedInstance = nil;

+(DLDataModel*)sharedInstance {
    if (!gSharedInstance) {
        gSharedInstance = [[DLDataModel alloc] init];
    }
    return gSharedInstance;
}

@end
