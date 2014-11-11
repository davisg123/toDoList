//
//  DLDataModel.m
//  toDoList
//
//  Created by Davis Gossage on 11/10/14.
//  MIT License
//

#import "DLDataModel.h"
#import "DLItem.h"

#define USER_DEFAULT_STORE_KEY @"mainList"

@implementation DLDataModel

static DLDataModel* gSharedInstance = nil;
NSMutableArray *_currentList;

+(DLDataModel*)sharedInstance {
    if (!gSharedInstance) {
        gSharedInstance = [[DLDataModel alloc] init];
    }
    return gSharedInstance;
}

-(NSMutableArray *)currentList{
    if (!_currentList){
        [self fetchList];
    }
    return _currentList;
}

-(void)addItemToList:(DLItem *)item{
    [[self currentList] addObject:item];
    [self synchronizeList];
}

#pragma mark UserDefault interface

/**
 * synchronizes the local list with the list stored on the device
 **/
-(void)synchronizeList{
    NSData *listData = [NSKeyedArchiver archivedDataWithRootObject:_currentList];
    [[NSUserDefaults standardUserDefaults] setObject:listData forKey:USER_DEFAULT_STORE_KEY];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

/**
 * populates the local list with the list stored on the device
 **/
-(void)fetchList{
    NSData *dataFromUserDefaults = [[NSUserDefaults standardUserDefaults] objectForKey:USER_DEFAULT_STORE_KEY];
    NSArray *arrayFromUserDefaults = [NSKeyedUnarchiver unarchiveObjectWithData:dataFromUserDefaults];
    if (!arrayFromUserDefaults){
        arrayFromUserDefaults = [NSArray new];
    }
    _currentList = [NSMutableArray arrayWithArray:arrayFromUserDefaults];
}

@end
