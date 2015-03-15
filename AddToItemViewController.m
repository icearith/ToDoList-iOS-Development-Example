//
//  AddToItemViewController.m
//  ToDoList
//
//  Created by Arith Xu on 14/03/2015.
//  Copyright (c) 2015 Arith Xu. All rights reserved.
//

#import "AddToItemViewController.h"

@interface AddToItemViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *saveButton;

@end

@implementation AddToItemViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if (sender!=self.saveButton) {
        return;
    }
    
    if (self.textField.text.length>0) {
        self.toDoItem=[[ToDoItem alloc] init];
        self.toDoItem.itemName=self.textField.text;
        self.toDoItem.completed=NO;
    }
}


@end
