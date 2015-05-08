//
//  ViewController.m
//  seach
//
//  Created by 関戸優紀 on 2015/05/08.
//  Copyright (c) 2015年 関戸優紀. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    searchTextField.delegate=self; //処理を任せる
    dataArray=[NSArray arrayWithObjects:@"sekky",@"イチロー",@"ace",nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - UITextField Delegate
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    //キーボードを閉じる
    [textField resignFirstResponder];
    return YES;
}
-(IBAction)search{
    
    NSInteger index =[dataArray indexOfObject:searchTextField.text];
    
    if (index != NSNotFound) {//yes
        
        resultLabel.text=dataArray[index];
    }
    else{
        resultLabel.text=@"見つかりませんでした";
    }
}
@end
