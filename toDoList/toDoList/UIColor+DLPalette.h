//
//  UIColor+DLPalette.h
//  toDoList
//
//  Created by Davis Gossage on 11/10/14.
//  Copyright (c) 2014 Davis Gossage. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@implementation UIColor (DLPalette)

+ (UIColor*) DLRed{
    //170,65,57
    return [UIColor colorWithRed:.66 green:.25 blue:.22 alpha:1.0];
}

+ (UIColor*) DLBlue{
    //36,96,104
    return [UIColor colorWithRed:.14 green:.38 blue:.41 alpha:1.0];
}

+ (UIColor*) DLGreen{
    //119,157,52
    return [UIColor colorWithRed:.47 green:.62 blue:.20 alpha:1.0];
}

@end
