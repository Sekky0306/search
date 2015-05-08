//
//  ViewController.h
//  seach
//
//  Created by 関戸優紀 on 2015/05/08.
//  Copyright (c) 2015年 関戸優紀. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<UITextFieldDelegate>
{
    IBOutlet UITextField *searchTextField;
    IBOutlet UILabel *resultLabel;
    
    NSArray *dataArray;
}
-(IBAction)search;


@end

