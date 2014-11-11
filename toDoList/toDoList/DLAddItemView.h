//
//  DLAddItemView.h
//  toDoList
//
//  Created by Davis Gossage on 11/10/14.
//  MIT License
//

#import <UIKit/UIKit.h>

@protocol DLAddItemViewDelegate<NSObject>

- (void)itemWasAdded;

@end

@interface DLAddItemView : UIView<UITextViewDelegate>

@property IBOutlet UISegmentedControl *itemCategorySegmentedControl;
@property IBOutlet UITextField *itemTitleTextField;
@property IBOutlet UITextView *itemDescriptionTextField;

@property id<DLAddItemViewDelegate>delegate;

@end
