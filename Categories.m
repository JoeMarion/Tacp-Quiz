//
//  Categories.m
//  Tacp Quiz
//
//  Created by Joseph Marion on 1/28/14.
//  Copyright (c) 2014 Joseph Marion. All rights reserved.
//

#import "Categories.h"

@interface Categories ()

@end

@implementation Categories

-(IBAction)Button1:(id)sender{
    
    [[NSUserDefaults standardUserDefaults] setInteger:Category1SelectedNumber forKey:@"CategorySaved"];
    
}

-(IBAction)Button2:(id)sender{
    
    [[NSUserDefaults standardUserDefaults] setInteger:Category2SelectedNumber forKey:@"CategorySaved"];
    
}

-(IBAction)Button3:(id)sender{
    
    [[NSUserDefaults standardUserDefaults] setInteger:Category3SelectedNumber forKey:@"CategorySaved"];
    
}

-(IBAction)Button4:(id)sender{
    
    [[NSUserDefaults standardUserDefaults] setInteger:Category4SelectedNumber forKey:@"CategorySaved"];
    
}

-(IBAction)Button5:(id)sender{
    
    [[NSUserDefaults standardUserDefaults] setInteger:Category5SelectedNumber forKey:@"CategorySaved"];
    
}



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    
    Category1Number = arc4random() %1;
    Category2Number = arc4random() %1;
    Category3Number = arc4random() %1;
    Category4Number = arc4random() %1;
    Category5Number = arc4random() %1;
    
    switch (Category1Number) {
        case 0:
            [Category1 setTitle:@"CDC Volume 1" forState:UIControlStateNormal];
            Category1SelectedNumber = 1;
            break;
        
        default:
            break;
    }
    
    
    switch (Category2Number) {
        case 0:
            [Category2 setTitle:@"CDC Volume 2" forState:UIControlStateNormal];
            Category2SelectedNumber = 2;
            break;
            
        default:
            break;
    }
    
    switch (Category3Number) {
        case 0:
            [Category3 setTitle:@"CDC Volume 3" forState:UIControlStateNormal];
            Category3SelectedNumber = 3;
            break;
            
        default:
            break;
    }
    
    switch (Category4Number) {
        case 0:
            [Category4 setTitle:@"CDC All Volumes" forState:UIControlStateNormal];
            Category4SelectedNumber = 4;
            break;
            
        default:
            break;
    }
    
    switch (Category5Number) {
        case 0:
            [Category5 setTitle:@"MQF Test" forState:UIControlStateNormal];
            Category5SelectedNumber = 5;
            break;
            
        default:
            break;
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
