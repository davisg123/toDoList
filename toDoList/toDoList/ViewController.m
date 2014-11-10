//
//  ViewController.m
//  toDoList
//
//  Created by Davis Gossage on 11/10/14.
//  Copyright (c) 2014 Davis Gossage. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self printHelloWorld];
}


- (void)printHelloWorld {
    // Printing set strings
    NSLog(@"Hello World!");
    
    // Printing formatted strings
    NSString *string = @"Hola Mundo!";
    NSLog(@"%@", string);
    
    //
    //PRIMITIVES
    //
    
    char letter = 's';
    NSLog(@"My favorite letter is %c", letter);
    
    int n = 11;
    NSLog(@"I am %d years old", n);
    
    NSInteger number = 7;
    NSLog(@"My object integer value is %ld", (long)number);
    
    // You should use NSInteger and not int
    // Print statements can help you debug
    // Breakpoints will help you debug faster
    
    n = 24;
    n = 11;
    number = 8;
    
    //
    // STATIC ARRAYS
    //
    
    NSArray *basicArray1 = [NSArray arrayWithObjects:@"cat", @"dog", nil];
    NSArray *basicArray2 = @[@"rat", @"fog"];
    
    NSLog(@"%@", basicArray1);
    NSLog(@"%@", basicArray2);
    
    // There are two ways of initializing NSArrays
    // NSArrays are static and cannot be resized
    
    //
    // DYNAMIC ARRAYS
    //
    
    NSMutableArray *dynamicArray1 = [[NSMutableArray alloc] init];
    NSMutableArray *dynamicArray2 = [NSMutableArray new];
    
    [dynamicArray1 addObject:@"cat"];
    [dynamicArray1 addObject:@"dog"];
    
    NSLog(@"%@", dynamicArray1);
    
    [dynamicArray2 addObject:@"rat"];
    [dynamicArray2 addObject:@"fog"];
    
    NSLog(@"%@", dynamicArray2);
    
    // There are two ways of initializing NSMutableArrays
    // NSMutableArrays are dynamic and can be resized
    // They can be considered the Objective C equivalents of ArrayLists in Java
    
    //
    // STATIC DICTIONARIES
    //
    
    NSDictionary *staticDict1 = [[NSDictionary alloc] initWithObjectsAndKeys:@"cat", @"feline", @"dog", @"canine", nil];
    NSDictionary *staticDict2 = @{@"rat":@"rodent", @"fog":@"weather"};
    
    // Key-Value pairs are known as maps in Java
    // Maps in Java are known as dictionaries in most other programming languages
    
    NSLog(@"%@", staticDict1);
    NSLog(@"%@", staticDict2);
    
    //
    // DYNAMIC DICTIONARIES
    //
    
    NSMutableDictionary *dynamicDict1 = [[NSMutableDictionary alloc] init];
    [dynamicDict1 setValue:@"cat" forKey:@"feline"];
    [dynamicDict1 setValue:@"dog" forKey:@"canine"];
    NSLog(@"%@", dynamicDict1);
    
    NSMutableDictionary *dynamicDict2 = [[NSMutableDictionary alloc] init];
    [dynamicDict2 setValue:@[@"america", @"canada"] forKey:@"countries"];
    
    NSLog(@"%@", dynamicDict2);

}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
