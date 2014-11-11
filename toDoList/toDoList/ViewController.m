//
//  ViewController.m
//  toDoList
//
//  Created by Davis Gossage on 11/10/14.
//  Copyright (c) 2014 Davis Gossage. All rights reserved.
//

#import "ViewController.h"
#import "DLDataModel.h"
#import "DLItemTableViewCell.h"

@interface ViewController (){
    IBOutlet UITableView *listTableView;
    UIVisualEffectView *blurEffectView;
    UITapGestureRecognizer *touchOnView;
    DLAddItemView *addItemView;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addItemButton:(id)sender{
    if (!blurEffectView){
        //blur view
        UIVisualEffect *blurEffect;
        blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
        
        blurEffectView = [[UIVisualEffectView alloc] initWithEffect:blurEffect];
        blurEffectView.alpha = 0.0;
        
        blurEffectView.frame = listTableView.bounds;
        [listTableView addSubview:blurEffectView];
        
        addItemView = [[[NSBundle mainBundle] loadNibNamed:@"AddItemView" owner:self options:nil] objectAtIndex:0];
        addItemView.alpha = 0.0;
        [self.view addSubview:addItemView];
        addItemView.center = self.view.center;
        addItemView.delegate = self;
        
        [UIView animateWithDuration:.2 animations:^{
            blurEffectView.alpha = 1.0;
            addItemView.alpha = 1.0;
        }];
        
        //detect touch on blur view
        touchOnView = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hidePopup)];
        
        // Set required taps and number of touches
        [touchOnView setNumberOfTapsRequired:1];
        [touchOnView setNumberOfTouchesRequired:1];
        
        // Add the gesture to the view
        [blurEffectView addGestureRecognizer:touchOnView];
    }
}

- (void)hidePopup{
    [blurEffectView removeGestureRecognizer:touchOnView];
    [UIView animateWithDuration:.2 animations:^{
        blurEffectView.alpha = 0.0;
        addItemView.alpha = 0.0;
    } completion:^(BOOL finished) {
        [addItemView removeFromSuperview];
        addItemView = nil;
        [blurEffectView removeFromSuperview];
        blurEffectView = nil;
    }];
}

#pragma mark DLAddItemView delegate

- (void)itemWasAdded{
    [listTableView reloadData];
    [self hidePopup];
}


#pragma mark tableview data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [[[DLDataModel sharedInstance] currentList] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    DLItemTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"listCell" forIndexPath:indexPath];
    DLItem *item = [[[DLDataModel sharedInstance] currentList] objectAtIndex:[indexPath row]];
    cell.titleLabel.text = item.itemTitle;
    cell.descriptionTextView.text = item.itemDescription;
    [cell setBackgroundColor:item.backgroundColor];
    cell.iconImageView.image = item.icon;
    
    return cell;
}

@end
