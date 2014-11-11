//
//  DLAddItemView.m
//  toDoList
//
//  Created by Davis Gossage on 11/10/14.
//  MIT License
//

#import "DLAddItemView.h"
#import "DLDataModel.h"
#import "DLWorkItem.h"
#import "DLSportsItem.h"
#import "DLSchoolItem.h"

@implementation DLAddItemView

- (IBAction)addItemToList:(id)sender{
    NSString *description = _itemDescriptionTextField.text;
    NSString *title = _itemTitleTextField.text;
    DLItem *itemToAdd;
    
    switch (_itemCategorySegmentedControl.selectedSegmentIndex) {
        case 0:
            //school
            itemToAdd = [[DLSchoolItem alloc] initWithTitle:title andDescription:description];
            break;
        case 1:
            //sports
            itemToAdd = [[DLSportsItem alloc] initWithTitle:title andDescription:description];
            break;
        case 2:
            //work
            itemToAdd = [[DLWorkItem alloc] initWithTitle:title andDescription:description];
            break;
        default:
            break;
    }
    
    [[DLDataModel sharedInstance] addItemToList:itemToAdd];
    
    //call back to our main view controller
    if ([self.delegate respondsToSelector:@selector(itemWasAdded)]){
        [self.delegate itemWasAdded];
    }
}

#pragma mark textView delegate

- (void)textViewDidBeginEditing:(UITextView *)textView{
    [textView becomeFirstResponder];
    if ([textView.text isEqualToString:@"Description"]){
        textView.text = @"";
    }
}

@end
