//
//  Game.h
//  Tacp Quiz
//
//  Created by Joseph Marion on 1/28/14.
//  Copyright (c) 2014 Joseph Marion. All rights reserved.
//

#import <UIKit/UIKit.h>

NSInteger CategoryLoaded;
NSInteger QuestionSelected;
BOOL Answer1Correct;
BOOL Answer2Correct;
BOOL Answer3Correct;
BOOL Answer4Correct;
int ScoreNumber;
int LivesNumber;
BOOL GameInProgress;



@interface Game : UIViewController



{
    
    IBOutlet UILabel *CategorySelected;
    IBOutlet UILabel *QuestionText;
    IBOutlet UIButton *Answer1;
    IBOutlet UIButton *Answer2;
    IBOutlet UIButton *Answer3;
    IBOutlet UIButton *Answer4;
    IBOutlet UIButton *NextCategory;
    IBOutlet UIButton *Exit;
    IBOutlet UILabel *Score;
    IBOutlet UILabel *Lives;
    IBOutlet UILabel *Result;
    IBOutlet UILabel *CorrectAnswerDisplay;

    
    
}

-(IBAction)Answer1:(id)sender;
-(IBAction)Answer2:(id)sender;
-(IBAction)Answer3:(id)sender;
-(IBAction)Answer4:(id)sender;
-(void)Category1;
-(void)Category2;
-(void)Category3;
-(void)Category4;
-(void)Category5;
-(void)RightAnswer;
-(void)WrongAnswer;

@end
