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
