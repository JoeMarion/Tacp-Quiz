//
//  Categories.h
//  Tacp Quiz
//
//  Created by Joseph Marion on 1/28/14.
//  Copyright (c) 2014 Joseph Marion. All rights reserved.
//

#import <UIKit/UIKit.h>

int Category1Number;
int Category2Number;
int Category3Number;
int Category4Number;
int Category5Number;
int Category1SelectedNumber;
int Category2SelectedNumber;
int Category3SelectedNumber;
int Category4SelectedNumber;
int Category5SelectedNumber;

@interface Categories : UIViewController
{
    IBOutlet UIButton *Category1;
    IBOutlet UIButton *Category2;
    IBOutlet UIButton *Category3;
    IBOutlet UIButton *Category4;
    IBOutlet UIButton *Category5;
    
}

-(IBAction)Button1:(id)sender;
-(IBAction)Button2:(id)sender;
-(IBAction)Button3:(id)sender;
-(IBAction)Button4:(id)sender;
-(IBAction)Button5:(id)sender;

@end
