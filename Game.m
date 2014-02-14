//
//  Game.m
//  AF PDG
//
//  Created by Joseph Marion on 2/3/14.
//  Copyright (c) 2014 Children Eaters Inc. All rights reserved.
//

#import "Game.h"

@interface Game ()

@end

@implementation Game


-(void)RightAnswer{
    
    ScoreNumber = ScoreNumber + 1;
    Score.text = [NSString stringWithFormat:@"%i", ScoreNumber];
    NextCategory.hidden = NO;
    Answer1.hidden = YES;
    Answer2.hidden = YES;
    Answer3.hidden = YES;
    Answer4.hidden = YES;
    CategorySelected.hidden = YES;
    Result.hidden = NO;
    Result.text = [NSString stringWithFormat:@"Correct"];
    CorrectAnswerDisplay.hidden = NO;
    
    
    
}

-(void)WrongAnswer{
    
    LivesNumber = LivesNumber - 1;
    Lives.text = [NSString stringWithFormat:@"%i", LivesNumber];
    NextCategory.hidden = NO;
    Answer1.hidden = YES;
    Answer2.hidden = YES;
    Answer3.hidden = YES;
    Answer4.hidden = YES;
    CategorySelected.hidden = YES;
    Result.hidden = NO;
    Result.text = [NSString stringWithFormat:@"Incorrect"];
    CorrectAnswerDisplay.hidden = NO;
    
    if (LivesNumber == 0) {
        Result.text = [NSString stringWithFormat:@"Game Over! You Suck."];
        NextCategory.hidden = YES;
        Exit.hidden = NO;
        GameInProgress = NO;
        
    }
    
    
    
}


-(IBAction)Answer1:(id)sender{
    
    if (Answer1Correct == YES) {
        [self RightAnswer];
    }
    else{
        [self WrongAnswer];
    }
    
}
-(IBAction)Answer2:(id)sender{
    if (Answer2Correct == YES) {
        [self RightAnswer];
    }
    else{
        [self WrongAnswer];
    }
    
    
}
-(IBAction)Answer3:(id)sender{
    if (Answer3Correct == YES) {
        [self RightAnswer];
    }
    else{
        [self WrongAnswer];
    }
    
    
}
-(IBAction)Answer4:(id)sender{
    if (Answer4Correct == YES) {
        [self RightAnswer];
    }
    else{
        [self WrongAnswer];
    }
    
    
}


-(void)Category1{
    
    
    
    NSUInteger QuestionSelected= (arc4random() %100);
    
    switch (QuestionSelected) {
        case 0:
            
            QuestionText.text = [NSString stringWithFormat:@"How many characters, not including prefixes or suffixes, make up an Air Force Specialty Code (AFSC)?"];
            [Answer1 setTitle:@"Five" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Three" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Four" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Six" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Five"];
            break;
        case 1:
            
            QuestionText.text = [NSString stringWithFormat:@"Which Air Force Specialty Code (AFSC) indicates the actual position you are assgined to in your unit?"];
            [Answer1 setTitle:@"Primary" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Duty" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Control" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Temporary" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Duty"];
            break;
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"Which Air Force Specialty Code (AFSC) is used as a management tool for assignments against authorized manning requirements?"];
            [Answer1 setTitle:@"Control" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Primary" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Duty" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Temporary" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Duty"];
            break;
        case 3:
            QuestionText.text = [NSString stringWithFormat:@"Which documents are used to decide which task and knowledge items are trained in the initial skills resident course?"];
            [Answer1 setTitle:@"OSR and on-the-job training (OJT)" forState:UIControlStateNormal];
            [Answer2 setTitle:@"TRA and CFETP" forState:UIControlStateNormal];
            [Answer3 setTitle:@"OJT and career field education and training plan (CFETP)" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Occupational Surber Report (OSR) and Training Requirements Analysis (TRA)" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Occupational Surber Report (OSR) and Training Requirements Analysis (TRA)"];
            break;
        case 4:
            QuestionText.text = [NSString stringWithFormat:@"What is the focus of on-the-job training (OJT)?"];
            [Answer1 setTitle:@"Provide what you need to know to do your job" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Support the organization's mission" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Provide an opportunity to attend training" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Provide the resources to meet the training requirements" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Provide what you need to know to do your job"];
            break;
        case 5:
            QuestionText.text = [NSString stringWithFormat:@"On-the-job (OJT) is also known as what type of training?"];
            [Answer1 setTitle:@"One-on-one" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Over-the-shoulder" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Formalized" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Vitrual and interactive" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Over-the-shoulder"];
            break;
        case 6:
            QuestionText.text = [NSString stringWithFormat:@"What is the Air Force's goal pertaining to the Internet?"];
            [Answer1 setTitle:@"Provide minimum availability at acceptable levels for official business" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Provide secure availability at acceptable levels for official business" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Provide maximum availability at acceptable levels for official business" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Eliminate spy-ware to protect official business" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Provide maximum availability at acceptable levels for official business"];
            break;
        case 7:
            QuestionText.text = [NSString stringWithFormat:@"The Internet provides all of the following except a"];
            [Answer1 setTitle:@"quick and efficient way of disseminating information to the public" forState:UIControlStateNormal];
            [Answer2 setTitle:@"way of distributing information throughout the Air Force" forState:UIControlStateNormal];
            [Answer3 setTitle:@"way of accessing information from a variety of sources" forState:UIControlStateNormal];
            [Answer4 setTitle:@"secure means of communication" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"secure means of communication"];
            break;
        case 8:
            QuestionText.text = [NSString stringWithFormat:@"Which of the following makes monitoring or reading another individual's email messages illegal?"];
            [Answer1 setTitle:@"Federal Wiretap Law" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Unit system administrator" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Operations security (OPSEC)" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Non-secure Internet Protocol Router Network" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Federal Wiretap Law"];
            break;
        case 9:
            QuestionText.text = [NSString stringWithFormat:@"Who in your unit establishes an email account for you?"];
            [Answer1 setTitle:@"Security manager" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Work group manager" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Computer systems manager" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Information management manager" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Work group manager"];
            break;
        case 10:
            QuestionText.text = [NSString stringWithFormat:@"Which type of storage device has a small amount of storage space?"];
            [Answer1 setTitle:@"External" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Internal" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Flash" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Shared" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Flash"];
            break;
        case 11:
            QuestionText.text = [NSString stringWithFormat:@"What are the four lines called that enclose the body of a standard military map?"];
            [Answer1 setTitle:@"Latitude" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Longitude" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Set" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Neat" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Neat"];
            break;
        case 12:
            QuestionText.text = [NSString stringWithFormat:@"Lines of Latitude progress north and south of"];
            [Answer1 setTitle:@"the international dateline" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Greenwich, England" forState:UIControlStateNormal];
            [Answer3 setTitle:@"the prime meridian" forState:UIControlStateNormal];
            [Answer4 setTitle:@"the Equator" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"the Equator"];
            break;
        case 13:
            QuestionText.text = [NSString stringWithFormat:@"The point where 180 degrees East longitude meets 180 degrees West longitude is called what?"];
            [Answer1 setTitle:@"Greenwich, England" forState:UIControlStateNormal];
            [Answer2 setTitle:@"The international dateline" forState:UIControlStateNormal];
            [Answer3 setTitle:@"The prime meridian" forState:UIControlStateNormal];
            [Answer4 setTitle:@"The Equator" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"The international dateline"];
            break;
        case 14:
            QuestionText.text = [NSString stringWithFormat:@"How many degrees is each line of latitude or longitude broken down into?"];
            [Answer1 setTitle:@"45" forState:UIControlStateNormal];
            [Answer2 setTitle:@"90" forState:UIControlStateNormal];
            [Answer3 setTitle:@"180" forState:UIControlStateNormal];
            [Answer4 setTitle:@"360" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"360"];
            break;
        case 15:
            QuestionText.text = [NSString stringWithFormat:@"The first major breakdown of the Universal Transverse Mercator (UTM) grid is the division of each zone into areas of 6 degrees by 8 degrees and"];
            [Answer1 setTitle:@"6 degrees by 8 degrees" forState:UIControlStateNormal];
            [Answer2 setTitle:@"6 degrees by 10 degrees" forState:UIControlStateNormal];
            [Answer3 setTitle:@"6 degrees by 12 degrees" forState:UIControlStateNormal];
            [Answer4 setTitle:@"6 degrees by 14 degrees" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"6 degrees by 12 degrees"];
            break;
        case 16:
            QuestionText.text = [NSString stringWithFormat:@"What is the combination of the zone number and the row letter called?"];
            [Answer1 setTitle:@"Grid zone designation" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Grid zone identifier" forState:UIControlStateNormal];
            [Answer3 setTitle:@"100,000 meter square identifier" forState:UIControlStateNormal];
            [Answer4 setTitle:@"100,000 meter square designation" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Grid zone designation"];
            break;
        case 17:
            QuestionText.text = [NSString stringWithFormat:@"On a military map, what are the two digits printed in large type that appear at intervals along the grid line?"];
            [Answer1 setTitle:@"The central meridian" forState:UIControlStateNormal];
            [Answer2 setTitle:@"The principal digits" forState:UIControlStateNormal];
            [Answer3 setTitle:@"False coordinates" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Reference numbers" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"The principal digits"];
            break;
        case 18:
            QuestionText.text = [NSString stringWithFormat:@"A map grid coordinate scale is designed for the express purpose of"];
            [Answer1 setTitle:@"plotting distance" forState:UIControlStateNormal];
            [Answer2 setTitle:@"measuring distance" forState:UIControlStateNormal];
            [Answer3 setTitle:@"plotting grid coordinates" forState:UIControlStateNormal];
            [Answer4 setTitle:@"measuring coordinates" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"plotting grid coordinates"];
            break;
        case 19:
            QuestionText.text = [NSString stringWithFormat:@"On the 1:250,000 scale in the military grid reference system, the 1,000 meter grid block is divided into 10 major subdivisions equal to how many meters each?"];
            [Answer1 setTitle:@"100" forState:UIControlStateNormal];
            [Answer2 setTitle:@"1,000" forState:UIControlStateNormal];
            [Answer3 setTitle:@"10,000" forState:UIControlStateNormal];
            [Answer4 setTitle:@"100,000" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"100"];
            break;
        case 20:
            QuestionText.text = [NSString stringWithFormat:@"In the military grid reference system, the 1:5-,000 scale subdivides the 1,000-meter grid block into 10 major subdivisions equal to how many meters each?"];
            [Answer1 setTitle:@"100" forState:UIControlStateNormal];
            [Answer2 setTitle:@"1,000" forState:UIControlStateNormal];
            [Answer3 setTitle:@"10,000" forState:UIControlStateNormal];
            [Answer4 setTitle:@"100,000" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"100"];
            break;
        case 21:
            QuestionText.text = [NSString stringWithFormat:@"Which map grid coordinate is accurate to within one meter?"];
            [Answer1 setTitle:@"1484" forState:UIControlStateNormal];
            [Answer2 setTitle:@"142841" forState:UIControlStateNormal];
            [Answer3 setTitle:@"14178409" forState:UIControlStateNormal];
            [Answer4 setTitle:@"1416884087" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"1416884087"];
            break;
        case 22:
            QuestionText.text = [NSString stringWithFormat:@"What does the Global Area Reference System (GARS) provide over other geographical grid reference systems?"];
            [Answer1 setTitle:@"Single military service use" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Precision for employing guided weapons" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Common joint service reference system" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Complex language for effective communications" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Common joint service reference system"];
            break;
        case 23:
            QuestionText.text = [NSString stringWithFormat:@"The Global Area Reference System (GARS) was the first global reference system developed for"];
            [Answer1 setTitle:@"navigating" forState:UIControlStateNormal];
            [Answer2 setTitle:@"executing close air support" forState:UIControlStateNormal];
            [Answer3 setTitle:@"detailed targeting" forState:UIControlStateNormal];
            [Answer4 setTitle:@"deconflicting" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"deconflicting"];
            break;
        case 24:
            QuestionText.text = [NSString stringWithFormat:@"What number and letter combination, in sequence, does the Global Area Reference System (GARS) use to identify an area anywhere in the world?"];
            [Answer1 setTitle:@"Three numbers and two letters" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Two numbers and three letters" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Three letters and two numbers" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Two letters and three numbers" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Three numbers and two letters"];
            break;
        case 25:
            QuestionText.text = [NSString stringWithFormat:@"The Global Area Reference System (GARS) uses a base line that starts at the"];
            [Answer1 setTitle:@"North Pole and Prime Meridian" forState:UIControlStateNormal];
            [Answer2 setTitle:@"South Pole and International Dateline" forState:UIControlStateNormal];
            [Answer3 setTitle:@"South Pole and Prime Meridian" forState:UIControlStateNormal];
            [Answer4 setTitle:@"North Pole and International Dateline" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"South Pole and International Dateline"];
            break;
        case 26:
            QuestionText.text = [NSString stringWithFormat:@"Which letter is omitted in the latitudinal band (northwards) of the Global Area Reference System (GARS)?"];
            [Answer1 setTitle:@"X" forState:UIControlStateNormal];
            [Answer2 setTitle:@"J" forState:UIControlStateNormal];
            [Answer3 setTitle:@"I" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Y" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"I"];
            break;
        case 27:
            QuestionText.text = [NSString stringWithFormat:@"What represents the age of the topographical ma, in relation to other editions of the same map, and the agency responsible for its production?"];
            [Answer1 setTitle:@"Sheet name" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Sheet number" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Series number" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Edition number" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Edition number"];
            break;
        case 28:
            QuestionText.text = [NSString stringWithFormat:@"The basis for converting topographic map distance to ground distance is the"];
            [Answer1 setTitle:@"bar scale" forState:UIControlStateNormal];
            [Answer2 setTitle:@"grid note" forState:UIControlStateNormal];
            [Answer3 setTitle:@"contour interval" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Edition number" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"bar scale"];
            break;
        case 29:
            QuestionText.text = [NSString stringWithFormat:@"On a topographical map, where do you find the information pertaining to the grid system used, the interval lines, and the number of digits omitted from the grid values?"];
            [Answer1 setTitle:@"Legend" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Grid note" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Special notes" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Grid reference box" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Grid note"];
            break;
        case 30:
            QuestionText.text = [NSString stringWithFormat:@"On a topographical map, you find information for composing a grid reference in the"];
            [Answer1 setTitle:@"Special notes" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Declination diagram" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Grid reference box" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Legend" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Grid reference box"];
            break;
        case 31:
            QuestionText.text = [NSString stringWithFormat:@"Where on a topographical map would you find information on the angular relationships of true north, grid north, and magnetic north?"];
            [Answer1 setTitle:@"Bar scale" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Legend" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Special notes" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Declination diagram" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Declination diagram"];
            break;
        case 32:
            QuestionText.text = [NSString stringWithFormat:@"What color is used on a topographical map to indicate most cultural or manmade features?"];
            [Answer1 setTitle:@"Black" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Brown" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Orange" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Red" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Black"];
            break;
        case 33:
            QuestionText.text = [NSString stringWithFormat:@"What color is used for joint operations graphics on a topographical map, to indicate air-ground operations?"];
            [Answer1 setTitle:@"Brown" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Purple" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Green" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Red" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Purple"];
            break;
        case 34:
            QuestionText.text = [NSString stringWithFormat:@"You are using topographic symbold on a map and determine that the width of a road is exagerated. When this happens it means that the"];
            [Answer1 setTitle:@"road is reduced in size around the feature to preserve its location" forState:UIControlStateNormal];
            [Answer2 setTitle:@"feature is reduced in size to preserve the width of the road" forState:UIControlStateNormal];
            [Answer3 setTitle:@"feature moves from its true position to preserve its relation to the road" forState:UIControlStateNormal];
            [Answer4 setTitle:@"road is offset around the feature next to the road" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"feature moves from its true position to preserve its relation to the road"];
            break;
        case 35:
            QuestionText.text = [NSString stringWithFormat:@"What type of terrain/relief feature on a topographic map slopes down in all directions?"];
            [Answer1 setTitle:@"Ridge" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Draw" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Valley" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Hill" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Hill"];
            break;
        case 36:
            QuestionText.text = [NSString stringWithFormat:@"An example of the detailed information the Joint Operations Graphic (JOG) air series maps contain is"];
            [Answer1 setTitle:@"radio ranges" forState:UIControlStateNormal];
            [Answer2 setTitle:@"cities" forState:UIControlStateNormal];
            [Answer3 setTitle:@"water ways" forState:UIControlStateNormal];
            [Answer4 setTitle:@"road systems" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"radio ranges"];
            break;
        case 37:
            QuestionText.text = [NSString stringWithFormat:@"What does the large, open-faced figure in each 15-minute quadrangle of a Joint Air Operations (JOG) air map represent?"];
            [Answer1 setTitle:@"Location of the nearest airfield" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Highest terrain elevation" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Coordinates for nearest airfield" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Location of the highest terrain elevation" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Highest terrain elevation"];
            break;
        case 38:
            QuestionText.text = [NSString stringWithFormat:@"What type of information does the Joint Operations Graphic (JOG) ground series map identify?"];
            [Answer1 setTitle:@"Radio towers only" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Improvised air facilities" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Permanent air facilities" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Radio towers and ranges" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Permanent air facilities"];
            break;
        case 39:
            QuestionText.text = [NSString stringWithFormat:@"How many parts, on a tactical map, do military symbols generally consist of?"];
            [Answer1 setTitle:@"Four" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Five" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Six" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Seven" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Six"];
            break;
        case 40:
            QuestionText.text = [NSString stringWithFormat:@"In relation to the basic symbol, where would you place the unit size symbol on a tactical map?"];
            [Answer1 setTitle:@"Above" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Below" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Left" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Right" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Above"];
            break;
        case 41:
            QuestionText.text = [NSString stringWithFormat:@"On a tactical map, place higher echelons of command"];
            [Answer1 setTitle:@"above the basic symbol" forState:UIControlStateNormal];
            [Answer2 setTitle:@"to the right of the basic symbol" forState:UIControlStateNormal];
            [Answer3 setTitle:@"to the left of the basic symbol" forState:UIControlStateNormal];
            [Answer4 setTitle:@"below the basic symbol" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"to the right of the basic symbol"];
            break;
        case 42:
            QuestionText.text = [NSString stringWithFormat:@"On a tactical map, military symbols represented in yellow mean"];
            [Answer1 setTitle:@"enemy units, installations, equipment, and activities" forState:UIControlStateNormal];
            [Answer2 setTitle:@"friendly or enemy manmade obstacles" forState:UIControlStateNormal];
            [Answer3 setTitle:@"friendly or enemy areas of chemical, biological, or radiological contamination" forState:UIControlStateNormal];
            [Answer4 setTitle:@"friendly units, installations, equipment, and activities" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"friendly or enemy areas of chemical, biological, or radiological contamination"];
            break;
        case 43:
            QuestionText.text = [NSString stringWithFormat:@"Military symbols represented in green on a tactical map mean"];
            [Answer1 setTitle:@"friendly or enemy areas of chemical, biological, or radiological contamination" forState:UIControlStateNormal];
            [Answer2 setTitle:@"friendly units, installations, equipment and activities" forState:UIControlStateNormal];
            [Answer3 setTitle:@"enemy units, installations, equipment, and activities" forState:UIControlStateNormal];
            [Answer4 setTitle:@"friendly or enemy manmade obstacles" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"friendly or enemy manmade obstacles"];
            break;
        case 44:
            QuestionText.text = [NSString stringWithFormat:@"To avoid compass readings interference when using lensatic compass, how many meters from a tank is the suggested safe operating distance?"];
            [Answer1 setTitle:@"18" forState:UIControlStateNormal];
            [Answer2 setTitle:@"55" forState:UIControlStateNormal];
            [Answer3 setTitle:@"10" forState:UIControlStateNormal];
            [Answer4 setTitle:@"5" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"18"];
            break;
        case 45:
            QuestionText.text = [NSString stringWithFormat:@"How many meters from barbed wire is the suggested safe operating distance, while using a lensatic compass?"];
            [Answer1 setTitle:@"55" forState:UIControlStateNormal];
            [Answer2 setTitle:@"10" forState:UIControlStateNormal];
            [Answer3 setTitle:@"18" forState:UIControlStateNormal];
            [Answer4 setTitle:@"5" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"10"];
            break;
        case 46:
            QuestionText.text = [NSString stringWithFormat:@"What map feature enables you to orient a map properly and shows the interrelationship of magnetic, grid, and true north?"];
            [Answer1 setTitle:@"Military plotting diagram" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Grid reference diagram" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Declination diagram" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Military lensatic compass" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Declination diagram"];
            break;
        case 47:
            QuestionText.text = [NSString stringWithFormat:@"When orienting a map, what is an imaginary line from any surface position to the North Pole?"];
            [Answer1 setTitle:@"Magnetic north" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Grid north" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Declination" forState:UIControlStateNormal];
            [Answer4 setTitle:@"True north" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"True north"];
            break;
        case 48:
            QuestionText.text = [NSString stringWithFormat:@"When orienting a map, the direction of the north magnetic pole indicated by the north-seeking needle of a magnetic instrument is the"];
            [Answer1 setTitle:@"magnetic north" forState:UIControlStateNormal];
            [Answer2 setTitle:@"true north" forState:UIControlStateNormal];
            [Answer3 setTitle:@"declination" forState:UIControlStateNormal];
            [Answer4 setTitle:@"grid north" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"magnetic north"];
            break;
        case 49:
            QuestionText.text = [NSString stringWithFormat:@"When orienting a map, true north is symbolized by"];
            [Answer1 setTitle:@"the letters GN or Y" forState:UIControlStateNormal];
            [Answer2 setTitle:@"a star" forState:UIControlStateNormal];
            [Answer3 setTitle:@"a diamond" forState:UIControlStateNormal];
            [Answer4 setTitle:@"a half arrowhead" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"a star"];
            break;
        case 50:
            QuestionText.text = [NSString stringWithFormat:@"When using a compass for navigation, a pace count takes you approximately how many paces to reach 100 meters?"];
            [Answer1 setTitle:@"40 to 70" forState:UIControlStateNormal];
            [Answer2 setTitle:@"50 to 80" forState:UIControlStateNormal];
            [Answer3 setTitle:@"60 to 90" forState:UIControlStateNormal];
            [Answer4 setTitle:@"70 to 100" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"50 to 80"];
            break;
        case 51:
            QuestionText.text = [NSString stringWithFormat:@"When navigating with a compass, the traingulation of an unknown point from at least two or three known points on a map is called a/an"];
            [Answer1 setTitle:@"deliberate offset" forState:UIControlStateNormal];
            [Answer2 setTitle:@"resection" forState:UIControlStateNormal];
            [Answer3 setTitle:@"bisection" forState:UIControlStateNormal];
            [Answer4 setTitle:@"intersection" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"intersection"];
            break;
        case 52:
            QuestionText.text = [NSString stringWithFormat:@"When using a compass to navigate, you can locate your unknown point by sighting on two or more known features using"];
            [Answer1 setTitle:@"resection" forState:UIControlStateNormal];
            [Answer2 setTitle:@"bisection" forState:UIControlStateNormal];
            [Answer3 setTitle:@"intersection" forState:UIControlStateNormal];
            [Answer4 setTitle:@"deliberate offset" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"resection"];
            break;
        case 53:
            QuestionText.text = [NSString stringWithFormat:@"At 1,000 meters each degree of deliberate offset moves you how many meters to the left or right of an object?"];
            [Answer1 setTitle:@"6" forState:UIControlStateNormal];
            [Answer2 setTitle:@"12" forState:UIControlStateNormal];
            [Answer3 setTitle:@"18" forState:UIControlStateNormal];
            [Answer4 setTitle:@"24" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"18"];
            break;
        case 54:
            QuestionText.text = [NSString stringWithFormat:@"Which factor of good microphone techniques deals with the extent of background noise?"];
            [Answer1 setTitle:@"Pronunciation" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Rate of speech" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Loudness" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Patterns of speech" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Loudness"];
            break;
        case 55:
            QuestionText.text = [NSString stringWithFormat:@"When the receiving radio operator gets a loud signal, it means the signal"];
            [Answer1 setTitle:@"is more readable" forState:UIControlStateNormal];
            [Answer2 setTitle:@"is easier to tune" forState:UIControlStateNormal];
            [Answer3 setTitle:@"requires less adjustment on the audio gain" forState:UIControlStateNormal];
            [Answer4 setTitle:@"is not always the most readable" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"is not always the most readable"];
            break;
        case 56:
            QuestionText.text = [NSString stringWithFormat:@"To speak into a microphone, hold it"];
            [Answer1 setTitle:@"about half an inch from your lips and speak at a normal level" forState:UIControlStateNormal];
            [Answer2 setTitle:@"directly against your lips and speak at a normal level" forState:UIControlStateNormal];
            [Answer3 setTitle:@"about 2 inches from your mouth and speak clearly" forState:UIControlStateNormal];
            Answer4.hidden = YES;
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"about half an inch from your lips and speak at a normal level"];
            break;
        case 57:
            QuestionText.text = [NSString stringWithFormat:@"All of the following are points you should follow for effective coice communication except"];
            [Answer1 setTitle:@"speaking slowly enough to pronounce each word clearly and distinctly" forState:UIControlStateNormal];
            [Answer2 setTitle:@"pausing slightly between words so the listener has time to write down the message" forState:UIControlStateNormal];
            [Answer3 setTitle:@"speaking slowly enough for the listener to hear and understand all the words" forState:UIControlStateNormal];
            [Answer4 setTitle:@"pausing slightly between ideas, but do not say 'uh' or 'er' to fill in the pauses" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"pausing slightly between words so the listener has time to write down the message"];
            break;
        case 58:
            QuestionText.text = [NSString stringWithFormat:@"Radio messages transmitted idea by idea rather than word by word"];
            [Answer1 setTitle:@"requires a higher volume setting" forState:UIControlStateNormal];
            [Answer2 setTitle:@"is more likely to be garbled" forState:UIControlStateNormal];
            [Answer3 setTitle:@"is more easily understood" forState:UIControlStateNormal];
            [Answer4 setTitle:@"should be avoided" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"is more easily understood"];
            break;
        case 59:
            QuestionText.text = [NSString stringWithFormat:@"You transmit a lengthy message containing encoded groups. How many groups should you transmit before making a short break in transmission?"];
            [Answer1 setTitle:@"5" forState:UIControlStateNormal];
            [Answer2 setTitle:@"10" forState:UIControlStateNormal];
            [Answer3 setTitle:@"15" forState:UIControlStateNormal];
            [Answer4 setTitle:@"20" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"10"];
            break;
        case 60:
            QuestionText.text = [NSString stringWithFormat:@"In which time zone is the Greenwich Meridian located?"];
            [Answer1 setTitle:@"Z" forState:UIControlStateNormal];
            [Answer2 setTitle:@"D" forState:UIControlStateNormal];
            [Answer3 setTitle:@"M" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Y" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Z"];
            break;
        case 61:
            QuestionText.text = [NSString stringWithFormat:@"When you are working eastward from Greenwich, local time gets"];
            [Answer1 setTitle:@"earlier by 1 hour" forState:UIControlStateNormal];
            [Answer2 setTitle:@"later by 1 hour" forState:UIControlStateNormal];
            [Answer3 setTitle:@"earlier by 2 hours" forState:UIControlStateNormal];
            [Answer4 setTitle:@"later by 2 hours" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"later by 1 hour"];
            break;
        case 62:
            QuestionText.text = [NSString stringWithFormat:@"What letter is omitted from the aphabetized time zones A through M?"];
            [Answer1 setTitle:@"L" forState:UIControlStateNormal];
            [Answer2 setTitle:@"I" forState:UIControlStateNormal];
            [Answer3 setTitle:@"J" forState:UIControlStateNormal];
            [Answer4 setTitle:@"M" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"J"];
            break;
        case 63:
            QuestionText.text = [NSString stringWithFormat:@"Which radio transmission practice is specifically forbidden?"];
            [Answer1 setTitle:@"Excessive transmitter power use" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Transmitting at speeds beyond the capability of the receiving operators" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Excessive time consumed in tuning, changing frequencies, and adjusting equipment" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Unofficial conversation between operators" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Unofficial conversation between operators"];
            break;
        case 64:
            QuestionText.text = [NSString stringWithFormat:@"The authority to cancel an emergency radio silence lies with the"];
            [Answer1 setTitle:@"authority that imposed it" forState:UIControlStateNormal];
            [Answer2 setTitle:@"communications officer" forState:UIControlStateNormal];
            [Answer3 setTitle:@"ground commander" forState:UIControlStateNormal];
            [Answer4 setTitle:@"signals officer" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"authority that imposed it"];
            break;
        case 65:
            QuestionText.text = [NSString stringWithFormat:@"Two authorized methods of authenticating are 'challenge and reply' and"];
            [Answer1 setTitle:@"decrypt" forState:UIControlStateNormal];
            [Answer2 setTitle:@"transmission" forState:UIControlStateNormal];
            [Answer3 setTitle:@"encrypt" forState:UIControlStateNormal];
            [Answer4 setTitle:@"encode" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"transmission"];
            break;
        case 66:
            QuestionText.text = [NSString stringWithFormat:@"What statement, if any, must appear in the encoding transmission to prevent confusion with eight-digit coordinates and grid zone designators?"];
            [Answer1 setTitle:@"Eight-digit coordinates included" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Six-digit coordinates included" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Grid zone letters included" forState:UIControlStateNormal];
            [Answer4 setTitle:@"No statement is required" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Grid zone letters included"];
            break;
        case 67:
            QuestionText.text = [NSString stringWithFormat:@"Radio deception that simulates units, installations, and activities is called"];
            [Answer1 setTitle:@"Manipulative" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Intrusive" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Imitative" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Simulative" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Simulative"];
            break;
        case 68:
            QuestionText.text = [NSString stringWithFormat:@"Which basic jamming technique consists of a narrow signal intended to disrupt one specific frequency or channel?"];
            [Answer1 setTitle:@"Spot" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Barrage" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Constant" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Sweepthrough" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Spot"];
            break;
        case 69:
            QuestionText.text = [NSString stringWithFormat:@"Which basic jamming technique consists of a wideband signal intended to cause chaos on a wideband of frequencies or adjacent channels?"];
            [Answer1 setTitle:@"Spot" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Barrage" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Constant" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Sweepthrough" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Barrage"];
            break;
        case 70:
            QuestionText.text = [NSString stringWithFormat:@"Which basic jamming technique consists of a signal concentrated on a single frequency only a short time?"];
            [Answer1 setTitle:@"Constant" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Spot" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Sweepthrough" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Barrage" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Sweepthrough"];
            break;
        case 71:
            QuestionText.text = [NSString stringWithFormat:@"Which modulating jamming signal sounds like an aircraft engine?"];
            [Answer1 setTitle:@"Spark" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Random noise" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Stepped tones" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Sweepthrough" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Sweepthrough"];
            break;
        case 72:
            QuestionText.text = [NSString stringWithFormat:@"Which modulating jamming technique is the most difficult to distinguish?"];
            [Answer1 setTitle:@"Random noise" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Spark" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Stepped tones" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Sweepthrough" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Random noise"];
            break;
        case 73:
            QuestionText.text = [NSString stringWithFormat:@"What are the two types of field meaconing, intrusion, jamming, and interference (MIJI) reports?"];
            [Answer1 setTitle:@"First and second" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Initial and follow up" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Initial and final" forState:UIControlStateNormal];
            [Answer4 setTitle:@"First and follow up" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Initial and follow up"];
            break;
        case 74:
            QuestionText.text = [NSString stringWithFormat:@"Within how many hours of the initial meaconing, intrusion, jamming, and interference (MIJI report must you submit a complete follow up report containing all details of the incident?"];
            [Answer1 setTitle:@"6" forState:UIControlStateNormal];
            [Answer2 setTitle:@"8" forState:UIControlStateNormal];
            [Answer3 setTitle:@"12" forState:UIControlStateNormal];
            [Answer4 setTitle:@"24" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"12"];
            break;
        case 75:
            QuestionText.text = [NSString stringWithFormat:@"The physical size, construction details, and appearance of an antenna primarily depend on"];
            [Answer1 setTitle:@"how many stations will be on the same frequency" forState:UIControlStateNormal];
            [Answer2 setTitle:@"the amount of radiation energy from the radio" forState:UIControlStateNormal];
            [Answer3 setTitle:@"the antenna location" forState:UIControlStateNormal];
            [Answer4 setTitle:@"how the antenna is used" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"how the antenna is used"];
            break;
        case 76:
            QuestionText.text = [NSString stringWithFormat:@"What should you do if you are in a room beside an electrical outlet with degraded communications?"];
            [Answer1 setTitle:@"Change frequencies" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Move the radio to another room" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Move radio to the roof" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Move the radio to another location in the same room" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Move the radio to another location in the same room"];
            break;
        case 77:
            QuestionText.text = [NSString stringWithFormat:@"The more efficient an antenna is for transmitting, the more efficient it will be for receiving. Which antenna characteristic does this describe?"];
            [Answer1 setTitle:@"Resonance" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Reciprocity" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Take off angle" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Gain" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Reciprocity"];
            break;
        case 78:
            QuestionText.text = [NSString stringWithFormat:@"The radio ground-wave component affected by the conductivity and dielectric constant of the Earth is called"];
            [Answer1 setTitle:@"direct" forState:UIControlStateNormal];
            [Answer2 setTitle:@"sky" forState:UIControlStateNormal];
            [Answer3 setTitle:@"surface" forState:UIControlStateNormal];
            [Answer4 setTitle:@"ground-reflected" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"surface"];
            break;
        case 79:
            QuestionText.text = [NSString stringWithFormat:@"The zone where no usable signal is received from a given transmitting antenna is called"];
            [Answer1 setTitle:@"Blank" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Dead" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Hop" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Skip" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Skip"];
            break;
        case 80:
            QuestionText.text = [NSString stringWithFormat:@"How many distinct layers make up the ionosphere?"];
            [Answer1 setTitle:@"Three" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Four" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Five" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Six" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Four"];
            break;
        case 81:
            QuestionText.text = [NSString stringWithFormat:@"Which radio frequency (RF) range uses the ground wave for communications from 15 to 400 miles and the sky wave for reception at distances up to 8,000 miles?"];
            [Answer1 setTitle:@"Low" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Medium" forState:UIControlStateNormal];
            [Answer3 setTitle:@"High" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Ultra-high" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Medium"];
            break;
        case 82:
            QuestionText.text = [NSString stringWithFormat:@"Which radio frequency (RF) range uses the ground wave for communicating over great distances?"];
            [Answer1 setTitle:@"Low" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Medium" forState:UIControlStateNormal];
            [Answer3 setTitle:@"High" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Ultra-high" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Low"];
            break;
        case 83:
            QuestionText.text = [NSString stringWithFormat:@"Which radio frequency (RF) range uses little ground wabe for communcations with only slight refraction of the sky waves?"];
            [Answer1 setTitle:@"Low" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Medium" forState:UIControlStateNormal];
            [Answer3 setTitle:@"High" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Ultra-high" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"High"];
            break;
        case 84:
            QuestionText.text = [NSString stringWithFormat:@"If the lines of electric force are prallel to the surface of the Earth, the radio wave is polarized"];
            [Answer1 setTitle:@"vertically" forState:UIControlStateNormal];
            [Answer2 setTitle:@"elliptically" forState:UIControlStateNormal];
            [Answer3 setTitle:@"horizontally" forState:UIControlStateNormal];
            [Answer4 setTitle:@"directionally" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"vertically"];
            break;
        case 85:
            QuestionText.text = [NSString stringWithFormat:@"Which type of antenna is least likely to pick up manmade interference?"];
            [Answer1 setTitle:@"Vertical" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Horizontal" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Blade" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Whip" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Horizontal"];
            break;
        case 86:
            QuestionText.text = [NSString stringWithFormat:@"Earth ground is a good conductor for what type of radio frequency (RF)?"];
            [Answer1 setTitle:@"Low and high" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Medium and high" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Low and medium" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Low and high" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Low and medium"];
            break;
        case 87:
            QuestionText.text = [NSString stringWithFormat:@"When properly repairing a solid core whip antenna, do not overlap the broken ends by more than a few inches because you can degrade the antennas"];
            [Answer1 setTitle:@"insulation" forState:UIControlStateNormal];
            [Answer2 setTitle:@"magnetic field" forState:UIControlStateNormal];
            [Answer3 setTitle:@"polarization" forState:UIControlStateNormal];
            [Answer4 setTitle:@"electrical length" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"electrical length"];
            break;
        case 88:
            QuestionText.text = [NSString stringWithFormat:@"What determines the angle of radiation required for both transmitting and receiving antennas?"];
            [Answer1 setTitle:@"Distance between stations" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Antenna gain required" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Handling capability" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Physical size" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Distance between stations"];
            break;
        case 89:
            QuestionText.text = [NSString stringWithFormat:@"By using a high gain antenna at transmitter and receiver sites, you reduce"];
            [Answer1 setTitle:@"circuit loss" forState:UIControlStateNormal];
            [Answer2 setTitle:@"transmitter power" forState:UIControlStateNormal];
            [Answer3 setTitle:@"electrical antenna length" forState:UIControlStateNormal];
            [Answer4 setTitle:@"physical antenna length" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"transmitter power"];
            break;
        case 90:
            QuestionText.text = [NSString stringWithFormat:@"What type of injury can you get from high levels of radio frequency (RF) energy sent from an antenna?"];
            [Answer1 setTitle:@"Cell damage" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Nerve damage" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Radiation burns" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Electrical burns" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Radiation burns"];
            break;
        case 91:
            QuestionText.text = [NSString stringWithFormat:@"What type of equipment is used with the whip antenna?"];
            [Answer1 setTitle:@"Set" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Unchanging" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Fixed" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Portable" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Portable"];
            break;
        case 92:
            QuestionText.text = [NSString stringWithFormat:@"How does a vehicle affect the operation of a mounted whip antenna?"];
            [Answer1 setTitle:@"Provides a ground" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Obstructs the radiated circuit" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Provides proper take-off angle" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Reduces the radiation efficiency" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Provides a ground"];
            break;
        case 93:
            QuestionText.text = [NSString stringWithFormat:@"For best results, at least how many feet above the ground should you place the ends of the inverted Vee antenna?"];
            [Answer1 setTitle:@"2" forState:UIControlStateNormal];
            [Answer2 setTitle:@"4" forState:UIControlStateNormal];
            [Answer3 setTitle:@"6" forState:UIControlStateNormal];
            [Answer4 setTitle:@"8" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"6"];
            break;
        case 94:
            QuestionText.text = [NSString stringWithFormat:@"Use the near verticle incidence sky wave (NVIS) antenna within megahertz (MHz) frequencies of"];
            [Answer1 setTitle:@"2.0 to 14.0" forState:UIControlStateNormal];
            [Answer2 setTitle:@"2.0 to 29.0" forState:UIControlStateNormal];
            [Answer3 setTitle:@"14.0 to 24.9" forState:UIControlStateNormal];
            [Answer4 setTitle:@"14.0 to 29.9" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@""];
            break;
        case 95:
            QuestionText.text = [NSString stringWithFormat:@"What is the most commonly used field expediently constructed antenna?"];
            [Answer1 setTitle:@"Vee" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Inverted L" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Inverted Vee" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Half wave dipole" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Half wave dipole"];
            break;
        case 96:
            QuestionText.text = [NSString stringWithFormat:@"Which field expedient antenna is equipped with a quarter-wave vertical section and a half-wave horizontal section"];
            [Answer1 setTitle:@"Inverted L" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Inverted Vee" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Sloping Vee" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Half wave dipole" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Inverted L"];
            break;
        case 97:
            QuestionText.text = [NSString stringWithFormat:@"When terminated, what is the directivity of the long wire antenna?"];
            [Answer1 setTitle:@"Bi-directional" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Uni-directional" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Directional" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Omni-directional" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Uni-directional"];
            break;
        case 98:
            QuestionText.text = [NSString stringWithFormat:@"Where on the Vee antenna would you find the maximum radiation pattern?"];
            [Answer1 setTitle:@"Rear or point" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Right side" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Opening" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Left side" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Opening"];
            break;
        case 99:
            QuestionText.text = [NSString stringWithFormat:@"What is the directivity of the Vee antenna?"];
            [Answer1 setTitle:@"Bi-directional" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Omni-directional" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Directional" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Uni-directional" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Uni-directional"];
            break;
            
        default:
            break;
    }
    
    
    
}



-(void)Category2{
    
    NSUInteger QuestionSelected= (arc4random() %100);
    
    switch (QuestionSelected) {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"Tactical air control party (TACP) members operate at their aligned Army echelon which can range from"];
            [Answer1 setTitle:@"battalion to corps" forState:UIControlStateNormal];
            [Answer2 setTitle:@"company to division" forState:UIControlStateNormal];
            [Answer3 setTitle:@"platoon to brigade" forState:UIControlStateNormal];
            [Answer4 setTitle:@"squad to battalion" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Battalion to corps"];
            break;
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"Which is the Army's highest echelon that trains and operates as a combined arms team?"];
            [Answer1 setTitle:@"Corps" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Divison" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Brigade" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Battalion" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Divison"];
            break;
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"Which type of Army division is primarily a powerful offensive force?"];
            [Answer1 setTitle:@"Infantry" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Airborne" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Armored" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Mechanized infantry" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Armored"];
            break;
        case 3:
            QuestionText.text = [NSString stringWithFormat:@"Which Army unit has the mission to close with the enemy using available firepower and controlled maneuvers?"];
            [Answer1 setTitle:@"Division" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Corps" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Battalion" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Brigade" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Brigade"];
            break;
        case 4:
            QuestionText.text = [NSString stringWithFormat:@"Which Army command staff member is responsible for all fires on surface targets to include air support?"];
            [Answer1 setTitle:@"Fire support coordinator (FSCOORD)" forState:UIControlStateNormal];
            [Answer2 setTitle:@"G-2 / S-2" forState:UIControlStateNormal];
            [Answer3 setTitle:@"G-3 / S-3" forState:UIControlStateNormal];
            [Answer4 setTitle:@"G-4 / S-4 Air" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Fire support coordinator (FSCOORD)"];
            break;
        case 5:
            QuestionText.text = [NSString stringWithFormat:@"Which Army command staff member is responsible for planning and coordinating fire support and suppression of enemy air defenses?"];
            [Answer1 setTitle:@"Fire support coordinator (FSCOORD)" forState:UIControlStateNormal];
            [Answer2 setTitle:@"G-2 / S-2" forState:UIControlStateNormal];
            [Answer3 setTitle:@"G-3 / S-3" forState:UIControlStateNormal];
            [Answer4 setTitle:@"G-4 / S-4 Air" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Fire support coordinator (FSCOORD)"];
            break;
        case 6:
            QuestionText.text = [NSString stringWithFormat:@"Which Army echelon has a dedicated Army airspace command and control (A2C2)?"];
            [Answer1 setTitle:@"Battalion" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Brigade" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Division" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Field Army" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Division"];
            break;
        case 7:
            QuestionText.text = [NSString stringWithFormat:@"Which Army liaison officer supports the combat reporting center (CRC) and handles real-time Army airspace management issues?"];
            [Answer1 setTitle:@"Ground liaison officer (GLO)" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Air defense liaison officer" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Battlefield coordination element officer" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Airspace management liaison officer" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Airspace management liaison officer"];
            break;
        case 8:
            QuestionText.text = [NSString stringWithFormat:@"Which Army liaison officer maintains capabilities, locations, and status of air defense artillery (ADA) systems?"];
            [Answer1 setTitle:@"Air defense liaison officer" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Ground liaison officer (GLO)" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Air reconnaissance liaison officer" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Battlefield coordination element officer" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Air defense liaison officer"];
            break;
        case 9:
            QuestionText.text = [NSString stringWithFormat:@"Which Army liaison officer advises the Air Force weapons assignment officer on employment of air defense artillery (ADA)"];
            [Answer1 setTitle:@"Ground liaison officer (GLO)" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Air defense liaison officer" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Air reconnaissance liaison officer" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Battlefield coordination element officer" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Air defense liaison officer"];
            break;
        case 10:
            QuestionText.text = [NSString stringWithFormat:@"How does the Air Force organize its forces overseas?"];
            [Answer1 setTitle:@"Certain function" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Specific mission" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Geographical" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Administrative" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Geographical"];
            break;
        case 11:
            QuestionText.text = [NSString stringWithFormat:@"How many major commands (MAJCOM) does the Air Force have to accomplish its mission?"];
            [Answer1 setTitle:@"Three" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Five" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Seven" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Nine" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Nine"];
            break;
        case 12:
            QuestionText.text = [NSString stringWithFormat:@"How many wing commands are found in the Air Force structure?"];
            [Answer1 setTitle:@"One" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Two" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Three" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Four" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Three"];
            break;
        case 13:
            QuestionText.text = [NSString stringWithFormat:@"Which theater air control system (TACS) element is the wing commander's command and control element?"];
            [Answer1 setTitle:@"Air operations center (AOC)" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Wing operations center (WOC)" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Air support operations center (ASOC)" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Tactical air control party (TACP)" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Wing operations center (WOC)"];
            break;
        case 14:
            QuestionText.text = [NSString stringWithFormat:@"In garrison, tactical air control party (TACP), falls under the operational control of what unit?"];
            [Answer1 setTitle:@"Aligned Army unit" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Assigned Army unit" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Air support operations center (ASOC)" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Air support operations group (ASOG)" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Air support operations group (ASOG)"];
            break;
        case 15:
            QuestionText.text = [NSString stringWithFormat:@"Tactical air control party (TACP) operations fall into what two general categories?"];
            [Answer1 setTitle:@"Control and communications" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Control and direction" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Liaison and control" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Liaison and communications" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Liaison and control"];
            break;
        case 16:
            QuestionText.text = [NSString stringWithFormat:@"In tactical air control party (TACP), which member integrates air support sorties with the Army unit scheme of maneuver?"];
            [Answer1 setTitle:@"Air liaison officer (ALO)" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Air mobility liaison officer (AMLO)" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Joint terminal attack controller (JTAC)" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Tactical air command and control specialist (TACCS)" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Air liaison officer (ALO)"];
            break;
        case 17:
            QuestionText.text = [NSString stringWithFormat:@"In a tactical air control party (TACP), which member may conduct drop zone operations when drop zone support team is not available?"];
            [Answer1 setTitle:@"Air liaison officer (ALO)" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Air mobility liaison officer (AMLO)" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Joint terminal attack controller (JTAC)" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Tactical air command and control specialist (TACCS)" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Air mobility liaison officer (AMLO)"];
            break;
        case 18:
            QuestionText.text = [NSString stringWithFormat:@"Which Army echelon is an air support operations center (ASOC) normally collocated with?"];
            [Answer1 setTitle:@"Division" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Field Army" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Corps" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Brigade" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Corps"];
            break;
        case 19:
            QuestionText.text = [NSString stringWithFormat:@"Who does the corps air liaison officer (ALO) or air support operation center (ASOC) director report to?"];
            [Answer1 setTitle:@"The air operation center's director or commander" forState:UIControlStateNormal];
            [Answer2 setTitle:@"The wing operations center's director or commander" forState:UIControlStateNormal];
            [Answer3 setTitle:@"The land component commander" forState:UIControlStateNormal];
            [Answer4 setTitle:@"The corps commander" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"The air operation center's director or commander"];
            break;
        case 20:
            QuestionText.text = [NSString stringWithFormat:@"Which radio net is used by the air support operations center (ASOC) to interface with other theater air control system (TACS) units?"];
            [Answer1 setTitle:@"Command and control net" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Tactical air direction net" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Tactical air control net" forState:UIControlStateNormal];
            [Answer4 setTitle:@"In-flight report net" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Command and control net"];
            break;
        case 21:
            QuestionText.text = [NSString stringWithFormat:@"Which radio net is used to direct and control aircraft engaged in theater air support?"];
            [Answer1 setTitle:@"Command and control net" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Tactical air direction net" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Tactical air control net" forState:UIControlStateNormal];
            [Answer4 setTitle:@"In-flight report net" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"In-flight report net"];
            break;
        case 22:
            QuestionText.text = [NSString stringWithFormat:@"Which theater air control system (TACS) element coordinates strategic operations within the theater airlift management system and collocates with the Air operations center (AOC)?"];
            [Answer1 setTitle:@"Tanker airlift control center (TACC)" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Control and reporting center (CRC)" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Air mobility element (AME)" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Tanker airlift control element (TALCE)" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Air mobility element (AME)"];
            break;
        case 23:
            QuestionText.text = [NSString stringWithFormat:@"Which theater air control system (TACS) element provides near-real-time data to efficiently execute the battle plan?"];
            [Answer1 setTitle:@"Forward air controller (airborne) (FAC[A])" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Tactical air coordinator (airborne) (TAC[A])" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Airborne warning and control system (AWACS)" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Joint surveillance, target attack radar system (JSTARS)" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Joint surveillance, target attack radar system (JSTARS)"];
            break;
        case 24:
            QuestionText.text = [NSString stringWithFormat:@"How many divisions are found in the air operations center (AOC)?"];
            [Answer1 setTitle:@"Four" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Five" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Six" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Seven" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Five"];
            break;
        case 25:
            QuestionText.text = [NSString stringWithFormat:@"Normally, how many hours will an air tasking order cover?"];
            [Answer1 setTitle:@"12" forState:UIControlStateNormal];
            [Answer2 setTitle:@"24" forState:UIControlStateNormal];
            [Answer3 setTitle:@"48" forState:UIControlStateNormal];
            [Answer4 setTitle:@"72" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"24"];
            break;
        case 26:
            QuestionText.text = [NSString stringWithFormat:@"Which document from the air operations center (AOC) provides operators critical guidance on how to execute the air tasking order (ATO)?"];
            [Answer1 setTitle:@"Air tasking order" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Airspace control order" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Special instructions" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Operations order" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Special instructions"];
            break;
        case 27:
            QuestionText.text = [NSString stringWithFormat:@"The battlefield coordination detachment (BCD) is the land component commander's (LCC) liaison and collocated with the"];
            [Answer1 setTitle:@"air support operations center (ASOC)" forState:UIControlStateNormal];
            [Answer2 setTitle:@"wing operations center (WOC)" forState:UIControlStateNormal];
            [Answer3 setTitle:@"airlift coordination cell (ALCC)" forState:UIControlStateNormal];
            [Answer4 setTitle:@"air operations center (AOC)" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"air operations center (AOC)"];
            break;
        case 28:
            QuestionText.text = [NSString stringWithFormat:@"How many sections are in the battlefield coordination detachment (BCD) structure?"];
            [Answer1 setTitle:@"Four" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Five" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Six" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Seven" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Six"];
            break;
        case 29:
            QuestionText.text = [NSString stringWithFormat:@"Which section within the battlefield coordination detachment (BCD) ensures the synchronization between the current air operations and the current Army operations?"];
            [Answer1 setTitle:@"Airlift" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Operations" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Plans" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Intelligence" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Operations"];
            break;
        case 30:
            QuestionText.text = [NSString stringWithFormat:@"Which section within the battlefield coordination detachment (BCD) exchanges the information with the control and reporting center (CRC), land component headquarters, and air defense artillery (ADA) headquarters?"];
            [Answer1 setTitle:@"Plans" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Air defense" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Operations" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Intelligence" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Operations"];
            break;
        case 31:
            QuestionText.text = [NSString stringWithFormat:@"Which section within the battlefield coordination detachment (BCD) maintains identification codes of all Army forces (ARFOR) airspace users including fire support and unmanned aerial vehicle (UAV)?"];
            [Answer1 setTitle:@"Plans" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Airlift" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Intelligence" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Airspace management" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Airspace management"];
            break;
        case 32:
            QuestionText.text = [NSString stringWithFormat:@"What is the function of intelligence, surveillance, and reconnaissance (ISR)?"];
            [Answer1 setTitle:@"Acquiring and processing information" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Acquiring and identifying information" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Planning and identifying information" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Planning and processing information" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Acquiring and processing information"];
            break;
        case 33:
            QuestionText.text = [NSString stringWithFormat:@"The intelligence, surveillance, and reconnaissance (ISR) term 'tasking authority' simply means who"];
            [Answer1 setTitle:@"can operate the system" forState:UIControlStateNormal];
            [Answer2 setTitle:@"owns the system" forState:UIControlStateNormal];
            [Answer3 setTitle:@"uses the system" forState:UIControlStateNormal];
            [Answer4 setTitle:@"flies the system" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Owns the system"];
            break;
        case 34:
            QuestionText.text = [NSString stringWithFormat:@"What is the name of the critical pieces of intelligence that a commander must know about the enemy and the operational environment by a particular time in order to plan and execute a successful mission?"];
            [Answer1 setTitle:@"Information requirements" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Request for information (RIF)" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Priority intelligence requirements (PIR)" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Essential intelligence requirements" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Priority intelligence requirements (PIR)"];
            break;
        case 35:
            QuestionText.text = [NSString stringWithFormat:@"What is the name of any specific time-sensitive, ad hoc requirement for intelligence information or products to support an ongoing operation or crisis not necessarily related to the standing requirements?"];
            [Answer1 setTitle:@"Priority intelligence requirements" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Essential intelligence requirements" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Information requirements" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Requests for information (RIF)" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Requests for information (RIF)"];
            break;
        case 36:
            QuestionText.text = [NSString stringWithFormat:@"The science portion of command deals with the study and method of a body of facts and processes based on principles from"];
            [Answer1 setTitle:@"the physical or material world" forState:UIControlStateNormal];
            [Answer2 setTitle:@"specific skill" forState:UIControlStateNormal];
            [Answer3 setTitle:@"decision-making and leadership" forState:UIControlStateNormal];
            [Answer4 setTitle:@"responsibility, accountability, and delegation" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"The physical or material world"];
            break;
        case 37:
            QuestionText.text = [NSString stringWithFormat:@"What should leadership provide to influence their people in order to accomplish the mission?"];
            [Answer1 setTitle:@"Command, authority and decision" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Purpose, direction and motivation" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Control, command and decision" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Communication, structure and information" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Purpose, direction and motivation"];
            break;
        case 38:
            QuestionText.text = [NSString stringWithFormat:@"What are the elements that make up the control portion of the command and control (C2) system?"];
            [Answer1 setTitle:@"Authority, decision-making, and leadership" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Authority, decision-making, and structure" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Information, communication, and structure" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Information, communication, and leadership" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Information, communication, and structure"];
            break;
        case 39:
            QuestionText.text = [NSString stringWithFormat:@"How many types of suppression of enemy air defenses (SEAD) are there?"];
            [Answer1 setTitle:@"Two" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Four" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Five" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Six" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Two"];
            break;
        case 40:
            QuestionText.text = [NSString stringWithFormat:@"What do planners consider if an operation exposes friendly aircraft to an enemy's air defense?"];
            [Answer1 setTitle:@"The availablility and capability of support of enemy air defense (SEAD) capable systems" forState:UIControlStateNormal];
            [Answer2 setTitle:@"The commander's guidance and intent" forState:UIControlStateNormal];
            [Answer3 setTitle:@"The importance of the mission's objective" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Rules of engagement (ROE)" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"The availablility and capability of support of enemy air defense (SEAD) capable systems"];
            break;
        case 41:
            QuestionText.text = [NSString stringWithFormat:@"What are the objectives of electronic warfare (EW)?"];
            [Answer1 setTitle:@"Control and exploit only" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Control, exploit, and enhance" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Control the means of attack" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Control the means of offense and defensive operations" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Control, exploit, and enhance"];
            break;
        case 42:
            QuestionText.text = [NSString stringWithFormat:@"For offensive electronic warfare (EW), what is required for a more sophisticated jamming?"];
            [Answer1 setTitle:@"More power in the jammer" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Broader spectrum in the jammer" forState:UIControlStateNormal];
            [Answer3 setTitle:@"More intelligence in the jammer" forState:UIControlStateNormal];
            [Answer4 setTitle:@"More directed energy in jammer" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"More intelligence in the jammer"];
            break;
        case 43:
            QuestionText.text = [NSString stringWithFormat:@"Which type of targets is the focus for joint tactics, techniques, and procedures (TTP)"];
            [Answer1 setTitle:@"Enemy artillery units" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Enemy armored vehicles" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Traditional targets to the enemy" forState:UIControlStateNormal];
            [Answer4 setTitle:@"High importance to the enemy" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"High importance to the enemy"];
            break;
        case 44:
            QuestionText.text = [NSString stringWithFormat:@"Which term of joint tactics, techniques, and procedures (TTP) consists of operations to divert, disrupt, delay, or destroy the enemy's surface potential before it can be used effectively against friendly forces?"];
            [Answer1 setTitle:@"Air interdiction (AI)" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Battlefield air interdiction" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Close air support (CAS" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Combat air patrol" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Air interdiction (AI)"];
            break;
        case 45:
            QuestionText.text = [NSString stringWithFormat:@"Air interdiction (AI) attack on which type of target interferes with an adversary's ability to mass, maneuver, withdraw, supply, and reinforce surface forces?"];
            [Answer1 setTitle:@"Personnel" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Command and control systems" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Material" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Logistics" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Command and control systems"];
            break;
        case 46:
            QuestionText.text = [NSString stringWithFormat:@"In order for close air support (CAS) to be effective, all of the following conditions are required except for"];
            [Answer1 setTitle:@"train and develop skills" forState:UIControlStateNormal];
            [Answer2 setTitle:@"effective command and control (C2)" forState:UIControlStateNormal];
            [Answer3 setTitle:@"inauspicious environmental conditions" forState:UIControlStateNormal];
            [Answer4 setTitle:@"streamlined and flexible procedures" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Inauspicious environmental conditions"];
            break;
        case 47:
            QuestionText.text = [NSString stringWithFormat:@"What effects can a commander produce by orchestrating close air support (CAS) with other surface and air operations?"];
            [Answer1 setTitle:@"National" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Strategic" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Tactical" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Operational" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Operational"];
            break;
        case 48:
            QuestionText.text = [NSString stringWithFormat:@"What ensures the execution of close air support (CAS) is on the right target and reduces the possibility of fratricide?"];
            [Answer1 setTitle:@"Terminal control" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Streamlined procedures" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Effective planning" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Detailed integration" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Terminal control"];
            break;
        case 49:
            QuestionText.text = [NSString stringWithFormat:@"Which battlefield operation requires special care to identify friendly forces and ensure that they are not subject to direct attack or weapons effects from close air support (CAS) ordnance?"];
            [Answer1 setTitle:@"Deep operations" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Rear operations" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Close operations" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Offensive operations" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Rear operations"];
            break;
        case 50:
            QuestionText.text = [NSString stringWithFormat:@"Which battlefield operation with close air support (CAS) gives the maneuver force commander freedom of movement?"];
            [Answer1 setTitle:@"Close operations" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Offensive operations" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Deep operations" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Rear operations" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Offensive operations"];
            break;
        case 51:
            QuestionText.text = [NSString stringWithFormat:@"Which battlefield operation with close air support (CAS) can cause the enemy to deploy prematurely?"];
            [Answer1 setTitle:@"Offensive operations" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Deep operations" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Rear operations" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Defensive operations" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Defensive operations"];
            break;
        case 52:
            QuestionText.text = [NSString stringWithFormat:@"The ability to mass joint fire support at a decisive point and to provide the supporting fires needed to achieve the commander's objectives relies on"];
            [Answer1 setTitle:@"coherent planning" forState:UIControlStateNormal];
            [Answer2 setTitle:@"terminal contro" forState:UIControlStateNormal];
            [Answer3 setTitle:@"detailed integration" forState:UIControlStateNormal];
            [Answer4 setTitle:@"streamlined procedures" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Coherent planning"];
            break;
        case 53:
            QuestionText.text = [NSString stringWithFormat:@"What channel does a request for preplanned close air support (CAS) mission flow through up to higher echelons?"];
            [Answer1 setTitle:@"G/S-2" forState:UIControlStateNormal];
            [Answer2 setTitle:@"G/S-3 Air" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Fire support coordination element" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Corps air liaison officer" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Fire support coordination element"];
            break;
        case 54:
            QuestionText.text = [NSString stringWithFormat:@"Preplanned close air support (CAS) requests are categorized as either scheduled or"];
            [Answer1 setTitle:@"alerted" forState:UIControlStateNormal];
            [Answer2 setTitle:@"ready" forState:UIControlStateNormal];
            [Answer3 setTitle:@"on-call" forState:UIControlStateNormal];
            [Answer4 setTitle:@"standby" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"On-call"];
            break;
        case 55:
            QuestionText.text = [NSString stringWithFormat:@"What information can 'on-call' requests for close air support (CAS) specify?"];
            [Answer1 setTitle:@"Ground or orbit alert" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Ready or ground alert" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Airborne or ready alert" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Airborne or ground alert" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Airborne or ground alert"];
            break;
        case 56:
            QuestionText.text = [NSString stringWithFormat:@"Which channel does the mission data for preplanned requests funnel down through back to the requestor?"];
            [Answer1 setTitle:@"Ground maneuver forces channel" forState:UIControlStateNormal];
            [Answer2 setTitle:@"The G/S-2 channel" forState:UIControlStateNormal];
            [Answer3 setTitle:@"The tactical air control party's (TACP) channel" forState:UIControlStateNormal];
            [Answer4 setTitle:@"The air support operations center's (ASOC) channel" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Ground maneuver forces channel"];
            break;
        case 57:
            QuestionText.text = [NSString stringWithFormat:@"What advice does the corps air liaison officer (ALO) give to the corps G-3 / S-3 Air if on-call close air support is unavailable"];
            [Answer1 setTitle:@"Forward the request to the joint force commander (JFC) to the air operations center (AOC)" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Forward the request to the battlefield coordination detachment (BCD) at the AOC" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Forward the request to the combat intelligence division (CID) to the AOC" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Forward the request to the land component commander (LCC) to the AOC" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Forward the request to the battlefield coordination detachment (BCD) at the AOC"];
            break;
        case 58:
            QuestionText.text = [NSString stringWithFormat:@"Who allocates close air support (CAS) and decides whether to divert other CAS missions to the corps requesting additional missions?"];
            [Answer1 setTitle:@"The joint force commander (JFC)" forState:UIControlStateNormal];
            [Answer2 setTitle:@"The senior air liaison officer (ALO)" forState:UIControlStateNormal];
            [Answer3 setTitle:@"The land component commander (LCC)" forState:UIControlStateNormal];
            [Answer4 setTitle:@"The joint air component commander (JFACC)" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"The land component commander (LCC)"];
            break;
        case 59:
            QuestionText.text = [NSString stringWithFormat:@"How do commanders take full advantage of the battlefield opportunities to maintain the momentum of an offesnive action or reduce operational and tactical risk?"];
            [Answer1 setTitle:@"By maneuver of forces" forState:UIControlStateNormal];
            [Answer2 setTitle:@"By massing firepower" forState:UIControlStateNormal];
            [Answer3 setTitle:@"By dispersing firepower" forState:UIControlStateNormal];
            [Answer4 setTitle:@"By prioritizing firepower" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"By massing firepower"];
            break;
        case 60:
            QuestionText.text = [NSString stringWithFormat:@"Which planning consideration within the mission, enemy troops, terrain, and time (METT-T), determines which close air support (CAS) will be employed?"];
            [Answer1 setTitle:@"Enemy" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Time" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Troops" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Mission" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Enemy"];
            break;
        case 61:
            QuestionText.text = [NSString stringWithFormat:@"Which planning consideration within the mission, enemy, troops, terrain, and time (METT-T), can limit communications and visual line of sight (LOS) for identifying the target and/or aircraft?"];
            [Answer1 setTitle:@"Time" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Terrain" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Enemy" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Mission" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Terrain"];
            break;
        case 62:
            QuestionText.text = [NSString stringWithFormat:@"What is the basic consideration of close air support (CAS) missions involving laser-guided weapons (LGW) besides coordination of laser-compatible designators and ornance?"];
            [Answer1 setTitle:@"Threats in the area" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Skill of the operator" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Attack parameters" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Type of target" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Attack parameters"];
            break;
        case 63:
            QuestionText.text = [NSString stringWithFormat:@"What is the primary or standard map datum in use today?"];
            [Answer1 setTitle:@"WGS-79" forState:UIControlStateNormal];
            [Answer2 setTitle:@"WGS-80" forState:UIControlStateNormal];
            [Answer3 setTitle:@"WGS-82" forState:UIControlStateNormal];
            [Answer4 setTitle:@"WGS-84" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"WGS-84"];
            break;
        case 64:
            QuestionText.text = [NSString stringWithFormat:@"How many grid coordinates digits make up the standard for target location while using the military grid reference system (MGRS)?"];
            [Answer1 setTitle:@"Six" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Eight" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Ten" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Twelve" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Six"];
            break;
        case 65:
            QuestionText.text = [NSString stringWithFormat:@"Many global positioning system (GPS) receivers can compute quick, accurate coordinate conversions, provided the"];
            [Answer1 setTitle:@"batteries are fully charged" forState:UIControlStateNormal];
            [Answer2 setTitle:@"users are properly trained" forState:UIControlStateNormal];
            [Answer3 setTitle:@"proper codes are installed" forState:UIControlStateNormal];
            [Answer4 setTitle:@"satelites are on and working" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Users are properly trained"];
            break;
        case 66:
            QuestionText.text = [NSString stringWithFormat:@"Which condition for effective close air support (CAS) permits CAS to function more effectively and denies that same advantage to the enemy?"];
            [Answer1 setTitle:@"Command and control (C2)" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Prompt response" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Air superiority" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Suppresion of enemy air defenses (SEAD)" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Air superiority"];
            break;
        case 67:
            QuestionText.text = [NSString stringWithFormat:@"Which condition for effective close air support (CAS) allows a commander to exploit fleeting battlefield opportunities?"];
            [Answer1 setTitle:@"Suppression of enemy air defense (SEAD)" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Air superiority" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Command and control (C2)" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Prompt response" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Prompt response"];
            break;
        case 68:
            QuestionText.text = [NSString stringWithFormat:@"Which fire support coordination measure (FSCM) is established and adjusted by the land forces commander, usually at the corps echelon?"];
            [Answer1 setTitle:@"Fire support coordination line (FSCL)" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Restrictive fire line" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Coordinated fire line" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Permissive fire coordination line" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Fire support coordination line (FSCL)"];
            break;
        case 69:
            QuestionText.text = [NSString stringWithFormat:@"Which fire support coordination measure (FSCM) allows conventional or improved conventional indirect fire to engage targets any time within the zone of the establishing headquarters without additional coordination?"];
            [Answer1 setTitle:@"Restrictive fire line" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Coordinated fire line" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Fire support coordination line (FSCL)" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Air support fire coordination line" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Coordinated fire line"];
            break;
        case 70:
            QuestionText.text = [NSString stringWithFormat:@"Which fire support coordination measure (FSCM) prohibits all fires into an area without prior clearance?"];
            [Answer1 setTitle:@"Restrictive fire area" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Free-fire area" forState:UIControlStateNormal];
            [Answer3 setTitle:@"No-fire area" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Airspace coordination area" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"No-fire area"];
            break;
        case 71:
            QuestionText.text = [NSString stringWithFormat:@"Fratricide is unwanted, undesireable and what?"];
            [Answer1 setTitle:@"inevitable" forState:UIControlStateNormal];
            [Answer2 setTitle:@"unavoidable" forState:UIControlStateNormal];
            [Answer3 setTitle:@"indispensible" forState:UIControlStateNormal];
            [Answer4 setTitle:@"avoidable" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Avoidable"];
            break;
        case 72:
            QuestionText.text = [NSString stringWithFormat:@"Which term employs the concept that describes the unintended physical damage to any non-combatant person(s), property, or environment(s) occuring incidental to military operations?"];
            [Answer1 setTitle:@"Collateral damage" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Fratricide" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Rules of engagement (ROE)" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Law of armed conflict (LOAC)" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Collateral damage"];
            break;
        case 73:
            QuestionText.text = [NSString stringWithFormat:@"Which type of weapon is not applicable for estimating the damage from employing under the collateral damage estimates (CDE)?"];
            [Answer1 setTitle:@"Kinetic" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Non-kinetic" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Retarded munitions" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Conventional munitions" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Non-kinetic"];
            break;
        case 74:
            QuestionText.text = [NSString stringWithFormat:@"Which term describes the capability to rapidly and accurately identify friendly, enemy and neutral forces, manage and control the battle space, and minimize to risk of fratricide?"];
            [Answer1 setTitle:@"Situational awareness (SA)" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Target identification (TID)" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Combat identification (CID)" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Positive identification (PID)" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Combat identification (CID)"];
            break;
        case 75:
            QuestionText.text = [NSString stringWithFormat:@"Which factor or condtion of positive identification (PID) identifies the capacity of a person to process information, which makes it difficult to maintain situational awareness (SA) in a complex environment?"];
            [Answer1 setTitle:@"Environmental condition" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Operational factor" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Physical factor" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Human factor" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Human factor"];
            break;
        case 76:
            QuestionText.text = [NSString stringWithFormat:@"Which factor or condition of positive identification (PID) addresses a certain type of knowledge that is difficult and time consuming to acquire?"];
            [Answer1 setTitle:@"Human" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Physical" forState:UIControlStateNormal];
            [Answer3 setTitle:@"State of equipment" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Operational" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Operational"];
            break;
        case 77:
            QuestionText.text = [NSString stringWithFormat:@"Within how many meters of the target should a visual mark impact near the target to ensure a successful attack?"];
            [Answer1 setTitle:@"50" forState:UIControlStateNormal];
            [Answer2 setTitle:@"100" forState:UIControlStateNormal];
            [Answer3 setTitle:@"150" forState:UIControlStateNormal];
            [Answer4 setTitle:@"200" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"100"];
            break;
        case 78:
            QuestionText.text = [NSString stringWithFormat:@"Within how many seconds prior to close air support (CAS) ordnance impact should the target marks from indirect fire munitions appear?"];
            [Answer1 setTitle:@"10 to 25" forState:UIControlStateNormal];
            [Answer2 setTitle:@"20 to 35" forState:UIControlStateNormal];
            [Answer3 setTitle:@"30 to 45" forState:UIControlStateNormal];
            [Answer4 setTitle:@"40 to 55" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"30 to 45"];
            break;
        case 79:
            QuestionText.text = [NSString stringWithFormat:@"Within how many meters of the target should a target mark from indirect fire be from the target to be efficient enough to direct close air support (CAS) aircraft?"];
            [Answer1 setTitle:@"100" forState:UIControlStateNormal];
            [Answer2 setTitle:@"200" forState:UIControlStateNormal];
            [Answer3 setTitle:@"300" forState:UIControlStateNormal];
            [Answer4 setTitle:@"400" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"300"];
            break;
        case 80:
            QuestionText.text = [NSString stringWithFormat:@"How many types of categories of close air support (CAS) missions are there?"];
            [Answer1 setTitle:@"Three" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Four" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Five" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Six" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Three"];
            break;
        case 81:
            QuestionText.text = [NSString stringWithFormat:@"Who does the responsibility for expenditure of ordnance rests with?"];
            [Answer1 setTitle:@"Lead aircraft pilot" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Maneuver force commander" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Terminal attack controller" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Fire support coordinator" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Maneuver force commander"];
            break;
        case 82:
            QuestionText.text = [NSString stringWithFormat:@"What is the bomb damage assessment (BDA) used for?"];
            [Answer1 setTitle:@"Updating the enemy order of battle" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Tallying for targets destroyed by aircraft" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Updating the maps with locations of destroyed vehicles" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Tallying of targets destroyed by the terminal attack controller" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Updating the enemy order of battle"];
            break;
        case 83:
            QuestionText.text = [NSString stringWithFormat:@"What are the four characteristics of a bomb"];
            [Answer1 setTitle:@"Body, tail, fusing, and fragmentation pattern" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Body, tail, fusing, and blast pattern" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Body, tail, fusing, and guidance" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Blast, fragmentation, penetration, and incediary" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Body, tail, fusing, and guidance"];
            break;
        case 84:
            QuestionText.text = [NSString stringWithFormat:@"How do the pilots aim rockets at a target?"];
            [Answer1 setTitle:@"By pointing the nose of the aircraft at the target" forState:UIControlStateNormal];
            [Answer2 setTitle:@"By pointing the rocket pod at the target" forState:UIControlStateNormal];
            [Answer3 setTitle:@"By guiding on a laser code" forState:UIControlStateNormal];
            [Answer4 setTitle:@"By guiding on an infrared beam" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"By pointing the nose of the aircraft at the target"];
            break;
        case 85:
            QuestionText.text = [NSString stringWithFormat:@"What is the minimum number of satelites the joint direct attack munition (JDAM) must acquire for mid-course guidance?"];
            [Answer1 setTitle:@"Two" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Three" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Four" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Five" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Four"];
            break;
        case 86:
            QuestionText.text = [NSString stringWithFormat:@"What is the nomenclature of the MK-84, 2,000-pound bomb, when converted into a joint direct attack munition (JDAM)?"];
            [Answer1 setTitle:@"GBU-39" forState:UIControlStateNormal];
            [Answer2 setTitle:@"GBU-38" forState:UIControlStateNormal];
            [Answer3 setTitle:@"GBU-31" forState:UIControlStateNormal];
            [Answer4 setTitle:@"GBU-32" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"GBU-31"];
            break;
        case 87:
            QuestionText.text = [NSString stringWithFormat:@"Which homing system has a camera mounted in the nose of the qeapon aligned to the axis of that weapon?"];
            [Answer1 setTitle:@"Infrared" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Laser guidance" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Antiradiation" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Television" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Television"];
            break;
        case 88:
            QuestionText.text = [NSString stringWithFormat:@"Which homing system is not night capable or under conditions of low visibility, and is not useable against camouflage targets?"];
            [Answer1 setTitle:@"Television" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Laser guidance" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Infrared" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Antiradiation" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Television"];
            break;
        case 89:
            QuestionText.text = [NSString stringWithFormat:@"The SA-8 and Roland are examples of which surface-to-air missile (SAM) system?"];
            [Answer1 setTitle:@"Man-portable air defense system" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Short-range air defense missile system" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Medium-range air defense missile system" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Long-range air defense missile system" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Short-range air defense missile system"];
            break;
        case 90:
            QuestionText.text = [NSString stringWithFormat:@"Which type of missiles is characterized as fixed sites"];
            [Answer1 setTitle:@"Man-portable air defense system" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Short-range air defense missile system" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Medium-range air defense missile system" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Long-range air defense missile system" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Long-range air defense missile system"];
            break;
        case 91:
            QuestionText.text = [NSString stringWithFormat:@"Why are man-portable air defense systems (MANPADS) and short-range air defense (SHORAD) systems your primary threat when conducting a close air support (CAS) mission?"];
            [Answer1 setTitle:@"These systems are highly accurate" forState:UIControlStateNormal];
            [Answer2 setTitle:@"These systems are available to every enemy soldier" forState:UIControlStateNormal];
            [Answer3 setTitle:@"These systems are cheap to make and therefore plentiful" forState:UIControlStateNormal];
            [Answer4 setTitle:@"These systems are found in the forward deployed area" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"These systems are found in the forward deployed area"];
            break;
        case 92:
            QuestionText.text = [NSString stringWithFormat:@"Which system uses a fire direction and control method of continuous fire, aided by observing and correcting the flight path of the tracer rounds into the target?"];
            [Answer1 setTitle:@"Antiaircraft machine guns" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Light antiaircraft artillery" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Heavy antiaircraft artillery" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Medium antiaircraft artillery" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Antiaircraft machine guns"];
            break;
        case 93:
            QuestionText.text = [NSString stringWithFormat:@"Which antiaircraft artillery system has a caliber range of 20 mm to 57 mm?"];
            [Answer1 setTitle:@"Light antiaircraft artillery" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Antiaircraft machine guns" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Heavy antiaircraft artillery" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Medium aintiaircraft artillery" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Light antiaircraft artillery"];
            break;
        case 94:
            QuestionText.text = [NSString stringWithFormat:@"Which system can be either towed or self-propelled, and a crew of three to four usually operates it?"];
            [Answer1 setTitle:@"Antiaircraft machine guns" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Light antiaircraft artillery" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Medium antiaircraft artillery" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Heavy antiaircraft artillery" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Light antiaircraft artillery"];
            break;
        case 95:
            QuestionText.text = [NSString stringWithFormat:@"Which antiaircraft artillery system has a caliber range of 75 mm to 130 mm"];
            [Answer1 setTitle:@"Light antiaircraft artillery" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Antiaircraft machine guns" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Heavy antiaircraft machine guns" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Medium antiaircraft artillery" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Medium antiaircraft artillery"];
            break;
        case 96:
            QuestionText.text = [NSString stringWithFormat:@"Which priority requires the casualty to be evacuated within four hours?"];
            [Answer1 setTitle:@"Priority" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Routine" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Urgent" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Urgent surgical" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Priority"];
            break;
        case 97:
            QuestionText.text = [NSString stringWithFormat:@"What information goes in line two of the medical evacuation (MEDEVAC) 9-Line form?"];
            [Answer1 setTitle:@"Location" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Radio frequency and call sign" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Number of casualties" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Precedence" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Location"];
            break;
        case 98:
            QuestionText.text = [NSString stringWithFormat:@"Which line of the medical evacuation (MEDEVAC) 9-Line form is used for marking the landing zone?"];
            [Answer1 setTitle:@"Five" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Six" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Seven" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Eight" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Seven"];
            break;
        case 99:
            QuestionText.text = [NSString stringWithFormat:@"Which line of the medical evacuation (MEDEVAC) 9-Line form identifies whether the landing zone is contaminated with nuclear biological chemicals (NBC) agents?"];
            [Answer1 setTitle:@"Six" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Seven" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Eight" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Nine" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Nine"];
            break;
            
        default:
            break;
    }
    
    
    
}

-(void)Category3{
    
    NSUInteger QuestionSelected= (arc4random() %65);
    
    switch (QuestionSelected) {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"How many basic categories of frequency bands are primarily used by tactical air control parties?"];
            [Answer1 setTitle:@"Three" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Four" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Five" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Six" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Four"];
            break;
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"What element does the Single Channel Ground and Airborne Radio System (SINCGARS) Electronic Set (ESET) contain?"];
            [Answer1 setTitle:@"Cue frequency" forState:UIControlStateNormal];
            [Answer2 setTitle:@"SINCGARS frequency hopping data" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Ground time of day" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Crypto key identification data" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"SINCGARS frequency hopping data"];
            break;
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"What function does the lockout in the Single Channel Ground and Airborne Radio System (SINCGARS) LOADSET perform?"];
            [Answer1 setTitle:@"Provides fixed channel frequency" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Provides inclusive channels for hopping" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Provides frequency to be skipped during hopping" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Provides cold start net operations" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Provides frequency to be skipped during hopping"];
            break;
        case 3:
            QuestionText.text = [NSString stringWithFormat:@"All of the following items are required to operate on a HAVEQUICK net except"];
            [Answer1 setTitle:@"net number" forState:UIControlStateNormal];
            [Answer2 setTitle:@"time-of-day (TOD)" forState:UIControlStateNormal];
            [Answer3 setTitle:@"word of day (WOD)" forState:UIControlStateNormal];
            [Answer4 setTitle:@"electronic set (ESET)" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Electronic set (ESET)"];
            break;
        case 4:
            QuestionText.text = [NSString stringWithFormat:@"What is the complete frequency range on the AN/PRC-117F(C) radio?"];
            [Answer1 setTitle:@"30 to 512 MHz" forState:UIControlStateNormal];
            [Answer2 setTitle:@"2 to 512 MHze" forState:UIControlStateNormal];
            [Answer3 setTitle:@"30 to 87.975 MHz" forState:UIControlStateNormal];
            [Answer4 setTitle:@"30 to 399.975 MHz" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"30 to 512 MHz"];
            break;
        case 5:
            QuestionText.text = [NSString stringWithFormat:@"What is the power output for the 400 to 512 MHz frequency range on the AN/PRC-117F(C) radio?"];
            [Answer1 setTitle:@"1 to 5 watts" forState:UIControlStateNormal];
            [Answer2 setTitle:@"1 to 10 watts" forState:UIControlStateNormal];
            [Answer3 setTitle:@"1 to 15 watts" forState:UIControlStateNormal];
            [Answer4 setTitle:@"1 to 20 watts" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"1 to 10 watts"];
            break;
        case 6:
            QuestionText.text = [NSString stringWithFormat:@"Which function control switch position on the AN/PRC-117F(C) radio would you use to delete all crypto variable and transmission security keys"];
            [Answer1 setTitle:@"OFF (radio off)" forState:UIControlStateNormal];
            [Answer2 setTitle:@"CLR (clear)" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Z-ALL (zero-all)" forState:UIControlStateNormal];
            [Answer4 setTitle:@"TD (time delay)" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Z-ALL (zero-all)"];
            break;
        case 7:
            QuestionText.text = [NSString stringWithFormat:@"Which function control switch position on the AN/PRC-117F(C) radio would you use to electronically disconnect the hold-up battery?"];
            [Answer1 setTitle:@"CLR (clear)" forState:UIControlStateNormal];
            [Answer2 setTitle:@"OFF (radio off)" forState:UIControlStateNormal];
            [Answer3 setTitle:@"TD (time delay)" forState:UIControlStateNormal];
            [Answer4 setTitle:@"CLR (clear)" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"CLR (clear)"];
            break;
        case 8:
            QuestionText.text = [NSString stringWithFormat:@"Which connector port on the AN/PRC-117F(C) radio would you use to connect the 30 MHz to 89.9999 MHz blade antenna?"];
            [Answer1 setTitle:@"VHF Antenna" forState:UIControlStateNormal];
            [Answer2 setTitle:@"AUDIO/DATA/FILL" forState:UIControlStateNormal];
            [Answer3 setTitle:@"VHF/UHF antenna" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Accessory" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"VHF Antenna"];
            break;
        case 9:
            QuestionText.text = [NSString stringWithFormat:@"Which connector port on the AN/PRC-117F(C) radio is not used in the manpack configuration?"];
            [Answer1 setTitle:@"VHF Antenna" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Accessory" forState:UIControlStateNormal];
            [Answer3 setTitle:@"VHF/UHF antenna" forState:UIControlStateNormal];
            [Answer4 setTitle:@"AUDIO/DATA/FILL" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Accessory"];
            break;
        case 10:
            QuestionText.text = [NSString stringWithFormat:@"Which control button is also labeled as 'NET' on some AN/PRC-117F(C) radios?"];
            [Answer1 setTitle:@"PGM" forState:UIControlStateNormal];
            [Answer2 setTitle:@"CALL" forState:UIControlStateNormal];
            [Answer3 setTitle:@"PRE" forState:UIControlStateNormal];
            [Answer4 setTitle:@"CLR" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"PRE"];
            break;
        case 11:
            QuestionText.text = [NSString stringWithFormat:@"What position must the function switch be in on the AN/PRC-117F(C) radio prior to loading a fill from the AN/PYQ-10 Simple Key Loader (SKL)?"];
            [Answer1 setTitle:@"PT" forState:UIControlStateNormal];
            [Answer2 setTitle:@"CT" forState:UIControlStateNormal];
            [Answer3 setTitle:@"RV" forState:UIControlStateNormal];
            [Answer4 setTitle:@"LD" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"LD"];
            break;
        case 12:
            QuestionText.text = [NSString stringWithFormat:@"How many communication security (COMSEC) keys can the AN/PRC-117F(C) radio hold for each COMSEC type?"];
            [Answer1 setTitle:@"25" forState:UIControlStateNormal];
            [Answer2 setTitle:@"20" forState:UIControlStateNormal];
            [Answer3 setTitle:@"15" forState:UIControlStateNormal];
            [Answer4 setTitle:@"10" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"25"];
            break;
        case 13:
            QuestionText.text = [NSString stringWithFormat:@"Once you have loaded a fill into the AN/PRC-117F(C) with the digital transfer device (DTD), what is the step prior to disconnecting the fill device from the AUDIO/DATA/FILL connector?"];
            [Answer1 setTitle:@"Select the desired key type" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Turn off the DTD" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Turn off the power" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Rotate the radio's function switch from LD" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Turn off the DTD"];
            break;
        case 14:
            QuestionText.text = [NSString stringWithFormat:@"Once you have loaded a fill into the AN/PRC-117(C) with a fill device, what is the last step of the process after you have turned off the fill device and disconnected it from the radio?"];
            [Answer1 setTitle:@"Turn off the power" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Turn off the fill device power" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Rotate the radio's function switch from LD" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Select the desired key type" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Rotate the radio's function switch from LD"];
            break;
        case 15:
            QuestionText.text = [NSString stringWithFormat:@"On the AN/PRC-117F(C) radio, which menu item (when entered) will automatically enter the proper satelite downlink and uplink frequencies?"];
            [Answer1 setTitle:@"Communication security (COMSEC)" forState:UIControlStateNormal];
            [Answer2 setTitle:@"NET TYPE" forState:UIControlStateNormal];
            [Answer3 setTitle:@"DATA/VOC" forState:UIControlStateNormal];
            [Answer4 setTitle:@"FREQ CODE" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"FREQ CODE"];
            break;
        case 16:
            QuestionText.text = [NSString stringWithFormat:@"Which communication security (COMSEC) type is for voice operation only for the AN/PRC-117(C) radio?"];
            [Answer1 setTitle:@"FASCINATOR" forState:UIControlStateNormal];
            [Answer2 setTitle:@"VINSON" forState:UIControlStateNormal];
            [Answer3 setTitle:@"KG-84" forState:UIControlStateNormal];
            [Answer4 setTitle:@"ANDVT" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"FASCINATOR"];
            break;
        case 17:
            QuestionText.text = [NSString stringWithFormat:@"Which communication security (COMSEC) type is for data operation only for the AN/PRC-117(C) radio?"];
            [Answer1 setTitle:@"ANDVT" forState:UIControlStateNormal];
            [Answer2 setTitle:@"KG-84" forState:UIControlStateNormal];
            [Answer3 setTitle:@"FASCINATOR" forState:UIControlStateNormal];
            [Answer4 setTitle:@"VINSON" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"KG-84"];
            break;
        case 18:
            QuestionText.text = [NSString stringWithFormat:@"What is the power level range for satelite communication (SATCOM) programming on the AN/PRC-117(C) radio?"];
            [Answer1 setTitle:@"1 to 10 watts" forState:UIControlStateNormal];
            [Answer2 setTitle:@"10 to 100 watts" forState:UIControlStateNormal];
            [Answer3 setTitle:@"2 to 20 watts" forState:UIControlStateNormal];
            [Answer4 setTitle:@"5 to 50 watts" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"2 to 20 watts"];
            break;
        case 19:
            QuestionText.text = [NSString stringWithFormat:@"On the AN/PRC-117F(C) radio, how many authorized frequencies make up the training HAVEQUICK frequency management training FMT set?"];
            [Answer1 setTitle:@"19" forState:UIControlStateNormal];
            [Answer2 setTitle:@"18" forState:UIControlStateNormal];
            [Answer3 setTitle:@"17" forState:UIControlStateNormal];
            [Answer4 setTitle:@"16" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"16"];
            break;
        case 20:
            QuestionText.text = [NSString stringWithFormat:@"What is the transmission power selection for HAVEQUICK operations on the AN/PRC-117F(C) radio?"];
            [Answer1 setTitle:@"1 to 10 watts" forState:UIControlStateNormal];
            [Answer2 setTitle:@"1 to 5 watts" forState:UIControlStateNormal];
            [Answer3 setTitle:@"2 to 10 watts" forState:UIControlStateNormal];
            [Answer4 setTitle:@"2 to 20 watts" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"1 to 10 watts"];
            break;
        case 21:
            QuestionText.text = [NSString stringWithFormat:@"On the AN/PRC-117F(C) radio manpack, what is the maximum transmission power for the SINCGARS mode?"];
            [Answer1 setTitle:@"10 watts" forState:UIControlStateNormal];
            [Answer2 setTitle:@"20 watts" forState:UIControlStateNormal];
            [Answer3 setTitle:@"30 watts" forState:UIControlStateNormal];
            [Answer4 setTitle:@"40 watts" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"10 watts"];
            break;
        case 22:
            QuestionText.text = [NSString stringWithFormat:@"When manually setting the global-time-of-day (GTOD) on the AN/PRC-117(C) radio, how many digits of the Julian date are entered for the day component of the time entry?"];
            [Answer1 setTitle:@"All the digits" forState:UIControlStateNormal];
            [Answer2 setTitle:@"The first two digits" forState:UIControlStateNormal];
            [Answer3 setTitle:@"The last two digits" forState:UIControlStateNormal];
            [Answer4 setTitle:@"the middle two digits" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"The last two digits"];
            break;
        case 23:
            QuestionText.text = [NSString stringWithFormat:@"When conducting preventative measures on your AN/PRC-117(C) radio set, how often should you replace the hold-up battery (HUB)?"];
            [Answer1 setTitle:@"Daily" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Weekly" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Semi-annually" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Annually" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Annually"];
            break;
        case 24:
            QuestionText.text = [NSString stringWithFormat:@"When conducting preventative measures on your AN/PRC-117(C) radio set, how often should you visually inspect the connectors for corrosion, damage, or looseness?"];
            [Answer1 setTitle:@"Daily" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Weekly" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Monthly" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Annually" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Weekly"];
            break;
        case 25:
            QuestionText.text = [NSString stringWithFormat:@"How many different types of troubleshooting methods are used on the AN/PRC-117(C)?"];
            [Answer1 setTitle:@"One" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Two" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Three" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Four" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Two"];
            break;
        case 26:
            QuestionText.text = [NSString stringWithFormat:@"What action should you take if you are receiving intermittent audio on the AN/PRC-117(C)?"];
            [Answer1 setTitle:@"Check the keypad display unit cable" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Check the keypad display unit" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Clean handset connector" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Move radio set away from source of strong RF signal" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Clean handset connector"];
            break;
        case 27:
            QuestionText.text = [NSString stringWithFormat:@"What is the frequency range of the PRC-117G"];
            [Answer1 setTitle:@"12 MHz to 512 MHz" forState:UIControlStateNormal];
            [Answer2 setTitle:@"30 MHz to 512 MHz" forState:UIControlStateNormal];
            [Answer3 setTitle:@"12 MHz to 1999.9950 MHz" forState:UIControlStateNormal];
            [Answer4 setTitle:@"30 MHz to 1999.9950 MHz" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"30 MHz to 1999.9950 MHz"];
            break;
        case 28:
            QuestionText.text = [NSString stringWithFormat:@"What action may cause the AN/PRC-117G to transmit undesired transmission?"];
            [Answer1 setTitle:@"Disconnecting fill device before switching from [LD]" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Initiating a self-test with cipher switch in citadel encryption (CC)" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Connecting fill device before rotating cipher switch to [LD]" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Pressing [ENT] before transmission encryption key is selected on the fill device" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Disconnecting fill device before switching from [LD]"];
            break;
        case 29:
            QuestionText.text = [NSString stringWithFormat:@"What additional tagging is done in DS-101 protocol when loading a transmission encryption key in the AN/PRC-117G"];
            [Answer1 setTitle:@"Short title" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Classification" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Platform type" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Date time stamp" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Classification"];
            break;
        case 30:
            QuestionText.text = [NSString stringWithFormat:@"When loading the AN/PRC-117G with a communication security (COMSEC) transmission encryption key (TEK) using the simple key loader (SKL), after selecting all required keys and clicking OK what option would you select from the drop-down list?"];
            [Answer1 setTitle:@"Radio" forState:UIControlStateNormal];
            [Answer2 setTitle:@"MX-18290" forState:UIControlStateNormal];
            [Answer3 setTitle:@"DS-102 protocol" forState:UIControlStateNormal];
            [Answer4 setTitle:@"DS-101 protocol" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"DS-102 protocol"];
            break;
        case 31:
            QuestionText.text = [NSString stringWithFormat:@"When loading the AN/PRC-117G with a communication security (COMSEC) transmission encryption key using the simple key loader (SKL) after selecting the appropriate protocol on the simple key loader, what is the only settings that is used?"];
            [Answer1 setTitle:@"Send wake up (5 Sec)" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Bus address (1011001)" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Baud rate (25k)" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Active mode (KYK-13)" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Active mode (KYK-13)"];
            break;
        case 32:
            QuestionText.text = [NSString stringWithFormat:@"On the AN/PRC-117G, what satelite communication (SATCOM) channel numbers would you use to access the channel programming screen in order to enter RX/TX frequencies?"];
            [Answer1 setTitle:@"000, 001, or 998" forState:UIControlStateNormal];
            [Answer2 setTitle:@"100, 101 or 998" forState:UIControlStateNormal];
            [Answer3 setTitle:@"248, 249 or 999" forState:UIControlStateNormal];
            [Answer4 setTitle:@"348, 349 or 999" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"248, 249 or 999"];
            break;
        case 33:
            QuestionText.text = [NSString stringWithFormat:@"What number in a word of day (WOD) segment indicates the position for the day of the month (DOM)?"];
            [Answer1 setTitle:@"15" forState:UIControlStateNormal];
            [Answer2 setTitle:@"14" forState:UIControlStateNormal];
            [Answer3 setTitle:@"02" forState:UIControlStateNormal];
            [Answer4 setTitle:@"01" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"14"];
            break;
        case 34:
            QuestionText.text = [NSString stringWithFormat:@"Which is not an option for the last two digits of a HAVEQUICK net?"];
            [Answer1 setTitle:@"00" forState:UIControlStateNormal];
            [Answer2 setTitle:@"50" forState:UIControlStateNormal];
            [Answer3 setTitle:@"75" forState:UIControlStateNormal];
            [Answer4 setTitle:@"25" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"75"];
            break;
        case 35:
            QuestionText.text = [NSString stringWithFormat:@"On the AN/PRC-117G, which protocol should be used to electronically transfer the word of the day (WOD) using the simple key loader?"];
            [Answer1 setTitle:@"MX-18290" forState:UIControlStateNormal];
            [Answer2 setTitle:@"KYK-13" forState:UIControlStateNormal];
            [Answer3 setTitle:@"DS-102" forState:UIControlStateNormal];
            [Answer4 setTitle:@"DS-101" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"DS-101"];
            break;
        case 36:
            QuestionText.text = [NSString stringWithFormat:@"What are the keystrokes to access the HAVEQUICK menu that allows for creation or modification of HAVEQUICK presets?"];
            [Answer1 setTitle:@"[PGM]>SYSTEM PRESETS>SYSTEM PRESET CONFIG" forState:UIControlStateNormal];
            [Answer2 setTitle:@"[PGM]>SYSTEM PRESETS>VULOS CONFIG" forState:UIControlStateNormal];
            [Answer3 setTitle:@"[PGM]>SYSTEM PRESETS>HAVEQUICK CONFIG" forState:UIControlStateNormal];
            [Answer4 setTitle:@"[PGM]>SYSTEM PRESETS>WAVEFORM CONFIG" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"[PGM]>SYSTEM PRESETS>SYSTEM PRESET CONFIG"];
            break;
        case 37:
            QuestionText.text = [NSString stringWithFormat:@"When configuring HAVEQUICK TOD on the AN/PRC-117G if 00 is entered for either the month or day, what will the screen display?"];
            [Answer1 setTitle:@"Frequency management training (FMT)" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Single word of the day (SWOD)" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Multiple word of the day (MWOD)" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Word of the day (WOD)" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Single word of the day (SWOD)"];
            break;
        case 38:
            QuestionText.text = [NSString stringWithFormat:@"What location in the AN/PRC-117G SYSTEM PRESET CONFIG menu is the associated HOPSET assigned?"];
            [Answer1 setTitle:@"HOPSET/LOCKOUT" forState:UIControlStateNormal];
            [Answer2 setTitle:@"HOPSET LOCATION" forState:UIControlStateNormal];
            [Answer3 setTitle:@"HOPSET COMPARTMENT" forState:UIControlStateNormal];
            [Answer4 setTitle:@"TRAFFIC MODE" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"HOPSET COMPARTMENT"];
            break;
        case 39:
            QuestionText.text = [NSString stringWithFormat:@"When setting up the AN/PRC-117G for late net entry (LNE), what would cause the LNE to be disabled?"];
            [Answer1 setTitle:@"Global position system (GPS) is noy syncing" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Radio is more then four seconds off" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Net master is not available" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Radio is set to master" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Radio is set to master"];
            break;
        case 40:
            QuestionText.text = [NSString stringWithFormat:@"What does the warning message 'Fault Configuration Cleared' indicate on the AN/PRC-117G"];
            [Answer1 setTitle:@"Indicates loss of all radio configuration, (COMSEC), and (TRANSEC) data" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Keys are not assigned to the preset" forState:UIControlStateNormal];
            [Answer3 setTitle:@"RF board is temporarily or permanently rendered incapable of RX or TX on the currently loaded" forState:UIControlStateNormal];
            [Answer4 setTitle:@"A hopping net was loaded, but no valid Hopset is programmed" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Indicates loss of all radio configuration, (COMSEC), and (TRANSEC) data"];
            break;
        case 41:
            QuestionText.text = [NSString stringWithFormat:@"What type of electronic counter-countermeasure (ECCM) is the AN/PRC-117(C) not capable of?"];
            [Answer1 setTitle:@"High frequency (HF) list" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Single Channel Ground and Airborne Radio System (SINCGARS)" forState:UIControlStateNormal];
            [Answer3 setTitle:@"High frequency (HF) narrowband" forState:UIControlStateNormal];
            [Answer4 setTitle:@"High frequency (HF) wideband" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Single Channel Ground and Airborne Radio System (SINCGARS)"];
            break;
        case 42:
            QuestionText.text = [NSString stringWithFormat:@"Which position on the AN/PRC-150(C)'s function switch is not used?"];
            [Answer1 setTitle:@"Z" forState:UIControlStateNormal];
            [Answer2 setTitle:@"CT" forState:UIControlStateNormal];
            [Answer3 setTitle:@"CC" forState:UIControlStateNormal];
            [Answer4 setTitle:@"RV" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"CC"];
            break;
        case 43:
            QuestionText.text = [NSString stringWithFormat:@"When filling the AN/PRC-150(C) using the AN/CYZ-10 digital transfer device (DTD), what should you ensure the fill program is set to?"];
            [Answer1 setTitle:@"KYK-13" forState:UIControlStateNormal];
            [Answer2 setTitle:@"DTD" forState:UIControlStateNormal];
            [Answer3 setTitle:@"DS-102" forState:UIControlStateNormal];
            [Answer4 setTitle:@"DS-101" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"DS-101"];
            break;
        case 44:
            QuestionText.text = [NSString stringWithFormat:@"What are the absic characteristics of a radio net on the AN/PRC-150(C)?"];
            [Answer1 setTitle:@"Channel number, frequency, modulation type and communication security (COMSEC)" forState:UIControlStateNormal];
            [Answer2 setTitle:@"System channel, frequency, modulation type and COMSEC" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Channel number, sideband, frequency and COMSEC" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Compartment, data rate, spacing and COMSEC" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Channel number, frequency, modulation type and communication security (COMSEC)"];
            break;
        case 45:
            QuestionText.text = [NSString stringWithFormat:@"What are the two places you have to go in order to program a radio net on the AN/PRC-150(C)?"];
            [Answer1 setTitle:@"Type and system" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Preset and system" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Preset and default" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Type and default" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Preset and system"];
            break;
        case 46:
            QuestionText.text = [NSString stringWithFormat:@"What is the shortest period that you should expect the AN/PRC-150(C)'s hold up battery (HUB) to last?"];
            [Answer1 setTitle:@"12 months" forState:UIControlStateNormal];
            [Answer2 setTitle:@"8 months" forState:UIControlStateNormal];
            [Answer3 setTitle:@"4 months" forState:UIControlStateNormal];
            [Answer4 setTitle:@"18 months" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"4 months"];
            break;
        case 47:
            QuestionText.text = [NSString stringWithFormat:@"In test mode on the AN/PRC-150(C), what should you choose to test everything?"];
            [Answer1 setTitle:@"Black/Red Data" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Complete" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Prepost" forState:UIControlStateNormal];
            [Answer4 setTitle:@"System" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"System"];
            break;
        case 48:
            QuestionText.text = [NSString stringWithFormat:@"Which is not an option of the Defense Advanced GPS Receiver, if you press and hold down the WP/ENTER key?"];
            [Answer1 setTitle:@"Edit a waypoint" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Mark a waypoint" forState:UIControlStateNormal];
            [Answer3 setTitle:@"GOTO a waypoint" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Create a waypoint" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Edit a waypoint"];
            break;
        case 49:
            QuestionText.text = [NSString stringWithFormat:@"How do you cancel an operation on the Defense Advanced GPS Receiver?"];
            [Answer1 setTitle:@"Press and release the menu button" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Press and release the power button" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Press and hold the menu button" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Press and hold the power button" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Press and release the power button"];
            break;
        case 50:
            QuestionText.text = [NSString stringWithFormat:@"What conditions should the off mode display heater be used on the Defense Advanced GPS Receiver?"];
            [Answer1 setTitle:@"During transit" forState:UIControlStateNormal];
            [Answer2 setTitle:@"To conserve power" forState:UIControlStateNormal];
            [Answer3 setTitle:@"During extreme cold conditions" forState:UIControlStateNormal];
            [Answer4 setTitle:@"During high glare environments" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"During extreme cold conditions"];
            break;
        case 51:
            QuestionText.text = [NSString stringWithFormat:@"What is one of the modes of operation on the Defense Advanced GPS Receiver?"];
            [Answer1 setTitle:@"Initialize" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Practice" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Median" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Average" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Average"];
            break;
        case 52:
            QuestionText.text = [NSString stringWithFormat:@"How do you mark present position on the Defense Advanced GPS Receiver?"];
            [Answer1 setTitle:@"Push and hold ENTER key and select MARK" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Push and hold PAGE key and select MARK" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Push and hold MENU key and select MARK" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Push and hold F1 key and select MARK" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Push and hold ENTER key and select MARK"];
            break;
        case 53:
            QuestionText.text = [NSString stringWithFormat:@"What does it mean if any of the Defense Advanced GPS Receiver fire support pages are blinking after range calculation?"];
            [Answer1 setTitle:@"Danger close (>100 meters)" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Current position unavailable" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Invalid keystroke input" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Calculation error" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Current position unavailable"];
            break;
        case 54:
            QuestionText.text = [NSString stringWithFormat:@"What page is displayed on the Defense Advanced GPS Receiver when the operator selects Navigate Route from the routes page menu?"];
            [Answer1 setTitle:@"Main menu page" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Sky view page" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Nav pointer page" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Present position page" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Nav pointer page"];
            break;
        case 55:
            QuestionText.text = [NSString stringWithFormat:@"Where is the distance button on the pocket laser range finder (PLRF-15C) located?"];
            [Answer1 setTitle:@"The underside" forState:UIControlStateNormal];
            [Answer2 setTitle:@"The left side" forState:UIControlStateNormal];
            [Answer3 setTitle:@"The target's end" forState:UIControlStateNormal];
            [Answer4 setTitle:@"The operator's end" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"The operator's end"];
            break;
        case 56:
            QuestionText.text = [NSString stringWithFormat:@"To perform a 12 point calibration on the PLRF-15C, point the device northwards and press the azimuth button four times until what is displayed?"];
            [Answer1 setTitle:@"COMP" forState:UIControlStateNormal];
            [Answer2 setTitle:@"CAL" forState:UIControlStateNormal];
            [Answer3 setTitle:@"3dOn" forState:UIControlStateNormal];
            [Answer4 setTitle:@"6Pt" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"COMP"];
            break;
        case 57:
            QuestionText.text = [NSString stringWithFormat:@"What will be displayed in the reticle of the PLRF-15C if the target is too small or inaccurately targetted?"];
            [Answer1 setTitle:@"_--_" forState:UIControlStateNormal];
            [Answer2 setTitle:@"----" forState:UIControlStateNormal];
            [Answer3 setTitle:@"-__-" forState:UIControlStateNormal];
            [Answer4 setTitle:@"---_" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"----"];
            break;
        case 58:
            QuestionText.text = [NSString stringWithFormat:@"When the Multi-target indicator is illuminated on the Pocket Laser Range Finder and you want the range for the target furthest away from you, you rotate the switch to"];
            [Answer1 setTitle:@"RANGE" forState:UIControlStateNormal];
            [Answer2 setTitle:@"FIRST" forState:UIControlStateNormal];
            [Answer3 setTitle:@"LAST" forState:UIControlStateNormal];
            [Answer4 setTitle:@"TEST" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"LAST"];
            break;
        case 59:
            QuestionText.text = [NSString stringWithFormat:@"Which indicator illuminates in the eyepiece to ensure that the GLTD II laser is firing during mark operations"];
            [Answer1 setTitle:@"AZ" forState:UIControlStateNormal];
            [Answer2 setTitle:@"MLT" forState:UIControlStateNormal];
            [Answer3 setTitle:@"EL" forState:UIControlStateNormal];
            [Answer4 setTitle:@"XMT" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"XMT"];
            break;
        case 60:
            QuestionText.text = [NSString stringWithFormat:@"The Infrared Zoom Laser Illuminator/Designator 1000 multifunction laser illuminator/target designator emits a concentrated beam of invisible infrared radation which is class"];
            [Answer1 setTitle:@"4 laser" forState:UIControlStateNormal];
            [Answer2 setTitle:@"2 laser" forState:UIControlStateNormal];
            [Answer3 setTitle:@"3 laser" forState:UIControlStateNormal];
            [Answer4 setTitle:@"1 laser" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"4 laser"];
            break;
        case 61:
            QuestionText.text = [NSString stringWithFormat:@"At high power, what are the pulses per second for the Infrared Zoom Laser Illumintaor/Designator 1000 on PULSE setting?"];
            [Answer1 setTitle:@"5 to 7" forState:UIControlStateNormal];
            [Answer2 setTitle:@"3 to 5" forState:UIControlStateNormal];
            [Answer3 setTitle:@"7 to 9" forState:UIControlStateNormal];
            [Answer4 setTitle:@"1 to 3" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"3 to 5"];
            break;
        case 62:
            QuestionText.text = [NSString stringWithFormat:@"What is the distance along the axis of the unobstructed beam from a laser to the human eye beyond which the irradiance or radiant exposure is not expected to exceed the applicable maximum permissible exposure called?"];
            [Answer1 setTitle:@"Nominal maximum permissible exposure" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Nominal skin hazard distance" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Nominal ocular hazard distance" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Optical density" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Nominal ocular hazard distance"];
            break;
        case 63:
            QuestionText.text = [NSString stringWithFormat:@"Which is not one of the four safety devices that must be enabled before the Infrared Zoom Laser Illuminator/Designator will function?"];
            [Answer1 setTitle:@"Arming plug or remote fire switch" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Mode select switch" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Fire switch or remote fire switch" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Yellow armed indicator light" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Yellow armed indicator light"];
            break;
        case 64:
            QuestionText.text = [NSString stringWithFormat:@"What device is capable of seeing the Infrared Zoom Laser Illuminator/Designator 1000 beam?"];
            [Answer1 setTitle:@"SNIPER POD" forState:UIControlStateNormal];
            [Answer2 setTitle:@"LANTERN POD" forState:UIControlStateNormal];
            [Answer3 setTitle:@"PAVEWAY II" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Thermal scope" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"SNIPER POD"];
            break;
            
        default:
            break;
    }
    
    
    
}

-(void)Category4{
    
    NSUInteger QuestionSelected= (arc4random() %265);
    
    switch (QuestionSelected) {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"How many characters, not including prefixes or suffixes, make up an Air Force Specialty Code (AFSC)?"];
            [Answer1 setTitle:@"Five" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Three" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Four" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Six" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Five"];
            break;
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"Which Air Force Specialty Code (AFSC) indicates the actual position you are assgined to in your unit?"];
            [Answer1 setTitle:@"Primary" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Duty" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Control" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Temporary" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Duty"];
            break;
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"Which Air Force Specialty Code (AFSC) is used as a management tool for assignments against authorized manning requirements?"];
            [Answer1 setTitle:@"Control" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Primary" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Duty" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Temporary" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Duty"];
            break;
        case 3:
            QuestionText.text = [NSString stringWithFormat:@"Which documents are used to decide which task and knowledge items are trained in the initial skills resident course?"];
            [Answer1 setTitle:@"OSR and on-the-job training (OJT)" forState:UIControlStateNormal];
            [Answer2 setTitle:@"TRA and CFETP" forState:UIControlStateNormal];
            [Answer3 setTitle:@"OJT and career field education and training plan (CFETP)" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Occupational Survey Report (OSR) and Training Requirements Analysis (TRA)" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Occupational Survey Report (OSR) and Training Requirements Analysis (TRA)"];
            break;
        case 4:
            QuestionText.text = [NSString stringWithFormat:@"What is the focus of on-the-job training (OJT)?"];
            [Answer1 setTitle:@"Provide what you need to know to do your job" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Support the organization's mission" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Provide an opportunity to attend training" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Provide the resources to meet the training requirements" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Provide what you need to know to do your job"];
            break;
        case 5:
            QuestionText.text = [NSString stringWithFormat:@"On-the-job (OJT) is also known as what type of training?"];
            [Answer1 setTitle:@"One-on-one" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Over-the-shoulder" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Formalized" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Vitrual and interactive" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Over-the-shoulder"];
            break;
        case 6:
            QuestionText.text = [NSString stringWithFormat:@"What is the Air Force's goal pertaining to the Internet?"];
            [Answer1 setTitle:@"Provide minimum availability at acceptable levels for official business" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Provide secure availability at acceptable levels for official business" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Provide maximum availability at acceptable levels for official business" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Eliminate spy-ware to protect official business" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Provide maximum availability at acceptable levels for official business"];
            break;
        case 7:
            QuestionText.text = [NSString stringWithFormat:@"The Internet provides all of the following except a"];
            [Answer1 setTitle:@"quick and efficient way of disseminating information to the public" forState:UIControlStateNormal];
            [Answer2 setTitle:@"way of distributing information throughout the Air Force" forState:UIControlStateNormal];
            [Answer3 setTitle:@"way of accessing information from a variety of sources" forState:UIControlStateNormal];
            [Answer4 setTitle:@"secure means of communication" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Secure means of communication"];
            break;
        case 8:
            QuestionText.text = [NSString stringWithFormat:@"Which of the following makes monitoring or reading another individual's email messages illegal?"];
            [Answer1 setTitle:@"Federal Wiretap Law" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Unit system administrator" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Operations security (OPSEC)" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Non-secure Internet Protocol Router Network" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Federal Wiretap Law"];
            break;
        case 9:
            QuestionText.text = [NSString stringWithFormat:@"Who in your unit establishes an email account for you?"];
            [Answer1 setTitle:@"Security manager" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Work group manager" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Computer systems manager" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Information management manager" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Work group manager"];
            break;
        case 10:
            QuestionText.text = [NSString stringWithFormat:@"Which type of storage device has a small amount of storage space?"];
            [Answer1 setTitle:@"External" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Internal" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Flash" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Shared" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Flash"];
            break;
        case 11:
            QuestionText.text = [NSString stringWithFormat:@"What are the four lines called that enclose the body of a standard military map?"];
            [Answer1 setTitle:@"Latitude" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Longitude" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Set" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Neat" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Neat"];
            break;
        case 12:
            QuestionText.text = [NSString stringWithFormat:@"Lines of Latitude progress north and south of"];
            [Answer1 setTitle:@"the international dateline" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Greenwich, England" forState:UIControlStateNormal];
            [Answer3 setTitle:@"the prime meridian" forState:UIControlStateNormal];
            [Answer4 setTitle:@"the Equator" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"the Equator"];
            break;
        case 13:
            QuestionText.text = [NSString stringWithFormat:@"The point where 180 degrees East longitude meets 180 degrees West longitude is called what?"];
            [Answer1 setTitle:@"Greenwich, England" forState:UIControlStateNormal];
            [Answer2 setTitle:@"The international dateline" forState:UIControlStateNormal];
            [Answer3 setTitle:@"The prime meridian" forState:UIControlStateNormal];
            [Answer4 setTitle:@"The Equator" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"The international dateline"];
            break;
        case 14:
            QuestionText.text = [NSString stringWithFormat:@"How many degrees is each line of latitude or longitude broken down into?"];
            [Answer1 setTitle:@"45" forState:UIControlStateNormal];
            [Answer2 setTitle:@"90" forState:UIControlStateNormal];
            [Answer3 setTitle:@"180" forState:UIControlStateNormal];
            [Answer4 setTitle:@"360" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"360"];
            break;
        case 15:
            QuestionText.text = [NSString stringWithFormat:@"The first major breakdown of the Universal Transverse Mercator (UTM) grid is the division of each zone into areas of 6 degrees by 8 degrees and"];
            [Answer1 setTitle:@"6 degrees by 8 degrees" forState:UIControlStateNormal];
            [Answer2 setTitle:@"6 degrees by 10 degrees" forState:UIControlStateNormal];
            [Answer3 setTitle:@"6 degrees by 12 degrees" forState:UIControlStateNormal];
            [Answer4 setTitle:@"6 degrees by 14 degrees" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"6 degrees by 12 degrees"];
            break;
        case 16:
            QuestionText.text = [NSString stringWithFormat:@"What is the combination of the zone number and the row letter called?"];
            [Answer1 setTitle:@"Grid zone designation" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Grid zone identifier" forState:UIControlStateNormal];
            [Answer3 setTitle:@"100,000 meter square identifier" forState:UIControlStateNormal];
            [Answer4 setTitle:@"100,000 meter square designation" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Grid zone designation"];
            break;
        case 17:
            QuestionText.text = [NSString stringWithFormat:@"On a military map, what are the two digits printed in large type that appear at intervals along the grid line?"];
            [Answer1 setTitle:@"The central meridian" forState:UIControlStateNormal];
            [Answer2 setTitle:@"The principal digits" forState:UIControlStateNormal];
            [Answer3 setTitle:@"False coordinates" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Reference numbers" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"The principal digits"];
            break;
        case 18:
            QuestionText.text = [NSString stringWithFormat:@"A map grid coordinate scale is designed for the express purpose of"];
            [Answer1 setTitle:@"plotting distance" forState:UIControlStateNormal];
            [Answer2 setTitle:@"measuring distance" forState:UIControlStateNormal];
            [Answer3 setTitle:@"plotting grid coordinates" forState:UIControlStateNormal];
            [Answer4 setTitle:@"measuring coordinates" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"plotting grid coordinates"];
            break;
        case 19:
            QuestionText.text = [NSString stringWithFormat:@"On the 1:250,000 scale in the military grid reference system, the 1,000 meter grid block is divided into 10 major subdivisions equal to how many meters each?"];
            [Answer1 setTitle:@"100" forState:UIControlStateNormal];
            [Answer2 setTitle:@"1,000" forState:UIControlStateNormal];
            [Answer3 setTitle:@"10,000" forState:UIControlStateNormal];
            [Answer4 setTitle:@"100,000" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"100"];
            break;
        case 20:
            QuestionText.text = [NSString stringWithFormat:@"In the military grid reference system, the 1:5-,000 scale subdivides the 1,000-meter grid block into 10 major subdivisions equal to how many meters each?"];
            [Answer1 setTitle:@"100" forState:UIControlStateNormal];
            [Answer2 setTitle:@"1,000" forState:UIControlStateNormal];
            [Answer3 setTitle:@"10,000" forState:UIControlStateNormal];
            [Answer4 setTitle:@"100,000" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"100"];
            break;
        case 21:
            QuestionText.text = [NSString stringWithFormat:@"Which map grid coordinate is accurate to within one meter?"];
            [Answer1 setTitle:@"1484" forState:UIControlStateNormal];
            [Answer2 setTitle:@"142841" forState:UIControlStateNormal];
            [Answer3 setTitle:@"14178409" forState:UIControlStateNormal];
            [Answer4 setTitle:@"1416884087" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"1416884087"];
            break;
        case 22:
            QuestionText.text = [NSString stringWithFormat:@"What does the Global Area Reference System (GARS) provide over other geographical grid reference systems?"];
            [Answer1 setTitle:@"Single military service use" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Precision for employing guided weapons" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Common joint service reference system" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Complex language for effective communications" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Common joint service reference system"];
            break;
        case 23:
            QuestionText.text = [NSString stringWithFormat:@"The Global Area Reference System (GARS) was the first global reference system developed for"];
            [Answer1 setTitle:@"navigating" forState:UIControlStateNormal];
            [Answer2 setTitle:@"executing close air support" forState:UIControlStateNormal];
            [Answer3 setTitle:@"detailed targeting" forState:UIControlStateNormal];
            [Answer4 setTitle:@"deconflicting" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"deconflicting"];
            break;
        case 24:
            QuestionText.text = [NSString stringWithFormat:@"What number and letter combination, in sequence, does the Global Area Reference System (GARS) use to identify an area anywhere in the world?"];
            [Answer1 setTitle:@"Three numbers and two letters" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Two numbers and three letters" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Three letters and two numbers" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Two letters and three numbers" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Three numbers and two letters"];
            break;
        case 25:
            QuestionText.text = [NSString stringWithFormat:@"The Global Area Reference System (GARS) uses a base line that starts at the"];
            [Answer1 setTitle:@"North Pole and Prime Meridian" forState:UIControlStateNormal];
            [Answer2 setTitle:@"South Pole and International Dateline" forState:UIControlStateNormal];
            [Answer3 setTitle:@"South Pole and Prime Meridian" forState:UIControlStateNormal];
            [Answer4 setTitle:@"North Pole and International Dateline" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"South Pole and International Dateline"];
            break;
        case 26:
            QuestionText.text = [NSString stringWithFormat:@"Which letter is omitted in the latitudinal band (northwards) of the Global Area Reference System (GARS)?"];
            [Answer1 setTitle:@"X" forState:UIControlStateNormal];
            [Answer2 setTitle:@"J" forState:UIControlStateNormal];
            [Answer3 setTitle:@"I" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Y" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"I"];
            break;
        case 27:
            QuestionText.text = [NSString stringWithFormat:@"What represents the age of the topographical ma, in relation to other editions of the same map, and the agency responsible for its production?"];
            [Answer1 setTitle:@"Sheet name" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Sheet number" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Series number" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Edition number" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Edition number"];
            break;
        case 28:
            QuestionText.text = [NSString stringWithFormat:@"The basis for converting topographic map distance to ground distance is the"];
            [Answer1 setTitle:@"bar scale" forState:UIControlStateNormal];
            [Answer2 setTitle:@"grid note" forState:UIControlStateNormal];
            [Answer3 setTitle:@"contour interval" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Edition number" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Bar Scale"];
            break;
        case 29:
            QuestionText.text = [NSString stringWithFormat:@"On a topographical map, where do you find the information pertaining to the grid system used, the interval lines, and the number of digits omitted from the grid values?"];
            [Answer1 setTitle:@"Legend" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Grid note" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Special notes" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Grid reference box" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Grid note"];
            break;
        case 30:
            QuestionText.text = [NSString stringWithFormat:@"On a topographical map, you find information for composing a grid reference in the"];
            [Answer1 setTitle:@"Special notes" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Declination diagram" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Grid reference box" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Legend" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Grid reference box"];
            break;
        case 31:
            QuestionText.text = [NSString stringWithFormat:@"Where on a topographical map would you find information on the angular relationships of true north, grid north, and magnetic north?"];
            [Answer1 setTitle:@"Bar scale" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Legend" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Special notes" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Declination diagram" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Declination diagram"];
            break;
        case 32:
            QuestionText.text = [NSString stringWithFormat:@"What color is used on a topographical map to indicate most cultural or manmade features?"];
            [Answer1 setTitle:@"Black" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Brown" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Orange" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Red" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Black"];
            break;
        case 33:
            QuestionText.text = [NSString stringWithFormat:@"What color is used for joint operations graphics on a topographical map, to indicate air-ground operations?"];
            [Answer1 setTitle:@"Brown" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Purple" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Green" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Red" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Purple"];
            break;
        case 34:
            QuestionText.text = [NSString stringWithFormat:@"You are using topographic symbold on a map and determine that the width of a road is exagerated. When this happens it means that the"];
            [Answer1 setTitle:@"road is reduced in size around the feature to preserve its location" forState:UIControlStateNormal];
            [Answer2 setTitle:@"feature is reduced in size to preserve the width of the road" forState:UIControlStateNormal];
            [Answer3 setTitle:@"feature moves from its true position to preserve its relation to the road" forState:UIControlStateNormal];
            [Answer4 setTitle:@"road is offset around the feature next to the road" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Feature moves from its true position to preserve its relation to the road"];
            break;
        case 35:
            QuestionText.text = [NSString stringWithFormat:@"What type of terrain/relief feature on a topographic map slopes down in all directions?"];
            [Answer1 setTitle:@"Ridge" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Draw" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Valley" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Hill" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Hill"];
            break;
        case 36:
            QuestionText.text = [NSString stringWithFormat:@"An example of the detailed information the Joint Operations Graphic (JOG) air series maps contain is"];
            [Answer1 setTitle:@"radio ranges" forState:UIControlStateNormal];
            [Answer2 setTitle:@"cities" forState:UIControlStateNormal];
            [Answer3 setTitle:@"water ways" forState:UIControlStateNormal];
            [Answer4 setTitle:@"road systems" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Radio ranges"];
            break;
        case 37:
            QuestionText.text = [NSString stringWithFormat:@"What does the large, open-faced figure in each 15-minute quadrangle of a Joint Air Operations (JOG) air map represent?"];
            [Answer1 setTitle:@"Location of the nearest airfield" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Highest terrain elevation" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Coordinates for nearest airfield" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Location of the highest terrain elevation" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Highest terrain elevation"];
            break;
        case 38:
            QuestionText.text = [NSString stringWithFormat:@"What type of information does the Joint Operations Graphic (JOG) ground series map identify?"];
            [Answer1 setTitle:@"Radio towers only" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Improvised air facilities" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Permanent air facilities" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Radio towers and ranges" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Permanent air facilities"];
            break;
        case 39:
            QuestionText.text = [NSString stringWithFormat:@"How many parts, on a tactical map, do military symbols generally consist of?"];
            [Answer1 setTitle:@"Four" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Five" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Six" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Seven" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Six"];
            break;
        case 40:
            QuestionText.text = [NSString stringWithFormat:@"In relation to the basic symbol, where would you place the unit size symbol on a tactical map?"];
            [Answer1 setTitle:@"Above" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Below" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Left" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Right" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Above"];
            break;
        case 41:
            QuestionText.text = [NSString stringWithFormat:@"On a tactical map, place higher echelons of command"];
            [Answer1 setTitle:@"above the basic symbol" forState:UIControlStateNormal];
            [Answer2 setTitle:@"to the right of the basic symbol" forState:UIControlStateNormal];
            [Answer3 setTitle:@"to the left of the basic symbol" forState:UIControlStateNormal];
            [Answer4 setTitle:@"below the basic symbol" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"To the right of the basic symbol"];
            break;
        case 42:
            QuestionText.text = [NSString stringWithFormat:@"On a tactical map, military symbols represented in yellow mean"];
            [Answer1 setTitle:@"enemy units, installations, equipment, and activities" forState:UIControlStateNormal];
            [Answer2 setTitle:@"friendly or enemy manmade obstacles" forState:UIControlStateNormal];
            [Answer3 setTitle:@"friendly or enemy areas of chemical, biological, or radiological contamination" forState:UIControlStateNormal];
            [Answer4 setTitle:@"friendly units, installations, equipment, and activities" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Friendly or enemy areas of chemical, biological, or radiological contamination"];
            break;
        case 43:
            QuestionText.text = [NSString stringWithFormat:@"Military symbols represented in green on a tactical map mean"];
            [Answer1 setTitle:@"friendly or enemy areas of chemical, biological, or radiological contamination" forState:UIControlStateNormal];
            [Answer2 setTitle:@"friendly units, installations, equipment and activities" forState:UIControlStateNormal];
            [Answer3 setTitle:@"enemy units, installations, equipment, and activities" forState:UIControlStateNormal];
            [Answer4 setTitle:@"friendly or enemy manmade obstacles" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Friendly or enemy manmade obstacles"];
            break;
        case 44:
            QuestionText.text = [NSString stringWithFormat:@"To avoid compass readings interference when using lensatic compass, how many meters from a tank is the suggested safe operating distance?"];
            [Answer1 setTitle:@"18" forState:UIControlStateNormal];
            [Answer2 setTitle:@"55" forState:UIControlStateNormal];
            [Answer3 setTitle:@"10" forState:UIControlStateNormal];
            [Answer4 setTitle:@"5" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"18"];
            break;
        case 45:
            QuestionText.text = [NSString stringWithFormat:@"How many meters from barbed wire is the suggested safe operating distance, while using a lensatic compass?"];
            [Answer1 setTitle:@"55" forState:UIControlStateNormal];
            [Answer2 setTitle:@"10" forState:UIControlStateNormal];
            [Answer3 setTitle:@"18" forState:UIControlStateNormal];
            [Answer4 setTitle:@"5" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"10"];
            break;
        case 46:
            QuestionText.text = [NSString stringWithFormat:@"What map feature enables you to orient a map properly and shows the interrelationship of magnetic, grid, and true north?"];
            [Answer1 setTitle:@"Military plotting diagram" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Grid reference diagram" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Declination diagram" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Military lensatic compass" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Declination diagram"];
            break;
        case 47:
            QuestionText.text = [NSString stringWithFormat:@"When orienting a map, what is an imaginary line from any surface position to the North Pole?"];
            [Answer1 setTitle:@"Magnetic north" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Grid north" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Declination" forState:UIControlStateNormal];
            [Answer4 setTitle:@"True north" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"True north"];
            break;
        case 48:
            QuestionText.text = [NSString stringWithFormat:@"When orienting a map, the direction of the north magnetic pole indicated by the north-seeking needle of a magnetic instrument is the"];
            [Answer1 setTitle:@"magnetic north" forState:UIControlStateNormal];
            [Answer2 setTitle:@"true north" forState:UIControlStateNormal];
            [Answer3 setTitle:@"declination" forState:UIControlStateNormal];
            [Answer4 setTitle:@"grid north" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Magnetic north"];
            break;
        case 49:
            QuestionText.text = [NSString stringWithFormat:@"When orienting a map, true north is symbolized by"];
            [Answer1 setTitle:@"the letters GN or Y" forState:UIControlStateNormal];
            [Answer2 setTitle:@"a star" forState:UIControlStateNormal];
            [Answer3 setTitle:@"a diamond" forState:UIControlStateNormal];
            [Answer4 setTitle:@"a half arrowhead" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"A star"];
            break;
        case 50:
            QuestionText.text = [NSString stringWithFormat:@"When using a compass for navigation, a pace count takes you approximately how many paces to reach 100 meters?"];
            [Answer1 setTitle:@"40 to 70" forState:UIControlStateNormal];
            [Answer2 setTitle:@"50 to 80" forState:UIControlStateNormal];
            [Answer3 setTitle:@"60 to 90" forState:UIControlStateNormal];
            [Answer4 setTitle:@"70 to 100" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"50 to 80"];
            break;
        case 51:
            QuestionText.text = [NSString stringWithFormat:@"When navigating with a compass, the traingulation of an unknown point from at least two or three known points on a map is called a/an"];
            [Answer1 setTitle:@"deliberate offset" forState:UIControlStateNormal];
            [Answer2 setTitle:@"resection" forState:UIControlStateNormal];
            [Answer3 setTitle:@"bisection" forState:UIControlStateNormal];
            [Answer4 setTitle:@"intersection" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Intersection"];
            break;
        case 52:
            QuestionText.text = [NSString stringWithFormat:@"When using a compass to navigate, you can locate your unknown point by sighting on two or more known features using"];
            [Answer1 setTitle:@"resection" forState:UIControlStateNormal];
            [Answer2 setTitle:@"bisection" forState:UIControlStateNormal];
            [Answer3 setTitle:@"intersection" forState:UIControlStateNormal];
            [Answer4 setTitle:@"deliberate offset" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Resection"];
            break;
        case 53:
            QuestionText.text = [NSString stringWithFormat:@"At 1,000 meters each degree of deliberate offset moves you how many meters to the left or right of an object?"];
            [Answer1 setTitle:@"6" forState:UIControlStateNormal];
            [Answer2 setTitle:@"12" forState:UIControlStateNormal];
            [Answer3 setTitle:@"18" forState:UIControlStateNormal];
            [Answer4 setTitle:@"24" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"18"];
            break;
        case 54:
            QuestionText.text = [NSString stringWithFormat:@"Which factor of good microphone techniques deals with the extent of background noise?"];
            [Answer1 setTitle:@"Pronunciation" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Rate of speech" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Loudness" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Patterns of speech" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Loudness"];
            break;
        case 55:
            QuestionText.text = [NSString stringWithFormat:@"When the receiving radio operator gets a loud signal, it means the signal"];
            [Answer1 setTitle:@"is more readable" forState:UIControlStateNormal];
            [Answer2 setTitle:@"is easier to tune" forState:UIControlStateNormal];
            [Answer3 setTitle:@"requires less adjustment on the audio gain" forState:UIControlStateNormal];
            [Answer4 setTitle:@"is not always the most readable" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Is not always the most readable"];
            break;
        case 56:
            QuestionText.text = [NSString stringWithFormat:@"To speak into a microphone, hold it"];
            [Answer1 setTitle:@"about half an inch from your lips and speak at a normal level" forState:UIControlStateNormal];
            [Answer2 setTitle:@"directly against your lips and speak at a normal level" forState:UIControlStateNormal];
            [Answer3 setTitle:@"about 2 inches from your mouth and speak clearly" forState:UIControlStateNormal];
            Answer4.hidden = YES;
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"about half an inch from your lips and speak at a normal level"];
            break;
        case 57:
            QuestionText.text = [NSString stringWithFormat:@"All of the following are points you should follow for effective coice communication except"];
            [Answer1 setTitle:@"speaking slowly enough to pronounce each word clearly and distinctly" forState:UIControlStateNormal];
            [Answer2 setTitle:@"pausing slightly between words so the listener has time to write down the message" forState:UIControlStateNormal];
            [Answer3 setTitle:@"speaking slowly enough for the listener to hear and understand all the words" forState:UIControlStateNormal];
            [Answer4 setTitle:@"pausing slightly between ideas, but do not say 'uh' or 'er' to fill in the pauses" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Pausing slightly between words so the listener has time to write down the message"];
            break;
        case 58:
            QuestionText.text = [NSString stringWithFormat:@"Radio messages transmitted idea by idea rather than word by word"];
            [Answer1 setTitle:@"requires a higher volume setting" forState:UIControlStateNormal];
            [Answer2 setTitle:@"is more likely to be garbled" forState:UIControlStateNormal];
            [Answer3 setTitle:@"is more easily understood" forState:UIControlStateNormal];
            [Answer4 setTitle:@"should be avoided" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Is more easily understood"];
            break;
        case 59:
            QuestionText.text = [NSString stringWithFormat:@"You transmit a lengthy message containing encoded groups. How many groups should you transmit before making a short break in transmission?"];
            [Answer1 setTitle:@"5" forState:UIControlStateNormal];
            [Answer2 setTitle:@"10" forState:UIControlStateNormal];
            [Answer3 setTitle:@"15" forState:UIControlStateNormal];
            [Answer4 setTitle:@"20" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"10"];
            break;
        case 60:
            QuestionText.text = [NSString stringWithFormat:@"In which time zone is the Greenwich Meridian located?"];
            [Answer1 setTitle:@"Z" forState:UIControlStateNormal];
            [Answer2 setTitle:@"D" forState:UIControlStateNormal];
            [Answer3 setTitle:@"M" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Y" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Z"];
            break;
        case 61:
            QuestionText.text = [NSString stringWithFormat:@"When you are working eastward from Greenwich, local time gets"];
            [Answer1 setTitle:@"earlier by 1 hour" forState:UIControlStateNormal];
            [Answer2 setTitle:@"later by 1 hour" forState:UIControlStateNormal];
            [Answer3 setTitle:@"earlier by 2 hours" forState:UIControlStateNormal];
            [Answer4 setTitle:@"later by 2 hours" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Later by 1 hour"];
            break;
        case 62:
            QuestionText.text = [NSString stringWithFormat:@"What letter is omitted from the aphabetized time zones A through M?"];
            [Answer1 setTitle:@"L" forState:UIControlStateNormal];
            [Answer2 setTitle:@"I" forState:UIControlStateNormal];
            [Answer3 setTitle:@"J" forState:UIControlStateNormal];
            [Answer4 setTitle:@"M" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"J"];
            break;
        case 63:
            QuestionText.text = [NSString stringWithFormat:@"Which radio transmission practice is specifically forbidden?"];
            [Answer1 setTitle:@"Excessive transmitter power use" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Transmitting at speeds beyond the capability of the receiving operators" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Excessive time consumed in tuning, changing frequencies, and adjusting equipment" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Unofficial conversation between operators" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Unofficial conversation between operators"];
            break;
        case 64:
            QuestionText.text = [NSString stringWithFormat:@"The authority to cancel an emergency radio silence lies with the"];
            [Answer1 setTitle:@"authority that imposed it" forState:UIControlStateNormal];
            [Answer2 setTitle:@"communications officer" forState:UIControlStateNormal];
            [Answer3 setTitle:@"ground commander" forState:UIControlStateNormal];
            [Answer4 setTitle:@"signals officer" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Authority that imposed it"];
            break;
        case 65:
            QuestionText.text = [NSString stringWithFormat:@"Two authorized methods of authenticating are 'challenge and reply' and"];
            [Answer1 setTitle:@"decrypt" forState:UIControlStateNormal];
            [Answer2 setTitle:@"transmission" forState:UIControlStateNormal];
            [Answer3 setTitle:@"encrypt" forState:UIControlStateNormal];
            [Answer4 setTitle:@"encode" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Transmission"];
            break;
        case 66:
            QuestionText.text = [NSString stringWithFormat:@"What statement, if any, must appear in the encoding transmission to prevent confusion with eight-digit coordinates and grid zone designators?"];
            [Answer1 setTitle:@"Eight-digit coordinates included" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Six-digit coordinates included" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Grid zone letters included" forState:UIControlStateNormal];
            [Answer4 setTitle:@"No statement is required" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Grid zone letters included"];
            break;
        case 67:
            QuestionText.text = [NSString stringWithFormat:@"Radio deception that simulates units, installations, and activities is called"];
            [Answer1 setTitle:@"Manipulative" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Intrusive" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Imitative" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Simulative" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Simulative"];
            break;
        case 68:
            QuestionText.text = [NSString stringWithFormat:@"Which basic jamming technique consists of a narrow signal intended to disrupt one specific frequency or channel?"];
            [Answer1 setTitle:@"Spot" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Barrage" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Constant" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Sweepthrough" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Spot"];
            break;
        case 69:
            QuestionText.text = [NSString stringWithFormat:@"Which basic jamming technique consists of a wideband signal intended to cause chaos on a wideband of frequencies or adjacent channels?"];
            [Answer1 setTitle:@"Spot" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Barrage" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Constant" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Sweepthrough" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Barrage"];
            break;
        case 70:
            QuestionText.text = [NSString stringWithFormat:@"Which basic jamming technique consists of a signal concentrated on a single frequency only a short time?"];
            [Answer1 setTitle:@"Constant" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Spot" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Sweepthrough" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Barrage" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Sweepthrough"];
            break;
        case 71:
            QuestionText.text = [NSString stringWithFormat:@"Which modulating jamming signal sounds like an aircraft engine?"];
            [Answer1 setTitle:@"Spark" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Random noise" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Stepped tones" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Sweepthrough" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Sweepthrough"];
            break;
        case 72:
            QuestionText.text = [NSString stringWithFormat:@"Which modulating jamming technique is the most difficult to distinguish?"];
            [Answer1 setTitle:@"Random noise" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Spark" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Stepped tones" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Sweepthrough" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Random noise"];
            break;
        case 73:
            QuestionText.text = [NSString stringWithFormat:@"What are the two types of field meaconing, intrusion, jamming, and interference (MIJI) reports?"];
            [Answer1 setTitle:@"First and second" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Initial and follow up" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Initial and final" forState:UIControlStateNormal];
            [Answer4 setTitle:@"First and follow up" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Initial and follow up"];
            break;
        case 74:
            QuestionText.text = [NSString stringWithFormat:@"Within how many hours of the initial meaconing, intrusion, jamming, and interference (MIJI report must you submit a complete follow up report containing all details of the incident?"];
            [Answer1 setTitle:@"6" forState:UIControlStateNormal];
            [Answer2 setTitle:@"8" forState:UIControlStateNormal];
            [Answer3 setTitle:@"12" forState:UIControlStateNormal];
            [Answer4 setTitle:@"24" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"12"];
            break;
        case 75:
            QuestionText.text = [NSString stringWithFormat:@"The physical size, construction details, and appearance of an antenna primarily depend on"];
            [Answer1 setTitle:@"how many stations will be on the same frequency" forState:UIControlStateNormal];
            [Answer2 setTitle:@"the amount of radiation energy from the radio" forState:UIControlStateNormal];
            [Answer3 setTitle:@"the antenna location" forState:UIControlStateNormal];
            [Answer4 setTitle:@"how the antenna is used" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"How the antenna is used"];
            break;
        case 76:
            QuestionText.text = [NSString stringWithFormat:@"What should you do if you are in a room beside an electrical outlet with degraded communications?"];
            [Answer1 setTitle:@"Change frequencies" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Move the radio to another room" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Move radio to the roof" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Move the radio to another location in the same room" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Move the radio to another location in the same room"];
            break;
        case 77:
            QuestionText.text = [NSString stringWithFormat:@"The more efficient an antenna is for transmitting, the more efficient it will be for receiving. Which antenna characteristic does this describe?"];
            [Answer1 setTitle:@"Resonance" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Reciprocity" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Take off angle" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Gain" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Reciprocity"];
            break;
        case 78:
            QuestionText.text = [NSString stringWithFormat:@"The radio ground-wave component affected by the conductivity and dielectric constant of the Earth is called"];
            [Answer1 setTitle:@"direct" forState:UIControlStateNormal];
            [Answer2 setTitle:@"sky" forState:UIControlStateNormal];
            [Answer3 setTitle:@"surface" forState:UIControlStateNormal];
            [Answer4 setTitle:@"ground-reflected" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Surface"];
            break;
        case 79:
            QuestionText.text = [NSString stringWithFormat:@"The zone where no usable signal is received from a given transmitting antenna is called"];
            [Answer1 setTitle:@"Blank" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Dead" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Hop" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Skip" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Skip"];
            break;
        case 80:
            QuestionText.text = [NSString stringWithFormat:@"How many distinct layers make up the ionosphere?"];
            [Answer1 setTitle:@"Three" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Four" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Five" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Six" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Four"];
            break;
        case 81:
            QuestionText.text = [NSString stringWithFormat:@"Which radio frequency (RF) range uses the ground wave for communications from 15 to 400 miles and the sky wave for reception at distances up to 8,000 miles?"];
            [Answer1 setTitle:@"Low" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Medium" forState:UIControlStateNormal];
            [Answer3 setTitle:@"High" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Ultra-high" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Medium"];
            break;
        case 82:
            QuestionText.text = [NSString stringWithFormat:@"Which radio frequency (RF) range uses the ground wave for communicating over great distances?"];
            [Answer1 setTitle:@"Low" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Medium" forState:UIControlStateNormal];
            [Answer3 setTitle:@"High" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Ultra-high" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Low"];
            break;
        case 83:
            QuestionText.text = [NSString stringWithFormat:@"Which radio frequency (RF) range uses little ground wabe for communcations with only slight refraction of the sky waves?"];
            [Answer1 setTitle:@"Low" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Medium" forState:UIControlStateNormal];
            [Answer3 setTitle:@"High" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Ultra-high" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"High"];
            break;
        case 84:
            QuestionText.text = [NSString stringWithFormat:@"If the lines of electric force are prallel to the surface of the Earth, the radio wave is polarized"];
            [Answer1 setTitle:@"vertically" forState:UIControlStateNormal];
            [Answer2 setTitle:@"elliptically" forState:UIControlStateNormal];
            [Answer3 setTitle:@"horizontally" forState:UIControlStateNormal];
            [Answer4 setTitle:@"directionally" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Vertically"];
            break;
        case 85:
            QuestionText.text = [NSString stringWithFormat:@"Which type of antenna is least likely to pick up manmade interference?"];
            [Answer1 setTitle:@"Vertical" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Horizontal" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Blade" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Whip" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Horizontal"];
            break;
        case 86:
            QuestionText.text = [NSString stringWithFormat:@"Earth ground is a good conductor for what type of radio frequency (RF)?"];
            [Answer1 setTitle:@"Low and high" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Medium and high" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Low and medium" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Low and high" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Low and medium"];
            break;
        case 87:
            QuestionText.text = [NSString stringWithFormat:@"When properly repairing a solid core whip antenna, do not overlap the broken ends by more than a few inches because you can degrade the antennas"];
            [Answer1 setTitle:@"insulation" forState:UIControlStateNormal];
            [Answer2 setTitle:@"magnetic field" forState:UIControlStateNormal];
            [Answer3 setTitle:@"polarization" forState:UIControlStateNormal];
            [Answer4 setTitle:@"electrical length" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Electrical length"];
            break;
        case 88:
            QuestionText.text = [NSString stringWithFormat:@"What determines the angle of radiation required for both transmitting and receiving antennas?"];
            [Answer1 setTitle:@"Distance between stations" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Antenna gain required" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Handling capability" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Physical size" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Distance between stations"];
            break;
        case 89:
            QuestionText.text = [NSString stringWithFormat:@"By using a high gain antenna at transmitter and receiver sites, you reduce"];
            [Answer1 setTitle:@"circuit loss" forState:UIControlStateNormal];
            [Answer2 setTitle:@"transmitter power" forState:UIControlStateNormal];
            [Answer3 setTitle:@"electrical antenna length" forState:UIControlStateNormal];
            [Answer4 setTitle:@"physical antenna length" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Transmitter power"];
            break;
        case 90:
            QuestionText.text = [NSString stringWithFormat:@"What type of injury can you get from high levels of radio frequency (RF) energy sent from an antenna?"];
            [Answer1 setTitle:@"Cell damage" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Nerve damage" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Radiation burns" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Electrical burns" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Radiation burns"];
            break;
        case 91:
            QuestionText.text = [NSString stringWithFormat:@"What type of equipment is used with the whip antenna?"];
            [Answer1 setTitle:@"Set" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Unchanging" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Fixed" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Portable" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Portable"];
            break;
        case 92:
            QuestionText.text = [NSString stringWithFormat:@"How does a vehicle affect the operation of a mounted whip antenna?"];
            [Answer1 setTitle:@"Provides a ground" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Obstructs the radiated circuit" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Provides proper take-off angle" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Reduces the radiation efficiency" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Provides a ground"];
            break;
        case 93:
            QuestionText.text = [NSString stringWithFormat:@"For best results, at least how many feet above the ground should you place the ends of the inverted Vee antenna?"];
            [Answer1 setTitle:@"2" forState:UIControlStateNormal];
            [Answer2 setTitle:@"4" forState:UIControlStateNormal];
            [Answer3 setTitle:@"6" forState:UIControlStateNormal];
            [Answer4 setTitle:@"8" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"6"];
            break;
        case 94:
            QuestionText.text = [NSString stringWithFormat:@"Use the near verticle incidence sky wave (NVIS) antenna within megahertz (MHz) frequencies of"];
            [Answer1 setTitle:@"2.0 to 14.0" forState:UIControlStateNormal];
            [Answer2 setTitle:@"2.0 to 29.0" forState:UIControlStateNormal];
            [Answer3 setTitle:@"14.0 to 24.9" forState:UIControlStateNormal];
            [Answer4 setTitle:@"14.0 to 29.9" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"2.0 to 29.0"];
            break;
        case 95:
            QuestionText.text = [NSString stringWithFormat:@"What is the most commonly used field expediently constructed antenna?"];
            [Answer1 setTitle:@"Vee" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Inverted L" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Inverted Vee" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Half wave dipole" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Half wave dipole"];
            break;
        case 96:
            QuestionText.text = [NSString stringWithFormat:@"Which field expedient antenna is equipped with a quarter-wave vertical section and a half-wave horizontal section"];
            [Answer1 setTitle:@"Inverted L" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Inverted Vee" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Sloping Vee" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Half wave dipole" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Inverted L"];
            break;
        case 97:
            QuestionText.text = [NSString stringWithFormat:@"When terminated, what is the directivity of the long wire antenna?"];
            [Answer1 setTitle:@"Bi-directional" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Uni-directional" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Directional" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Omni-directional" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Uni-directional"];
            break;
        case 98:
            QuestionText.text = [NSString stringWithFormat:@"Where on the Vee antenna would you find the maximum radiation pattern?"];
            [Answer1 setTitle:@"Rear or point" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Right side" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Opening" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Left side" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Opening"];
            break;
        case 99:
            QuestionText.text = [NSString stringWithFormat:@"What is the directivity of the Vee antenna?"];
            [Answer1 setTitle:@"Bi-directional" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Omni-directional" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Directional" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Uni-directional" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Uni-directional"];
            break;
        case 100:
            QuestionText.text = [NSString stringWithFormat:@"Tactical air control party (TACP) members operate at their aligned Army echelon which can range from"];
            [Answer1 setTitle:@"battalion to corps" forState:UIControlStateNormal];
            [Answer2 setTitle:@"company to division" forState:UIControlStateNormal];
            [Answer3 setTitle:@"platoon to brigade" forState:UIControlStateNormal];
            [Answer4 setTitle:@"squad to battalion" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Battalion to corps"];
            break;
        case 101:
            QuestionText.text = [NSString stringWithFormat:@"Which is the Army's highest echelon that trains and operates as a combined arms team?"];
            [Answer1 setTitle:@"Corps" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Divison" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Brigade" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Battalion" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Divison"];
            break;
        case 102:
            QuestionText.text = [NSString stringWithFormat:@"Which type of Army division is primarily a powerful offensive force?"];
            [Answer1 setTitle:@"Infantry" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Airborne" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Armored" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Mechanized infantry" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Armored"];
            break;
        case 103:
            QuestionText.text = [NSString stringWithFormat:@"Which Army unit has the mission to close with the enemy using available firepower and controlled maneuvers?"];
            [Answer1 setTitle:@"Division" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Corps" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Battalion" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Brigade" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Brigade"];
            break;
        case 104:
            QuestionText.text = [NSString stringWithFormat:@"Which Army command staff member is responsible for all fires on surface targets to include air support?"];
            [Answer1 setTitle:@"Fire support coordinator (FSCOORD)" forState:UIControlStateNormal];
            [Answer2 setTitle:@"G-2 / S-2" forState:UIControlStateNormal];
            [Answer3 setTitle:@"G-3 / S-3" forState:UIControlStateNormal];
            [Answer4 setTitle:@"G-4 / S-4 Air" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Fire support coordinator (FSCOORD)"];
            break;
        case 105:
            QuestionText.text = [NSString stringWithFormat:@"Which Army command staff member is responsible for planning and coordinating fire support and suppression of enemy air defenses?"];
            [Answer1 setTitle:@"Fire support coordinator (FSCOORD)" forState:UIControlStateNormal];
            [Answer2 setTitle:@"G-2 / S-2" forState:UIControlStateNormal];
            [Answer3 setTitle:@"G-3 / S-3" forState:UIControlStateNormal];
            [Answer4 setTitle:@"G-4 / S-4 Air" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Fire support coordinator (FSCOORD)"];
            break;
        case 106:
            QuestionText.text = [NSString stringWithFormat:@"Which Army echelon has a dedicated Army airspace command and control (A2C2)?"];
            [Answer1 setTitle:@"Battalion" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Brigade" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Division" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Field Army" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Division"];
            break;
        case 107:
            QuestionText.text = [NSString stringWithFormat:@"Which Army liaison officer supports the combat reporting center (CRC) and handles real-time Army airspace management issues?"];
            [Answer1 setTitle:@"Ground liaison officer (GLO)" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Air defense liaison officer" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Battlefield coordination element officer" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Airspace management liaison officer" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Airspace management liaison officer"];
            break;
        case 108:
            QuestionText.text = [NSString stringWithFormat:@"Which Army liaison officer maintains capabilities, locations, and status of air defense artillery (ADA) systems?"];
            [Answer1 setTitle:@"Air defense liaison officer" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Ground liaison officer (GLO)" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Air reconnaissance liaison officer" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Battlefield coordination element officer" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Air defense liaison officer"];
            break;
        case 109:
            QuestionText.text = [NSString stringWithFormat:@"Which Army liaison officer advises the Air Force weapons assignment officer on employment of air defense artillery (ADA)"];
            [Answer1 setTitle:@"Ground liaison officer (GLO)" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Air defense liaison officer" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Air reconnaissance liaison officer" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Battlefield coordination element officer" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Air defense liaison officer"];
            break;
        case 110:
            QuestionText.text = [NSString stringWithFormat:@"How does the Air Force organize its forces overseas?"];
            [Answer1 setTitle:@"Certain function" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Specific mission" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Geographical" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Administrative" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Geographical"];
            break;
        case 111:
            QuestionText.text = [NSString stringWithFormat:@"How many major commands (MAJCOM) does the Air Force have to accomplish its mission?"];
            [Answer1 setTitle:@"Three" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Five" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Seven" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Nine" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Nine"];
            break;
        case 112:
            QuestionText.text = [NSString stringWithFormat:@"How many wing commands are found in the Air Force structure?"];
            [Answer1 setTitle:@"One" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Two" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Three" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Four" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Three"];
            break;
        case 113:
            QuestionText.text = [NSString stringWithFormat:@"Which theater air control system (TACS) element is the wing commander's command and control element?"];
            [Answer1 setTitle:@"Air operations center (AOC)" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Wing operations center (WOC)" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Air support operations center (ASOC)" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Tactical air control party (TACP)" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Wing operations center (WOC)"];
            break;
        case 114:
            QuestionText.text = [NSString stringWithFormat:@"In garrison, tactical air control party (TACP), falls under the operational control of what unit?"];
            [Answer1 setTitle:@"Aligned Army unit" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Assigned Army unit" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Air support operations center (ASOC)" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Air support operations group (ASOG)" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Air support operations group (ASOG)"];
            break;
        case 115:
            QuestionText.text = [NSString stringWithFormat:@"Tactical air control party (TACP) operations fall into what two general categories?"];
            [Answer1 setTitle:@"Control and communications" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Control and direction" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Liaison and control" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Liaison and communications" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Liaison and control"];
            break;
        case 116:
            QuestionText.text = [NSString stringWithFormat:@"In tactical air control party (TACP), which member integrates air support sorties with the Army unit scheme of maneuver?"];
            [Answer1 setTitle:@"Air liaison officer (ALO)" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Air mobility liaison officer (AMLO)" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Joint terminal attack controller (JTAC)" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Tactical air command and control specialist (TACCS)" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Air liaison officer (ALO)"];
            break;
        case 117:
            QuestionText.text = [NSString stringWithFormat:@"In a tactical air control party (TACP), which member may conduct drop zone operations when drop zone support team is not available?"];
            [Answer1 setTitle:@"Air liaison officer (ALO)" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Air mobility liaison officer (AMLO)" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Joint terminal attack controller (JTAC)" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Tactical air command and control specialist (TACCS)" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Air mobility liaison officer (AMLO)"];
            break;
        case 118:
            QuestionText.text = [NSString stringWithFormat:@"Which Army echelon is an air support operations center (ASOC) normally collocated with?"];
            [Answer1 setTitle:@"Division" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Field Army" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Corps" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Brigade" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Corps"];
            break;
        case 119:
            QuestionText.text = [NSString stringWithFormat:@"Who does the corps air liaison officer (ALO) or air support operation center (ASOC) director report to?"];
            [Answer1 setTitle:@"The air operation center's director or commander" forState:UIControlStateNormal];
            [Answer2 setTitle:@"The wing operations center's director or commander" forState:UIControlStateNormal];
            [Answer3 setTitle:@"The land component commander" forState:UIControlStateNormal];
            [Answer4 setTitle:@"The corps commander" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"The air operation center's director or commander"];
            break;
        case 120:
            QuestionText.text = [NSString stringWithFormat:@"Which radio net is used by the air support operations center (ASOC) to interface with other theater air control system (TACS) units?"];
            [Answer1 setTitle:@"Command and control net" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Tactical air direction net" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Tactical air control net" forState:UIControlStateNormal];
            [Answer4 setTitle:@"In-flight report net" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Command and control net"];
            break;
        case 121:
            QuestionText.text = [NSString stringWithFormat:@"Which radio net is used to direct and control aircraft engaged in theater air support?"];
            [Answer1 setTitle:@"Command and control net" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Tactical air direction net" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Tactical air control net" forState:UIControlStateNormal];
            [Answer4 setTitle:@"In-flight report net" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"In-flight report net"];
            break;
        case 122:
            QuestionText.text = [NSString stringWithFormat:@"Which theater air control system (TACS) element coordinates strategic operations within the theater airlift management system and collocates with the Air operations center (AOC)?"];
            [Answer1 setTitle:@"Tanker airlift control center (TACC)" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Control and reporting center (CRC)" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Air mobility element (AME)" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Tanker airlift control element (TALCE)" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Air mobility element (AME)"];
            break;
        case 123:
            QuestionText.text = [NSString stringWithFormat:@"Which theater air control system (TACS) element provides near-real-time data to efficiently execute the battle plan?"];
            [Answer1 setTitle:@"Forward air controller (airborne) (FAC[A])" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Tactical air coordinator (airborne) (TAC[A])" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Airborne warning and control system (AWACS)" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Joint surveillance, target attack radar system (JSTARS)" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Joint surveillance, target attack radar system (JSTARS)"];
            break;
        case 124:
            QuestionText.text = [NSString stringWithFormat:@"How many divisions are found in the air operations center (AOC)?"];
            [Answer1 setTitle:@"Four" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Five" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Six" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Seven" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Five"];
            break;
        case 125:
            QuestionText.text = [NSString stringWithFormat:@"Normally, how many hours will an air tasking order cover?"];
            [Answer1 setTitle:@"12" forState:UIControlStateNormal];
            [Answer2 setTitle:@"24" forState:UIControlStateNormal];
            [Answer3 setTitle:@"48" forState:UIControlStateNormal];
            [Answer4 setTitle:@"72" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"24"];
            break;
        case 126:
            QuestionText.text = [NSString stringWithFormat:@"Which document from the air operations center (AOC) provides operators critical guidance on how to execute the air tasking order (ATO)?"];
            [Answer1 setTitle:@"Air tasking order" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Airspace control order" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Special instructions" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Operations order" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Special instructions"];
            break;
        case 127:
            QuestionText.text = [NSString stringWithFormat:@"The battlefield coordination detachment (BCD) is the land component commander's (LCC) liaison and collocated with the"];
            [Answer1 setTitle:@"air support operations center (ASOC)" forState:UIControlStateNormal];
            [Answer2 setTitle:@"wing operations center (WOC)" forState:UIControlStateNormal];
            [Answer3 setTitle:@"airlift coordination cell (ALCC)" forState:UIControlStateNormal];
            [Answer4 setTitle:@"air operations center (AOC)" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"air operations center (AOC)"];
            break;
        case 128:
            QuestionText.text = [NSString stringWithFormat:@"How many sections are in the battlefield coordination detachment (BCD) structure?"];
            [Answer1 setTitle:@"Four" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Five" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Six" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Seven" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Six"];
            break;
        case 129:
            QuestionText.text = [NSString stringWithFormat:@"Which section within the battlefield coordination detachment (BCD) ensures the synchronization between the current air operations and the current Army operations?"];
            [Answer1 setTitle:@"Airlift" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Operations" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Plans" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Intelligence" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Operations"];
            break;
        case 130:
            QuestionText.text = [NSString stringWithFormat:@"Which section within the battlefield coordination detachment (BCD) exchanges the information with the control and reporting center (CRC), land component headquarters, and air defense artillery (ADA) headquarters?"];
            [Answer1 setTitle:@"Plans" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Air defense" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Operations" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Intelligence" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Operations"];
            break;
        case 131:
            QuestionText.text = [NSString stringWithFormat:@"Which section within the battlefield coordination detachment (BCD) maintains identification codes of all Army forces (ARFOR) airspace users including fire support and unmanned aerial vehicle (UAV)?"];
            [Answer1 setTitle:@"Plans" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Airlift" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Intelligence" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Airspace management" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Airspace management"];
            break;
        case 132:
            QuestionText.text = [NSString stringWithFormat:@"What is the function of intelligence, surveillance, and reconnaissance (ISR)?"];
            [Answer1 setTitle:@"Acquiring and processing information" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Acquiring and identifying information" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Planning and identifying information" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Planning and processing information" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Acquiring and processing information"];
            break;
        case 133:
            QuestionText.text = [NSString stringWithFormat:@"The intelligence, surveillance, and reconnaissance (ISR) term 'tasking authority' simply means who"];
            [Answer1 setTitle:@"can operate the system" forState:UIControlStateNormal];
            [Answer2 setTitle:@"owns the system" forState:UIControlStateNormal];
            [Answer3 setTitle:@"uses the system" forState:UIControlStateNormal];
            [Answer4 setTitle:@"flies the system" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Owns the system"];
            break;
        case 134:
            QuestionText.text = [NSString stringWithFormat:@"What is the name of the critical pieces of intelligence that a commander must know about the enemy and the operational environment by a particular time in order to plan and execute a successful mission?"];
            [Answer1 setTitle:@"Information requirements" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Request for information (RIF)" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Priority intelligence requirements (PIR)" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Essential intelligence requirements" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Priority intelligence requirements (PIR)"];
            break;
        case 135:
            QuestionText.text = [NSString stringWithFormat:@"What is the name of any specific time-sensitive, ad hoc requirement for intelligence information or products to support an ongoing operation or crisis not necessarily related to the standing requirements?"];
            [Answer1 setTitle:@"Priority intelligence requirements" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Essential intelligence requirements" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Information requirements" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Requests for information (RIF)" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Requests for information (RIF)"];
            break;
        case 136:
            QuestionText.text = [NSString stringWithFormat:@"The science portion of command deals with the study and method of a body of facts and processes based on principles from"];
            [Answer1 setTitle:@"the physical or material world" forState:UIControlStateNormal];
            [Answer2 setTitle:@"specific skill" forState:UIControlStateNormal];
            [Answer3 setTitle:@"decision-making and leadership" forState:UIControlStateNormal];
            [Answer4 setTitle:@"responsibility, accountability, and delegation" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"The physical or material world"];
            break;
        case 137:
            QuestionText.text = [NSString stringWithFormat:@"What should leadership provide to influence their people in order to accomplish the mission?"];
            [Answer1 setTitle:@"Command, authority and decision" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Purpose, direction and motivation" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Control, command and decision" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Communication, structure and information" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Purpose, direction and motivation"];
            break;
        case 138:
            QuestionText.text = [NSString stringWithFormat:@"What are the elements that make up the control portion of the command and control (C2) system?"];
            [Answer1 setTitle:@"Authority, decision-making, and leadership" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Authority, decision-making, and structure" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Information, communication, and structure" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Information, communication, and leadership" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Information, communication, and structure"];
            break;
        case 139:
            QuestionText.text = [NSString stringWithFormat:@"How many types of suppression of enemy air defenses (SEAD) are there?"];
            [Answer1 setTitle:@"Two" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Four" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Five" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Six" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Two"];
            break;
        case 140:
            QuestionText.text = [NSString stringWithFormat:@"What do planners consider if an operation exposes friendly aircraft to an enemy's air defense?"];
            [Answer1 setTitle:@"The availablility and capability of support of enemy air defense (SEAD) capable systems" forState:UIControlStateNormal];
            [Answer2 setTitle:@"The commander's guidance and intent" forState:UIControlStateNormal];
            [Answer3 setTitle:@"The importance of the mission's objective" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Rules of engagement (ROE)" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"The availablility and capability of support of enemy air defense (SEAD) capable systems"];
            break;
        case 141:
            QuestionText.text = [NSString stringWithFormat:@"What are the objectives of electronic warfare (EW)?"];
            [Answer1 setTitle:@"Control and exploit only" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Control, exploit, and enhance" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Control the means of attack" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Control the means of offense and defensive operations" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Control, exploit, and enhance"];
            break;
        case 142:
            QuestionText.text = [NSString stringWithFormat:@"For offensive electronic warfare (EW), what is required for a more sophisticated jamming?"];
            [Answer1 setTitle:@"More power in the jammer" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Broader spectrum in the jammer" forState:UIControlStateNormal];
            [Answer3 setTitle:@"More intelligence in the jammer" forState:UIControlStateNormal];
            [Answer4 setTitle:@"More directed energy in jammer" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"More intelligence in the jammer"];
            break;
        case 143:
            QuestionText.text = [NSString stringWithFormat:@"Which type of targets is the focus for joint tactics, techniques, and procedures (TTP)"];
            [Answer1 setTitle:@"Enemy artillery units" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Enemy armored vehicles" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Traditional targets to the enemy" forState:UIControlStateNormal];
            [Answer4 setTitle:@"High importance to the enemy" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"High importance to the enemy"];
            break;
        case 144:
            QuestionText.text = [NSString stringWithFormat:@"Which term of joint tactics, techniques, and procedures (TTP) consists of operations to divert, disrupt, delay, or destroy the enemy's surface potential before it can be used effectively against friendly forces?"];
            [Answer1 setTitle:@"Air interdiction (AI)" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Battlefield air interdiction" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Close air support (CAS" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Combat air patrol" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Air interdiction (AI)"];
            break;
        case 145:
            QuestionText.text = [NSString stringWithFormat:@"Air interdiction (AI) attack on which type of target interferes with an adversary's ability to mass, maneuver, withdraw, supply, and reinforce surface forces?"];
            [Answer1 setTitle:@"Personnel" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Command and control systems" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Material" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Logistics" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Command and control systems"];
            break;
        case 146:
            QuestionText.text = [NSString stringWithFormat:@"In order for close air support (CAS) to be effective, all of the following conditions are required except for"];
            [Answer1 setTitle:@"train and develop skills" forState:UIControlStateNormal];
            [Answer2 setTitle:@"effective command and control (C2)" forState:UIControlStateNormal];
            [Answer3 setTitle:@"inauspicious environmental conditions" forState:UIControlStateNormal];
            [Answer4 setTitle:@"streamlined and flexible procedures" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Inauspicious environmental conditions"];
            break;
        case 147:
            QuestionText.text = [NSString stringWithFormat:@"What effects can a commander produce by orchestrating close air support (CAS) with other surface and air operations?"];
            [Answer1 setTitle:@"National" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Strategic" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Tactical" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Operational" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Operational"];
            break;
        case 148:
            QuestionText.text = [NSString stringWithFormat:@"What ensures the execution of close air support (CAS) is on the right target and reduces the possibility of fratricide?"];
            [Answer1 setTitle:@"Terminal control" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Streamlined procedures" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Effective planning" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Detailed integration" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Terminal control"];
            break;
        case 149:
            QuestionText.text = [NSString stringWithFormat:@"Which battlefield operation requires special care to identify friendly forces and ensure that they are not subject to direct attack or weapons effects from close air support (CAS) ordnance?"];
            [Answer1 setTitle:@"Deep operations" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Rear operations" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Close operations" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Offensive operations" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Rear operations"];
            break;
        case 150:
            QuestionText.text = [NSString stringWithFormat:@"Which battlefield operation with close air support (CAS) gives the maneuver force commander freedom of movement?"];
            [Answer1 setTitle:@"Close operations" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Offensive operations" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Deep operations" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Rear operations" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Offensive operations"];
            break;
        case 151:
            QuestionText.text = [NSString stringWithFormat:@"Which battlefield operation with close air support (CAS) can cause the enemy to deploy prematurely?"];
            [Answer1 setTitle:@"Offensive operations" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Deep operations" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Rear operations" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Defensive operations" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Defensive operations"];
            break;
        case 152:
            QuestionText.text = [NSString stringWithFormat:@"The ability to mass joint fire support at a decisive point and to provide the supporting fires needed to achieve the commander's objectives relies on"];
            [Answer1 setTitle:@"coherent planning" forState:UIControlStateNormal];
            [Answer2 setTitle:@"terminal contro" forState:UIControlStateNormal];
            [Answer3 setTitle:@"detailed integration" forState:UIControlStateNormal];
            [Answer4 setTitle:@"streamlined procedures" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Coherent planning"];
            break;
        case 153:
            QuestionText.text = [NSString stringWithFormat:@"What channel does a request for preplanned close air support (CAS) mission flow through up to higher echelons?"];
            [Answer1 setTitle:@"G/S-2" forState:UIControlStateNormal];
            [Answer2 setTitle:@"G/S-3 Air" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Fire support coordination element" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Corps air liaison officer" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Fire support coordination element"];
            break;
        case 154:
            QuestionText.text = [NSString stringWithFormat:@"Preplanned close air support (CAS) requests are categorized as either scheduled or"];
            [Answer1 setTitle:@"alerted" forState:UIControlStateNormal];
            [Answer2 setTitle:@"ready" forState:UIControlStateNormal];
            [Answer3 setTitle:@"on-call" forState:UIControlStateNormal];
            [Answer4 setTitle:@"standby" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"On-call"];
            break;
        case 155:
            QuestionText.text = [NSString stringWithFormat:@"What information can 'on-call' requests for close air support (CAS) specify?"];
            [Answer1 setTitle:@"Ground or orbit alert" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Ready or ground alert" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Airborne or ready alert" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Airborne or ground alert" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Airborne or ground alert"];
            break;
        case 156:
            QuestionText.text = [NSString stringWithFormat:@"Which channel does the mission data for preplanned requests funnel down through back to the requestor?"];
            [Answer1 setTitle:@"Ground maneuver forces channel" forState:UIControlStateNormal];
            [Answer2 setTitle:@"The G/S-2 channel" forState:UIControlStateNormal];
            [Answer3 setTitle:@"The tactical air control party's (TACP) channel" forState:UIControlStateNormal];
            [Answer4 setTitle:@"The air support operations center's (ASOC) channel" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Ground maneuver forces channel"];
            break;
        case 157:
            QuestionText.text = [NSString stringWithFormat:@"What advice does the corps air liaison officer (ALO) give to the corps G-3 / S-3 Air if on-call close air support is unavailable"];
            [Answer1 setTitle:@"Forward the request to the joint force commander (JFC) to the air operations center (AOC)" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Forward the request to the battlefield coordination detachment (BCD) at the AOC" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Forward the request to the combat intelligence division (CID) to the AOC" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Forward the request to the land component commander (LCC) to the AOC" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Forward the request to the battlefield coordination detachment (BCD) at the AOC"];
            break;
        case 158:
            QuestionText.text = [NSString stringWithFormat:@"Who allocates close air support (CAS) and decides whether to divert other CAS missions to the corps requesting additional missions?"];
            [Answer1 setTitle:@"The joint force commander (JFC)" forState:UIControlStateNormal];
            [Answer2 setTitle:@"The senior air liaison officer (ALO)" forState:UIControlStateNormal];
            [Answer3 setTitle:@"The land component commander (LCC)" forState:UIControlStateNormal];
            [Answer4 setTitle:@"The joint air component commander (JFACC)" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"The land component commander (LCC)"];
            break;
        case 159:
            QuestionText.text = [NSString stringWithFormat:@"How do commanders take full advantage of the battlefield opportunities to maintain the momentum of an offesnive action or reduce operational and tactical risk?"];
            [Answer1 setTitle:@"By maneuver of forces" forState:UIControlStateNormal];
            [Answer2 setTitle:@"By massing firepower" forState:UIControlStateNormal];
            [Answer3 setTitle:@"By dispersing firepower" forState:UIControlStateNormal];
            [Answer4 setTitle:@"By prioritizing firepower" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"By massing firepower"];
            break;
        case 160:
            QuestionText.text = [NSString stringWithFormat:@"Which planning consideration within the mission, enemy troops, terrain, and time (METT-T), determines which close air support (CAS) will be employed?"];
            [Answer1 setTitle:@"Enemy" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Time" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Troops" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Mission" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Enemy"];
            break;
        case 161:
            QuestionText.text = [NSString stringWithFormat:@"Which planning consideration within the mission, enemy, troops, terrain, and time (METT-T), can limit communications and visual line of sight (LOS) for identifying the target and/or aircraft?"];
            [Answer1 setTitle:@"Time" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Terrain" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Enemy" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Mission" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Terrain"];
            break;
        case 162:
            QuestionText.text = [NSString stringWithFormat:@"What is the basic consideration of close air support (CAS) missions involving laser-guided weapons (LGW) besides coordination of laser-compatible designators and ornance?"];
            [Answer1 setTitle:@"Threats in the area" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Skill of the operator" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Attack parameters" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Type of target" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Attack parameters"];
            break;
        case 163:
            QuestionText.text = [NSString stringWithFormat:@"What is the primary or standard map datum in use today?"];
            [Answer1 setTitle:@"WGS-79" forState:UIControlStateNormal];
            [Answer2 setTitle:@"WGS-80" forState:UIControlStateNormal];
            [Answer3 setTitle:@"WGS-82" forState:UIControlStateNormal];
            [Answer4 setTitle:@"WGS-84" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"WGS-84"];
            break;
        case 164:
            QuestionText.text = [NSString stringWithFormat:@"How many grid coordinates digits make up the standard for target location while using the military grid reference system (MGRS)?"];
            [Answer1 setTitle:@"Six" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Eight" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Ten" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Twelve" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Six"];
            break;
        case 165:
            QuestionText.text = [NSString stringWithFormat:@"Many global positioning system (GPS) receivers can compute quick, accurate coordinate conversions, provided the"];
            [Answer1 setTitle:@"batteries are fully charged" forState:UIControlStateNormal];
            [Answer2 setTitle:@"users are properly trained" forState:UIControlStateNormal];
            [Answer3 setTitle:@"proper codes are installed" forState:UIControlStateNormal];
            [Answer4 setTitle:@"satelites are on and working" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Users are properly trained"];
            break;
        case 166:
            QuestionText.text = [NSString stringWithFormat:@"Which condition for effective close air support (CAS) permits CAS to function more effectively and denies that same advantage to the enemy?"];
            [Answer1 setTitle:@"Command and control (C2)" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Prompt response" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Air superiority" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Suppresion of enemy air defenses (SEAD)" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Air superiority"];
            break;
        case 167:
            QuestionText.text = [NSString stringWithFormat:@"Which condition for effective close air support (CAS) allows a commander to exploit fleeting battlefield opportunities?"];
            [Answer1 setTitle:@"Suppression of enemy air defense (SEAD)" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Air superiority" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Command and control (C2)" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Prompt response" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Prompt response"];
            break;
        case 168:
            QuestionText.text = [NSString stringWithFormat:@"Which fire support coordination measure (FSCM) is established and adjusted by the land forces commander, usually at the corps echelon?"];
            [Answer1 setTitle:@"Fire support coordination line (FSCL)" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Restrictive fire line" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Coordinated fire line" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Permissive fire coordination line" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Fire support coordination line (FSCL)"];
            break;
        case 169:
            QuestionText.text = [NSString stringWithFormat:@"Which fire support coordination measure (FSCM) allows conventional or improved conventional indirect fire to engage targets any time within the zone of the establishing headquarters without additional coordination?"];
            [Answer1 setTitle:@"Restrictive fire line" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Coordinated fire line" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Fire support coordination line (FSCL)" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Air support fire coordination line" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Coordinated fire line"];
            break;
        case 170:
            QuestionText.text = [NSString stringWithFormat:@"Which fire support coordination measure (FSCM) prohibits all fires into an area without prior clearance?"];
            [Answer1 setTitle:@"Restrictive fire area" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Free-fire area" forState:UIControlStateNormal];
            [Answer3 setTitle:@"No-fire area" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Airspace coordination area" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"No-fire area"];
            break;
        case 171:
            QuestionText.text = [NSString stringWithFormat:@"Fratricide is unwanted, undesireable and what?"];
            [Answer1 setTitle:@"inevitable" forState:UIControlStateNormal];
            [Answer2 setTitle:@"unavoidable" forState:UIControlStateNormal];
            [Answer3 setTitle:@"indispensible" forState:UIControlStateNormal];
            [Answer4 setTitle:@"avoidable" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Avoidable"];
            break;
        case 172:
            QuestionText.text = [NSString stringWithFormat:@"Which term employs the concept that describes the unintended physical damage to any non-combatant person(s), property, or environment(s) occuring incidental to military operations?"];
            [Answer1 setTitle:@"Collateral damage" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Fratricide" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Rules of engagement (ROE)" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Law of armed conflict (LOAC)" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Collateral damage"];
            break;
        case 173:
            QuestionText.text = [NSString stringWithFormat:@"Which type of weapon is not applicable for estimating the damage from employing under the collateral damage estimates (CDE)?"];
            [Answer1 setTitle:@"Kinetic" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Non-kinetic" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Retarded munitions" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Conventional munitions" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Non-kinetic"];
            break;
        case 174:
            QuestionText.text = [NSString stringWithFormat:@"Which term describes the capability to rapidly and accurately identify friendly, enemy and neutral forces, manage and control the battle space, and minimize to risk of fratricide?"];
            [Answer1 setTitle:@"Situational awareness (SA)" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Target identification (TID)" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Combat identification (CID)" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Positive identification (PID)" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Combat identification (CID)"];
            break;
        case 175:
            QuestionText.text = [NSString stringWithFormat:@"Which factor or condtion of positive identification (PID) identifies the capacity of a person to process information, which makes it difficult to maintain situational awareness (SA) in a complex environment?"];
            [Answer1 setTitle:@"Environmental condition" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Operational factor" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Physical factor" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Human factor" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Human factor"];
            break;
        case 176:
            QuestionText.text = [NSString stringWithFormat:@"Which factor or condition of positive identification (PID) addresses a certain type of knowledge that is difficult and time consuming to acquire?"];
            [Answer1 setTitle:@"Human" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Physical" forState:UIControlStateNormal];
            [Answer3 setTitle:@"State of equipment" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Operational" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Operational"];
            break;
        case 177:
            QuestionText.text = [NSString stringWithFormat:@"Within how many meters of the target should a visual mark impact near the target to ensure a successful attack?"];
            [Answer1 setTitle:@"50" forState:UIControlStateNormal];
            [Answer2 setTitle:@"100" forState:UIControlStateNormal];
            [Answer3 setTitle:@"150" forState:UIControlStateNormal];
            [Answer4 setTitle:@"200" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"100"];
            break;
        case 178:
            QuestionText.text = [NSString stringWithFormat:@"Within how many seconds prior to close air support (CAS) ordnance impact should the target marks from indirect fire munitions appear?"];
            [Answer1 setTitle:@"10 to 25" forState:UIControlStateNormal];
            [Answer2 setTitle:@"20 to 35" forState:UIControlStateNormal];
            [Answer3 setTitle:@"30 to 45" forState:UIControlStateNormal];
            [Answer4 setTitle:@"40 to 55" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"30 to 45"];
            break;
        case 179:
            QuestionText.text = [NSString stringWithFormat:@"Within how many meters of the target should a target mark from indirect fire be from the target to be efficient enough to direct close air support (CAS) aircraft?"];
            [Answer1 setTitle:@"100" forState:UIControlStateNormal];
            [Answer2 setTitle:@"200" forState:UIControlStateNormal];
            [Answer3 setTitle:@"300" forState:UIControlStateNormal];
            [Answer4 setTitle:@"400" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"300"];
            break;
        case 180:
            QuestionText.text = [NSString stringWithFormat:@"How many types of categories of close air support (CAS) missions are there?"];
            [Answer1 setTitle:@"Three" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Four" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Five" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Six" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Three"];
            break;
        case 181:
            QuestionText.text = [NSString stringWithFormat:@"Who does the responsibility for expenditure of ordnance rests with?"];
            [Answer1 setTitle:@"Lead aircraft pilot" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Maneuver force commander" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Terminal attack controller" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Fire support coordinator" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Maneuver force commander"];
            break;
        case 182:
            QuestionText.text = [NSString stringWithFormat:@"What is the bomb damage assessment (BDA) used for?"];
            [Answer1 setTitle:@"Updating the enemy order of battle" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Tallying for targets destroyed by aircraft" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Updating the maps with locations of destroyed vehicles" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Tallying of targets destroyed by the terminal attack controller" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Updating the enemy order of battle"];
            break;
        case 183:
            QuestionText.text = [NSString stringWithFormat:@"What are the four characteristics of a bomb"];
            [Answer1 setTitle:@"Body, tail, fusing, and fragmentation pattern" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Body, tail, fusing, and blast pattern" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Body, tail, fusing, and guidance" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Blast, fragmentation, penetration, and incediary" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Body, tail, fusing, and guidance"];
            break;
        case 184:
            QuestionText.text = [NSString stringWithFormat:@"How do the pilots aim rockets at a target?"];
            [Answer1 setTitle:@"By pointing the nose of the aircraft at the target" forState:UIControlStateNormal];
            [Answer2 setTitle:@"By pointing the rocket pod at the target" forState:UIControlStateNormal];
            [Answer3 setTitle:@"By guiding on a laser code" forState:UIControlStateNormal];
            [Answer4 setTitle:@"By guiding on an infrared beam" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"By pointing the nose of the aircraft at the target"];
            break;
        case 185:
            QuestionText.text = [NSString stringWithFormat:@"What is the minimum number of satelites the joint direct attack munition (JDAM) must acquire for mid-course guidance?"];
            [Answer1 setTitle:@"Two" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Three" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Four" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Five" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Four"];
            break;
        case 186:
            QuestionText.text = [NSString stringWithFormat:@"What is the nomenclature of the MK-84, 2,000-pound bomb, when converted into a joint direct attack munition (JDAM)?"];
            [Answer1 setTitle:@"GBU-39" forState:UIControlStateNormal];
            [Answer2 setTitle:@"GBU-38" forState:UIControlStateNormal];
            [Answer3 setTitle:@"GBU-31" forState:UIControlStateNormal];
            [Answer4 setTitle:@"GBU-32" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"GBU-31"];
            break;
        case 187:
            QuestionText.text = [NSString stringWithFormat:@"Which homing system has a camera mounted in the nose of the qeapon aligned to the axis of that weapon?"];
            [Answer1 setTitle:@"Infrared" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Laser guidance" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Antiradiation" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Television" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Television"];
            break;
        case 188:
            QuestionText.text = [NSString stringWithFormat:@"Which homing system is not night capable or under conditions of low visibility, and is not useable against camouflage targets?"];
            [Answer1 setTitle:@"Television" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Laser guidance" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Infrared" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Antiradiation" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Television"];
            break;
        case 189:
            QuestionText.text = [NSString stringWithFormat:@"The SA-8 and Roland are examples of which surface-to-air missile (SAM) system?"];
            [Answer1 setTitle:@"Man-portable air defense system" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Short-range air defense missile system" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Medium-range air defense missile system" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Long-range air defense missile system" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Short-range air defense missile system"];
            break;
        case 190:
            QuestionText.text = [NSString stringWithFormat:@"Which type of missiles is characterized as fixed sites"];
            [Answer1 setTitle:@"Man-portable air defense system" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Short-range air defense missile system" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Medium-range air defense missile system" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Long-range air defense missile system" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Long-range air defense missile system"];
            break;
        case 191:
            QuestionText.text = [NSString stringWithFormat:@"Why are man-portable air defense systems (MANPADS) and short-range air defense (SHORAD) systems your primary threat when conducting a close air support (CAS) mission?"];
            [Answer1 setTitle:@"These systems are highly accurate" forState:UIControlStateNormal];
            [Answer2 setTitle:@"These systems are available to every enemy soldier" forState:UIControlStateNormal];
            [Answer3 setTitle:@"These systems are cheap to make and therefore plentiful" forState:UIControlStateNormal];
            [Answer4 setTitle:@"These systems are found in the forward deployed area" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"These systems are found in the forward deployed area"];
            break;
        case 192:
            QuestionText.text = [NSString stringWithFormat:@"Which system uses a fire direction and control method of continuous fire, aided by observing and correcting the flight path of the tracer rounds into the target?"];
            [Answer1 setTitle:@"Antiaircraft machine guns" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Light antiaircraft artillery" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Heavy antiaircraft artillery" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Medium antiaircraft artillery" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Antiaircraft machine guns"];
            break;
        case 193:
            QuestionText.text = [NSString stringWithFormat:@"Which antiaircraft artillery system has a caliber range of 20 mm to 57 mm?"];
            [Answer1 setTitle:@"Light antiaircraft artillery" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Antiaircraft machine guns" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Heavy antiaircraft artillery" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Medium aintiaircraft artillery" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Light antiaircraft artillery"];
            break;
        case 194:
            QuestionText.text = [NSString stringWithFormat:@"Which system can be either towed or self-propelled, and a crew of three to four usually operates it?"];
            [Answer1 setTitle:@"Antiaircraft machine guns" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Light antiaircraft artillery" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Medium antiaircraft artillery" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Heavy antiaircraft artillery" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Light antiaircraft artillery"];
            break;
        case 195:
            QuestionText.text = [NSString stringWithFormat:@"Which antiaircraft artillery system has a caliber range of 75 mm to 130 mm"];
            [Answer1 setTitle:@"Light antiaircraft artillery" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Antiaircraft machine guns" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Heavy antiaircraft machine guns" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Medium antiaircraft artillery" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Medium antiaircraft artillery"];
            break;
        case 196:
            QuestionText.text = [NSString stringWithFormat:@"Which priority requires the casualty to be evacuated within four hours?"];
            [Answer1 setTitle:@"Priority" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Routine" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Urgent" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Urgent surgical" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Priority"];
            break;
        case 197:
            QuestionText.text = [NSString stringWithFormat:@"What information goes in line two of the medical evacuation (MEDEVAC) 9-Line form?"];
            [Answer1 setTitle:@"Location" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Radio frequency and call sign" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Number of casualties" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Precedence" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Location"];
            break;
        case 198:
            QuestionText.text = [NSString stringWithFormat:@"Which line of the medical evacuation (MEDEVAC) 9-Line form is used for marking the landing zone?"];
            [Answer1 setTitle:@"Five" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Six" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Seven" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Eight" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Seven"];
            break;
        case 199:
            QuestionText.text = [NSString stringWithFormat:@"Which line of the medical evacuation (MEDEVAC) 9-Line form identifies whether the landing zone is contaminated with nuclear biological chemicals (NBC) agents?"];
            [Answer1 setTitle:@"Six" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Seven" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Eight" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Nine" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Nine"];
            break;
        case 200:
            QuestionText.text = [NSString stringWithFormat:@"How many basic categories of frequency bands are primarily used by tactical air control parties?"];
            [Answer1 setTitle:@"Three" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Four" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Five" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Six" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Four"];
            break;
        case 201:
            QuestionText.text = [NSString stringWithFormat:@"What element does the Single Channel Ground and Airborne Radio System (SINCGARS) Electronic Set (ESET) contain?"];
            [Answer1 setTitle:@"Cue frequency" forState:UIControlStateNormal];
            [Answer2 setTitle:@"SINCGARS frequency hopping data" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Ground time of day" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Crypto key identification data" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"SINCGARS frequency hopping data"];
            break;
        case 202:
            QuestionText.text = [NSString stringWithFormat:@"What function does the lockout in the Single Channel Ground and Airborne Radio System (SINCGARS) LOADSET perform?"];
            [Answer1 setTitle:@"Provides fixed channel frequency" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Provides inclusive channels for hopping" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Provides frequency to be skipped during hopping" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Provides cold start net operations" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Provides frequency to be skipped during hopping"];
            break;
        case 203:
            QuestionText.text = [NSString stringWithFormat:@"All of the following items are required to operate on a HAVEQUICK net except"];
            [Answer1 setTitle:@"net number" forState:UIControlStateNormal];
            [Answer2 setTitle:@"time-of-day (TOD)" forState:UIControlStateNormal];
            [Answer3 setTitle:@"word of day (WOD)" forState:UIControlStateNormal];
            [Answer4 setTitle:@"electronic set (ESET)" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Electronic set (ESET)"];
            break;
        case 204:
            QuestionText.text = [NSString stringWithFormat:@"What is the complete frequency range on the AN/PRC-117F(C) radio?"];
            [Answer1 setTitle:@"30 to 512 MHz" forState:UIControlStateNormal];
            [Answer2 setTitle:@"2 to 512 MHze" forState:UIControlStateNormal];
            [Answer3 setTitle:@"30 to 87.975 MHz" forState:UIControlStateNormal];
            [Answer4 setTitle:@"30 to 399.975 MHz" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"30 to 512 MHz"];
            break;
        case 205:
            QuestionText.text = [NSString stringWithFormat:@"What is the power output for the 400 to 512 MHz frequency range on the AN/PRC-117F(C) radio?"];
            [Answer1 setTitle:@"1 to 5 watts" forState:UIControlStateNormal];
            [Answer2 setTitle:@"1 to 10 watts" forState:UIControlStateNormal];
            [Answer3 setTitle:@"1 to 15 watts" forState:UIControlStateNormal];
            [Answer4 setTitle:@"1 to 20 watts" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"1 to 10 watts"];
            break;
        case 206:
            QuestionText.text = [NSString stringWithFormat:@"Which function control switch position on the AN/PRC-117F(C) radio would you use to delete all crypto variable and transmission security keys"];
            [Answer1 setTitle:@"OFF (radio off)" forState:UIControlStateNormal];
            [Answer2 setTitle:@"CLR (clear)" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Z-ALL (zero-all)" forState:UIControlStateNormal];
            [Answer4 setTitle:@"TD (time delay)" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Z-ALL (zero-all)"];
            break;
        case 207:
            QuestionText.text = [NSString stringWithFormat:@"Which function control switch position on the AN/PRC-117F(C) radio would you use to electronically disconnect the hold-up battery?"];
            [Answer1 setTitle:@"CLR (clear)" forState:UIControlStateNormal];
            [Answer2 setTitle:@"OFF (radio off)" forState:UIControlStateNormal];
            [Answer3 setTitle:@"TD (time delay)" forState:UIControlStateNormal];
            [Answer4 setTitle:@"CLR (clear)" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"CLR (clear)"];
            break;
        case 208:
            QuestionText.text = [NSString stringWithFormat:@"Which connector port on the AN/PRC-117F(C) radio would you use to connect the 30 MHz to 89.9999 MHz blade antenna?"];
            [Answer1 setTitle:@"VHF Antenna" forState:UIControlStateNormal];
            [Answer2 setTitle:@"AUDIO/DATA/FILL" forState:UIControlStateNormal];
            [Answer3 setTitle:@"VHF/UHF antenna" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Accessory" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"VHF Antenna"];
            break;
        case 209:
            QuestionText.text = [NSString stringWithFormat:@"Which connector port on the AN/PRC-117F(C) radio is not used in the manpack configuration?"];
            [Answer1 setTitle:@"VHF Antenna" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Accessory" forState:UIControlStateNormal];
            [Answer3 setTitle:@"VHF/UHF antenna" forState:UIControlStateNormal];
            [Answer4 setTitle:@"AUDIO/DATA/FILL" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Accessory"];
            break;
        case 210:
            QuestionText.text = [NSString stringWithFormat:@"Which control button is also labeled as 'NET' on some AN/PRC-117F(C) radios?"];
            [Answer1 setTitle:@"PGM" forState:UIControlStateNormal];
            [Answer2 setTitle:@"CALL" forState:UIControlStateNormal];
            [Answer3 setTitle:@"PRE" forState:UIControlStateNormal];
            [Answer4 setTitle:@"CLR" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"PRE"];
            break;
        case 211:
            QuestionText.text = [NSString stringWithFormat:@"What position must the function switch be in on the AN/PRC-117F(C) radio prior to loading a fill from the AN/PYQ-10 Simple Key Loader (SKL)?"];
            [Answer1 setTitle:@"PT" forState:UIControlStateNormal];
            [Answer2 setTitle:@"CT" forState:UIControlStateNormal];
            [Answer3 setTitle:@"RV" forState:UIControlStateNormal];
            [Answer4 setTitle:@"LD" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"LD"];
            break;
        case 212:
            QuestionText.text = [NSString stringWithFormat:@"How many communication security (COMSEC) keys can the AN/PRC-117F(C) radio hold for each COMSEC type?"];
            [Answer1 setTitle:@"25" forState:UIControlStateNormal];
            [Answer2 setTitle:@"20" forState:UIControlStateNormal];
            [Answer3 setTitle:@"15" forState:UIControlStateNormal];
            [Answer4 setTitle:@"10" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"25"];
            break;
        case 213:
            QuestionText.text = [NSString stringWithFormat:@"Once you have loaded a fill into the AN/PRC-117F(C) with the digital transfer device (DTD), what is the step prior to disconnecting the fill device from the AUDIO/DATA/FILL connector?"];
            [Answer1 setTitle:@"Select the desired key type" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Turn off the DTD" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Turn off the power" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Rotate the radio's function switch from LD" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Turn off the DTD"];
            break;
        case 214:
            QuestionText.text = [NSString stringWithFormat:@"Once you have loaded a fill into the AN/PRC-117(C) with a fill device, what is the last step of the process after you have turned off the fill device and disconnected it from the radio?"];
            [Answer1 setTitle:@"Turn off the power" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Turn off the fill device power" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Rotate the radio's function switch from LD" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Select the desired key type" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Rotate the radio's function switch from LD"];
            break;
        case 215:
            QuestionText.text = [NSString stringWithFormat:@"On the AN/PRC-117F(C) radio, which menu item (when entered) will automatically enter the proper satelite downlink and uplink frequencies?"];
            [Answer1 setTitle:@"Communication security (COMSEC)" forState:UIControlStateNormal];
            [Answer2 setTitle:@"NET TYPE" forState:UIControlStateNormal];
            [Answer3 setTitle:@"DATA/VOC" forState:UIControlStateNormal];
            [Answer4 setTitle:@"FREQ CODE" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"FREQ CODE"];
            break;
        case 216:
            QuestionText.text = [NSString stringWithFormat:@"Which communication security (COMSEC) type is for voice operation only for the AN/PRC-117(C) radio?"];
            [Answer1 setTitle:@"FASCINATOR" forState:UIControlStateNormal];
            [Answer2 setTitle:@"VINSON" forState:UIControlStateNormal];
            [Answer3 setTitle:@"KG-84" forState:UIControlStateNormal];
            [Answer4 setTitle:@"ANDVT" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"FASCINATOR"];
            break;
        case 217:
            QuestionText.text = [NSString stringWithFormat:@"Which communication security (COMSEC) type is for data operation only for the AN/PRC-117(C) radio?"];
            [Answer1 setTitle:@"ANDVT" forState:UIControlStateNormal];
            [Answer2 setTitle:@"KG-84" forState:UIControlStateNormal];
            [Answer3 setTitle:@"FASCINATOR" forState:UIControlStateNormal];
            [Answer4 setTitle:@"VINSON" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"KG-84"];
            break;
        case 218:
            QuestionText.text = [NSString stringWithFormat:@"What is the power level range for satelite communication (SATCOM) programming on the AN/PRC-117(C) radio?"];
            [Answer1 setTitle:@"1 to 10 watts" forState:UIControlStateNormal];
            [Answer2 setTitle:@"10 to 100 watts" forState:UIControlStateNormal];
            [Answer3 setTitle:@"2 to 20 watts" forState:UIControlStateNormal];
            [Answer4 setTitle:@"5 to 50 watts" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"2 to 20 watts"];
            break;
        case 219:
            QuestionText.text = [NSString stringWithFormat:@"On the AN/PRC-117F(C) radio, how many authorized frequencies make up the training HAVEQUICK frequency management training FMT set?"];
            [Answer1 setTitle:@"19" forState:UIControlStateNormal];
            [Answer2 setTitle:@"18" forState:UIControlStateNormal];
            [Answer3 setTitle:@"17" forState:UIControlStateNormal];
            [Answer4 setTitle:@"16" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"16"];
            break;
        case 220:
            QuestionText.text = [NSString stringWithFormat:@"What is the transmission power selection for HAVEQUICK operations on the AN/PRC-117F(C) radio?"];
            [Answer1 setTitle:@"1 to 10 watts" forState:UIControlStateNormal];
            [Answer2 setTitle:@"1 to 5 watts" forState:UIControlStateNormal];
            [Answer3 setTitle:@"2 to 10 watts" forState:UIControlStateNormal];
            [Answer4 setTitle:@"2 to 20 watts" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"1 to 10 watts"];
            break;
        case 221:
            QuestionText.text = [NSString stringWithFormat:@"On the AN/PRC-117F(C) radio manpack, what is the maximum transmission power for the SINCGARS mode?"];
            [Answer1 setTitle:@"10 watts" forState:UIControlStateNormal];
            [Answer2 setTitle:@"20 watts" forState:UIControlStateNormal];
            [Answer3 setTitle:@"30 watts" forState:UIControlStateNormal];
            [Answer4 setTitle:@"40 watts" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"10 watts"];
            break;
        case 222:
            QuestionText.text = [NSString stringWithFormat:@"When manually setting the global-time-of-day (GTOD) on the AN/PRC-117(C) radio, how many digits of the Julian date are entered for the day component of the time entry?"];
            [Answer1 setTitle:@"All the digits" forState:UIControlStateNormal];
            [Answer2 setTitle:@"The first two digits" forState:UIControlStateNormal];
            [Answer3 setTitle:@"The last two digits" forState:UIControlStateNormal];
            [Answer4 setTitle:@"the middle two digits" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"The last two digits"];
            break;
        case 223:
            QuestionText.text = [NSString stringWithFormat:@"When conducting preventative measures on your AN/PRC-117(C) radio set, how often should you replace the hold-up battery (HUB)?"];
            [Answer1 setTitle:@"Daily" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Weekly" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Semi-annually" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Annually" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Annually"];
            break;
        case 224:
            QuestionText.text = [NSString stringWithFormat:@"When conducting preventative measures on your AN/PRC-117(C) radio set, how often should you visually inspect the connectors for corrosion, damage, or looseness?"];
            [Answer1 setTitle:@"Daily" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Weekly" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Monthly" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Annually" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Weekly"];
            break;
        case 225:
            QuestionText.text = [NSString stringWithFormat:@"How many different types of troubleshooting methods are used on the AN/PRC-117(C)?"];
            [Answer1 setTitle:@"One" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Two" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Three" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Four" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Two"];
            break;
        case 226:
            QuestionText.text = [NSString stringWithFormat:@"What action should you take if you are receiving intermittent audio on the AN/PRC-117(C)?"];
            [Answer1 setTitle:@"Check the keypad display unit cable" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Check the keypad display unit" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Clean handset connector" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Move radio set away from source of strong RF signal" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Clean handset connector"];
            break;
        case 227:
            QuestionText.text = [NSString stringWithFormat:@"What is the frequency range of the PRC-117G"];
            [Answer1 setTitle:@"12 MHz to 512 MHz" forState:UIControlStateNormal];
            [Answer2 setTitle:@"30 MHz to 512 MHz" forState:UIControlStateNormal];
            [Answer3 setTitle:@"12 MHz to 1999.9950 MHz" forState:UIControlStateNormal];
            [Answer4 setTitle:@"30 MHz to 1999.9950 MHz" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"30 MHz to 1999.9950 MHz"];
            break;
        case 228:
            QuestionText.text = [NSString stringWithFormat:@"What action may cause the AN/PRC-117G to transmit undesired transmission?"];
            [Answer1 setTitle:@"Disconnecting fill device before switching from [LD]" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Initiating a self-test with cipher switch in citadel encryption (CC)" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Connecting fill device before rotating cipher switch to [LD]" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Pressing [ENT] before transmission encryption key is selected on the fill device" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Disconnecting fill device before switching from [LD]"];
            break;
        case 229:
            QuestionText.text = [NSString stringWithFormat:@"What additional tagging is done in DS-101 protocol when loading a transmission encryption key in the AN/PRC-117G"];
            [Answer1 setTitle:@"Short title" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Classification" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Platform type" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Date time stamp" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Classification"];
            break;
        case 230:
            QuestionText.text = [NSString stringWithFormat:@"When loading the AN/PRC-117G with a communication security (COMSEC) transmission encryption key (TEK) using the simple key loader (SKL), after selecting all required keys and clicking OK what option would you select from the drop-down list?"];
            [Answer1 setTitle:@"Radio" forState:UIControlStateNormal];
            [Answer2 setTitle:@"MX-18290" forState:UIControlStateNormal];
            [Answer3 setTitle:@"DS-102 protocol" forState:UIControlStateNormal];
            [Answer4 setTitle:@"DS-101 protocol" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"DS-102 protocol"];
            break;
        case 231:
            QuestionText.text = [NSString stringWithFormat:@"When loading the AN/PRC-117G with a communication security (COMSEC) transmission encryption key using the simple key loader (SKL) after selecting the appropriate protocol on the simple key loader, what is the only settings that is used?"];
            [Answer1 setTitle:@"Send wake up (5 Sec)" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Bus address (1011001)" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Baud rate (25k)" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Active mode (KYK-13)" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Active mode (KYK-13)"];
            break;
        case 232:
            QuestionText.text = [NSString stringWithFormat:@"On the AN/PRC-117G, what satelite communication (SATCOM) channel numbers would you use to access the channel programming screen in order to enter RX/TX frequencies?"];
            [Answer1 setTitle:@"000, 001, or 998" forState:UIControlStateNormal];
            [Answer2 setTitle:@"100, 101 or 998" forState:UIControlStateNormal];
            [Answer3 setTitle:@"248, 249 or 999" forState:UIControlStateNormal];
            [Answer4 setTitle:@"348, 349 or 999" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"248, 249 or 999"];
            break;
        case 233:
            QuestionText.text = [NSString stringWithFormat:@"What number in a word of day (WOD) segment indicates the position for the day of the month (DOM)?"];
            [Answer1 setTitle:@"15" forState:UIControlStateNormal];
            [Answer2 setTitle:@"14" forState:UIControlStateNormal];
            [Answer3 setTitle:@"02" forState:UIControlStateNormal];
            [Answer4 setTitle:@"01" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"14"];
            break;
        case 234:
            QuestionText.text = [NSString stringWithFormat:@"Which is not an option for the last two digits of a HAVEQUICK net?"];
            [Answer1 setTitle:@"00" forState:UIControlStateNormal];
            [Answer2 setTitle:@"50" forState:UIControlStateNormal];
            [Answer3 setTitle:@"75" forState:UIControlStateNormal];
            [Answer4 setTitle:@"25" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"75"];
            break;
        case 235:
            QuestionText.text = [NSString stringWithFormat:@"On the AN/PRC-117G, which protocol should be used to electronically transfer the word of the day (WOD) using the simple key loader?"];
            [Answer1 setTitle:@"MX-18290" forState:UIControlStateNormal];
            [Answer2 setTitle:@"KYK-13" forState:UIControlStateNormal];
            [Answer3 setTitle:@"DS-102" forState:UIControlStateNormal];
            [Answer4 setTitle:@"DS-101" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"DS-101"];
            break;
        case 236:
            QuestionText.text = [NSString stringWithFormat:@"What are the keystrokes to access the HAVEQUICK menu that allows for creation or modification of HAVEQUICK presets?"];
            [Answer1 setTitle:@"[PGM]>SYSTEM PRESETS>SYSTEM PRESET CONFIG" forState:UIControlStateNormal];
            [Answer2 setTitle:@"[PGM]>SYSTEM PRESETS>VULOS CONFIG" forState:UIControlStateNormal];
            [Answer3 setTitle:@"[PGM]>SYSTEM PRESETS>HAVEQUICK CONFIG" forState:UIControlStateNormal];
            [Answer4 setTitle:@"[PGM]>SYSTEM PRESETS>WAVEFORM CONFIG" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"[PGM]>SYSTEM PRESETS>SYSTEM PRESET CONFIG"];
            break;
        case 237:
            QuestionText.text = [NSString stringWithFormat:@"When configuring HAVEQUICK TOD on the AN/PRC-117G if 00 is entered for either the month or day, what will the screen display?"];
            [Answer1 setTitle:@"Frequency management training (FMT)" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Single word of the day (SWOD)" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Multiple word of the day (MWOD)" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Word of the day (WOD)" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Single word of the day (SWOD)"];
            break;
        case 238:
            QuestionText.text = [NSString stringWithFormat:@"What location in the AN/PRC-117G SYSTEM PRESET CONFIG menu is the associated HOPSET assigned?"];
            [Answer1 setTitle:@"HOPSET/LOCKOUT" forState:UIControlStateNormal];
            [Answer2 setTitle:@"HOPSET LOCATION" forState:UIControlStateNormal];
            [Answer3 setTitle:@"HOPSET COMPARTMENT" forState:UIControlStateNormal];
            [Answer4 setTitle:@"TRAFFIC MODE" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"HOPSET COMPARTMENT"];
            break;
        case 239:
            QuestionText.text = [NSString stringWithFormat:@"When setting up the AN/PRC-117G for late net entry (LNE), what would cause the LNE to be disabled?"];
            [Answer1 setTitle:@"Global position system (GPS) is noy syncing" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Radio is more then four seconds off" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Net master is not available" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Radio is set to master" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Radio is set to master"];
            break;
        case 240:
            QuestionText.text = [NSString stringWithFormat:@"What does the warning message 'Fault Configuration Cleared' indicate on the AN/PRC-117G"];
            [Answer1 setTitle:@"Indicates loss of all radio configuration, (COMSEC), and (TRANSEC) data" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Keys are not assigned to the preset" forState:UIControlStateNormal];
            [Answer3 setTitle:@"RF board is temporarily or permanently rendered incapable of RX or TX on the currently loaded" forState:UIControlStateNormal];
            [Answer4 setTitle:@"A hopping net was loaded, but no valid Hopset is programmed" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Indicates loss of all radio configuration, (COMSEC), and (TRANSEC) data"];
            break;
        case 241:
            QuestionText.text = [NSString stringWithFormat:@"What type of electronic counter-countermeasure (ECCM) is the AN/PRC-117(C) not capable of?"];
            [Answer1 setTitle:@"High frequency (HF) list" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Single Channel Ground and Airborne Radio System (SINCGARS)" forState:UIControlStateNormal];
            [Answer3 setTitle:@"High frequency (HF) narrowband" forState:UIControlStateNormal];
            [Answer4 setTitle:@"High frequency (HF) wideband" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Single Channel Ground and Airborne Radio System (SINCGARS)"];
            break;
        case 242:
            QuestionText.text = [NSString stringWithFormat:@"Which position on the AN/PRC-150(C)'s function switch is not used?"];
            [Answer1 setTitle:@"Z" forState:UIControlStateNormal];
            [Answer2 setTitle:@"CT" forState:UIControlStateNormal];
            [Answer3 setTitle:@"CC" forState:UIControlStateNormal];
            [Answer4 setTitle:@"RV" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"CC"];
            break;
        case 243:
            QuestionText.text = [NSString stringWithFormat:@"When filling the AN/PRC-150(C) using the AN/CYZ-10 digital transfer device (DTD), what should you ensure the fill program is set to?"];
            [Answer1 setTitle:@"KYK-13" forState:UIControlStateNormal];
            [Answer2 setTitle:@"DTD" forState:UIControlStateNormal];
            [Answer3 setTitle:@"DS-102" forState:UIControlStateNormal];
            [Answer4 setTitle:@"DS-101" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"DS-101"];
            break;
        case 244:
            QuestionText.text = [NSString stringWithFormat:@"What are the absic characteristics of a radio net on the AN/PRC-150(C)?"];
            [Answer1 setTitle:@"Channel number, frequency, modulation type and communication security (COMSEC)" forState:UIControlStateNormal];
            [Answer2 setTitle:@"System channel, frequency, modulation type and COMSEC" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Channel number, sideband, frequency and COMSEC" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Compartment, data rate, spacing and COMSEC" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Channel number, frequency, modulation type and communication security (COMSEC)"];
            break;
        case 245:
            QuestionText.text = [NSString stringWithFormat:@"What are the two places you have to go in order to program a radio net on the AN/PRC-150(C)?"];
            [Answer1 setTitle:@"Type and system" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Preset and system" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Preset and default" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Type and default" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Preset and system"];
            break;
        case 246:
            QuestionText.text = [NSString stringWithFormat:@"What is the shortest period that you should expect the AN/PRC-150(C)'s hold up battery (HUB) to last?"];
            [Answer1 setTitle:@"12 months" forState:UIControlStateNormal];
            [Answer2 setTitle:@"8 months" forState:UIControlStateNormal];
            [Answer3 setTitle:@"4 months" forState:UIControlStateNormal];
            [Answer4 setTitle:@"18 months" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"4 months"];
            break;
        case 247:
            QuestionText.text = [NSString stringWithFormat:@"In test mode on the AN/PRC-150(C), what should you choose to test everything?"];
            [Answer1 setTitle:@"Black/Red Data" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Complete" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Prepost" forState:UIControlStateNormal];
            [Answer4 setTitle:@"System" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"System"];
            break;
        case 248:
            QuestionText.text = [NSString stringWithFormat:@"Which is not an option of the Defense Advanced GPS Receiver, if you press and hold down the WP/ENTER key?"];
            [Answer1 setTitle:@"Edit a waypoint" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Mark a waypoint" forState:UIControlStateNormal];
            [Answer3 setTitle:@"GOTO a waypoint" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Create a waypoint" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Edit a waypoint"];
            break;
        case 249:
            QuestionText.text = [NSString stringWithFormat:@"How do you cancel an operation on the Defense Advanced GPS Receiver?"];
            [Answer1 setTitle:@"Press and release the menu button" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Press and release the power button" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Press and hold the menu button" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Press and hold the power button" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Press and release the power button"];
            break;
        case 250:
            QuestionText.text = [NSString stringWithFormat:@"What conditions should the off mode display heater be used on the Defense Advanced GPS Receiver?"];
            [Answer1 setTitle:@"During transit" forState:UIControlStateNormal];
            [Answer2 setTitle:@"To conserve power" forState:UIControlStateNormal];
            [Answer3 setTitle:@"During extreme cold conditions" forState:UIControlStateNormal];
            [Answer4 setTitle:@"During high glare environments" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"During extreme cold conditions"];
            break;
        case 251:
            QuestionText.text = [NSString stringWithFormat:@"What is one of the modes of operation on the Defense Advanced GPS Receiver?"];
            [Answer1 setTitle:@"Initialize" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Practice" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Median" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Average" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Average"];
            break;
        case 252:
            QuestionText.text = [NSString stringWithFormat:@"How do you mark present position on the Defense Advanced GPS Receiver?"];
            [Answer1 setTitle:@"Push and hold ENTER key and select MARK" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Push and hold PAGE key and select MARK" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Push and hold MENU key and select MARK" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Push and hold F1 key and select MARK" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Push and hold ENTER key and select MARK"];
            break;
        case 253:
            QuestionText.text = [NSString stringWithFormat:@"What does it mean if any of the Defense Advanced GPS Receiver fire support pages are blinking after range calculation?"];
            [Answer1 setTitle:@"Danger close (>100 meters)" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Current position unavailable" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Invalid keystroke input" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Calculation error" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Current position unavailable"];
            break;
        case 254:
            QuestionText.text = [NSString stringWithFormat:@"What page is displayed on the Defense Advanced GPS Receiver when the operator selects Navigate Route from the routes page menu?"];
            [Answer1 setTitle:@"Main menu page" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Sky view page" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Nav pointer page" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Present position page" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Nav pointer page"];
            break;
        case 255:
            QuestionText.text = [NSString stringWithFormat:@"Where is the distance button on the pocket laser range finder (PLRF-15C) located?"];
            [Answer1 setTitle:@"The underside" forState:UIControlStateNormal];
            [Answer2 setTitle:@"The left side" forState:UIControlStateNormal];
            [Answer3 setTitle:@"The target's end" forState:UIControlStateNormal];
            [Answer4 setTitle:@"The operator's end" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"The operator's end"];
            break;
        case 256:
            QuestionText.text = [NSString stringWithFormat:@"To perform a 12 point calibration on the PLRF-15C, point the device northwards and press the azimuth button four times until what is displayed?"];
            [Answer1 setTitle:@"COMP" forState:UIControlStateNormal];
            [Answer2 setTitle:@"CAL" forState:UIControlStateNormal];
            [Answer3 setTitle:@"3dOn" forState:UIControlStateNormal];
            [Answer4 setTitle:@"6Pt" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"COMP"];
            break;
        case 257:
            QuestionText.text = [NSString stringWithFormat:@"What will be displayed in the reticle of the PLRF-15C if the target is too small or inaccurately targetted?"];
            [Answer1 setTitle:@"_--_" forState:UIControlStateNormal];
            [Answer2 setTitle:@"----" forState:UIControlStateNormal];
            [Answer3 setTitle:@"-__-" forState:UIControlStateNormal];
            [Answer4 setTitle:@"---_" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"----"];
            break;
        case 258:
            QuestionText.text = [NSString stringWithFormat:@"When the Multi-target indicator is illuminated on the Pocket Laser Range Finder and you want the range for the target furthest away from you, you rotate the switch to"];
            [Answer1 setTitle:@"RANGE" forState:UIControlStateNormal];
            [Answer2 setTitle:@"FIRST" forState:UIControlStateNormal];
            [Answer3 setTitle:@"LAST" forState:UIControlStateNormal];
            [Answer4 setTitle:@"TEST" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"LAST"];
            break;
        case 259:
            QuestionText.text = [NSString stringWithFormat:@"Which indicator illuminates in the eyepiece to ensure that the GLTD II laser is firing during mark operations"];
            [Answer1 setTitle:@"AZ" forState:UIControlStateNormal];
            [Answer2 setTitle:@"MLT" forState:UIControlStateNormal];
            [Answer3 setTitle:@"EL" forState:UIControlStateNormal];
            [Answer4 setTitle:@"XMT" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"XMT"];
            break;
        case 260:
            QuestionText.text = [NSString stringWithFormat:@"The Infrared Zoom Laser Illuminator/Designator 1000 multifunction laser illuminator/target designator emits a concentrated beam of invisible infrared radation which is class"];
            [Answer1 setTitle:@"4 laser" forState:UIControlStateNormal];
            [Answer2 setTitle:@"2 laser" forState:UIControlStateNormal];
            [Answer3 setTitle:@"3 laser" forState:UIControlStateNormal];
            [Answer4 setTitle:@"1 laser" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"4 laser"];
            break;
        case 261:
            QuestionText.text = [NSString stringWithFormat:@"At high power, what are the pulses per second for the Infrared Zoom Laser Illumintaor/Designator 1000 on PULSE setting?"];
            [Answer1 setTitle:@"5 to 7" forState:UIControlStateNormal];
            [Answer2 setTitle:@"3 to 5" forState:UIControlStateNormal];
            [Answer3 setTitle:@"7 to 9" forState:UIControlStateNormal];
            [Answer4 setTitle:@"1 to 3" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"3 to 5"];
            break;
        case 262:
            QuestionText.text = [NSString stringWithFormat:@"What is the distance along the axis of the unobstructed beam from a laser to the human eye beyond which the irradiance or radiant exposure is not expected to exceed the applicable maximum permissible exposure called?"];
            [Answer1 setTitle:@"Nominal maximum permissible exposure" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Nominal skin hazard distance" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Nominal ocular hazard distance" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Optical density" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Nominal ocular hazard distance"];
            break;
        case 263:
            QuestionText.text = [NSString stringWithFormat:@"Which is not one of the four safety devices that must be enabled before the Infrared Zoom Laser Illuminator/Designator will function?"];
            [Answer1 setTitle:@"Arming plug or remote fire switch" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Mode select switch" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Fire switch or remote fire switch" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Yellow armed indicator light" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Yellow armed indicator light"];
            break;
        case 264:
            QuestionText.text = [NSString stringWithFormat:@"What device is capable of seeing the Infrared Zoom Laser Illuminator/Designator 1000 beam?"];
            [Answer1 setTitle:@"SNIPER POD" forState:UIControlStateNormal];
            [Answer2 setTitle:@"LANTERN POD" forState:UIControlStateNormal];
            [Answer3 setTitle:@"PAVEWAY II" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Thermal scope" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"SNIPER POD"];
            break;
            
        default:
            break;
    }
    
    
    
}

-(void)Category5{
    
    NSUInteger QuestionSelected= (arc4random() %200);
    
    switch (QuestionSelected) {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"While controlling fighter aircraft, transmit 'KNOCK-IT-OFF' when safety of flight is a factor."];
            [Answer1 setTitle:@"True" forState:UIControlStateNormal];
            [Answer2 setTitle:@"False" forState:UIControlStateNormal];
            [Answer3 setTitle:@"" forState:UIControlStateNormal];
            [Answer4 setTitle:@"" forState:UIControlStateNormal];
            Answer1Correct = YES;
            Answer3.hidden = YES;
            Answer4.hidden = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"True"];
            break;
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"Should a pilot encounter a loss of situational awareness (SA) while under JTAC control, the proper radio transmission is__________."];
            [Answer1 setTitle:@"TERMINATE" forState:UIControlStateNormal];
            [Answer2 setTitle:@"KNOCK-IT-OFF" forState:UIControlStateNormal];
            [Answer3 setTitle:@"STOP-STOP-STOP" forState:UIControlStateNormal];
            [Answer4 setTitle:@"ABORT-ABORT-ABORT" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"KNOCK-IT-OFF"];
            break;
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"Aircraft will initiate terminate procedures with a ___________, or with a 'TERMINATE' call when conditions are not appropriate for a wing rock (night, weather, etc.)."];
            [Answer1 setTitle:@"360-degree turn to the left" forState:UIControlStateNormal];
            [Answer2 setTitle:@"360-degree turn to the right" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Wing Rock" forState:UIControlStateNormal];
            [Answer4 setTitle:@"None of the above" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Wing Rock"];
            break;
        case 3:
            QuestionText.text = [NSString stringWithFormat:@"Aircrews may employ flares and VECP Smokey Devils in a non-government owned or controlled training area (i.e. MOA) only if the area has an approved AF Form 813, Request for Environmental Impact Analysis."];
            [Answer1 setTitle:@"True" forState:UIControlStateNormal];
            [Answer2 setTitle:@"False" forState:UIControlStateNormal];
            [Answer3 setTitle:@"" forState:UIControlStateNormal];
            [Answer4 setTitle:@"" forState:UIControlStateNormal];
            Answer1Correct = YES;
            Answer3.hidden = YES;
            Answer4.hidden = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"True"];
            break;
        case 4:
            QuestionText.text = [NSString stringWithFormat:@"For air-to-surface training, do not conduct simulated attacks against off-range or manned targets with internally/externally loaded live ordnance or externally loaded heavyweight inert ordnance."];
            [Answer1 setTitle:@"True" forState:UIControlStateNormal];
            [Answer2 setTitle:@"False" forState:UIControlStateNormal];
            [Answer3 setTitle:@"" forState:UIControlStateNormal];
            [Answer4 setTitle:@"" forState:UIControlStateNormal];
            Answer1Correct = YES;
            Answer3.hidden = YES;
            Answer4.hidden = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"True"];
            break;
        case 5:
            QuestionText.text = [NSString stringWithFormat:@"Air-to-Surface training rules require at least ______Visibility minimum for non-AFSC affiliated fixed wing aircraft."];
            [Answer1 setTitle:@"1.5 nm" forState:UIControlStateNormal];
            [Answer2 setTitle:@"3 nm" forState:UIControlStateNormal];
            [Answer3 setTitle:@"1 nm" forState:UIControlStateNormal];
            [Answer4 setTitle:@"5 nm" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"3 nm"];
            break;
        case 6:
            QuestionText.text = [NSString stringWithFormat:@"If the target area cannot be cleared by any other means on Class B/C ranges, CAS aircrews will perform a dry-clearing pass/dry first run attack (FRA) before weapons delivery to confirm the target area is clear of ________."];
            [Answer1 setTitle:@"any other air traffic" forState:UIControlStateNormal];
            [Answer2 setTitle:@"any birds or marine life" forState:UIControlStateNormal];
            [Answer3 setTitle:@"unauthorized persons or vessels" forState:UIControlStateNormal];
            [Answer4 setTitle:@"smoke, fog or low clouds" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Unauthorized persons or vessels"];
            break;
        case 7:
            QuestionText.text = [NSString stringWithFormat:@"On Class B/C ranges, who are authorized sources to ensure the target area is clear?"];
            [Answer1 setTitle:@"FAC(A)/JTAC" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Departing flight" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Range Personnel" forState:UIControlStateNormal];
            [Answer4 setTitle:@"All of the Above" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"All of the Above"];
            break;
        case 8:
            QuestionText.text = [NSString stringWithFormat:@"For a peacetime, night weapons delivery, the non-AFSOC aircraft minimum in-flight visibility for visual attacks is ____ nm."];
            [Answer1 setTitle:@"5" forState:UIControlStateNormal];
            [Answer2 setTitle:@"10" forState:UIControlStateNormal];
            [Answer3 setTitle:@"2" forState:UIControlStateNormal];
            [Answer4 setTitle:@"7" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"5"];
            break;
        case 9:
            QuestionText.text = [NSString stringWithFormat:@"If non-LEP equipped personnel are in the area to be designated and you are unable to ensure the absence of personnel using image-magnifying devices (binoculars, telescopes, etc.) in the area to be designated, LITENING ATP IR pointer employment is restricted to what altitude?"];
            [Answer1 setTitle:@"24,000 AGL" forState:UIControlStateNormal];
            [Answer2 setTitle:@"10,000 AGL" forState:UIControlStateNormal];
            [Answer3 setTitle:@"34,000 AGL" forState:UIControlStateNormal];
            [Answer4 setTitle:@"14,000 AGL" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"10,000 AGL"];
            break;
        case 10:
            QuestionText.text = [NSString stringWithFormat:@"A NATO FAC that is only NATO Combat Ready Day High and Night High qualified must be under the direct supervision of a US JTAC instructor to control air strikes in US CAS training."];
            [Answer1 setTitle:@"True" forState:UIControlStateNormal];
            [Answer2 setTitle:@"False" forState:UIControlStateNormal];
            [Answer3 setTitle:@"" forState:UIControlStateNormal];
            [Answer4 setTitle:@"" forState:UIControlStateNormal];
            Answer1Correct = YES;
            Answer3.hidden = YES;
            Answer4.hidden = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"True"];
            break;
        case 11:
            QuestionText.text = [NSString stringWithFormat:@"When using altitude deconfliction a minimum of ______ vertical seperation between altitude blocks is required below 5,000 feet AGL."];
            [Answer1 setTitle:@"1,000 meters" forState:UIControlStateNormal];
            [Answer2 setTitle:@"1,000 feet" forState:UIControlStateNormal];
            [Answer3 setTitle:@"500 meterse" forState:UIControlStateNormal];
            [Answer4 setTitle:@"500 feet" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"500 feet"];
            break;
        case 12:
            QuestionText.text = [NSString stringWithFormat:@"What type of operation is defined as CAS/JAAT or FAC(A) sorties flown in support of ground or rotary wing maneuver units that involve members of more than one Service?"];
            [Answer1 setTitle:@"Joint Live Fire" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Strategic" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Naval" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Air-to-Air" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Joint Live Fire"];
            break;
        case 13:
            QuestionText.text = [NSString stringWithFormat:@"During joint live fire operations, the following is considered an acceptable safety observer."];
            [Answer1 setTitle:@"JTAC" forState:UIControlStateNormal];
            [Answer2 setTitle:@"FAC(A)" forState:UIControlStateNormal];
            [Answer3 setTitle:@"ALO" forState:UIControlStateNormal];
            [Answer4 setTitle:@"All of the Above" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"All of the Above"];
            break;
        case 14:
            QuestionText.text = [NSString stringWithFormat:@"For joint live fire operations, the minimum altitude over tropps will be ________ feet AGL, minimum aircrew qualifications, local directive minimum, or airspace coordination minimums, whichever is higher."];
            [Answer1 setTitle:@"100" forState:UIControlStateNormal];
            [Answer2 setTitle:@"200" forState:UIControlStateNormal];
            [Answer3 setTitle:@"300" forState:UIControlStateNormal];
            [Answer4 setTitle:@"400" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"200"];
            break;
        case 15:
            QuestionText.text = [NSString stringWithFormat:@"What document lists the minimum safe distances for ground parties in relation to the target/impact area during live fire training?"];
            [Answer1 setTitle:@"JP 3-09.3" forState:UIControlStateNormal];
            [Answer2 setTitle:@"AFDD 2" forState:UIControlStateNormal];
            [Answer3 setTitle:@"AFI 13-112, Volume 1" forState:UIControlStateNormal];
            [Answer4 setTitle:@"AFI 11-214" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"AFI 11-214"];
            break;
        case 16:
            QuestionText.text = [NSString stringWithFormat:@"This class of range is either manned or unmanned; is ground-scoring capable; and does not have an RCO on range for controlling aircraft operations."];
            [Answer1 setTitle:@"Class A range" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Class B range" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Class C range" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Class D range" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Class B range"];
            break;
        case 17:
            QuestionText.text = [NSString stringWithFormat:@"For Class A ranges, the _______ is responsible for all range operations and air/ground safety, except in cases where weapons release clearance is delegated."];
            [Answer1 setTitle:@"Aircraft Flight Lead" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Range Control Officer" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Range Superintendent" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Both A and B" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Range Control Officer"];
            break;
        case 18:
            QuestionText.text = [NSString stringWithFormat:@"In case of an aircraft crash during Class A range operations, the _________ will initiate all necessary emergency actions."];
            [Answer1 setTitle:@"JTAC" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Range Superintendent" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Range Control Officer" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Wingman of the aircraft that crashed" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Range Control Officer"];
            break;
        case 19:
            QuestionText.text = [NSString stringWithFormat:@"In case of an aircraft crash during Class B and C range operations, ________ will start the emergency actions."];
            [Answer1 setTitle:@"JTAC" forState:UIControlStateNormal];
            [Answer2 setTitle:@"FAC(A)" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Flight lead" forState:UIControlStateNormal];
            [Answer4 setTitle:@"All of the above" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"All of the above"];
            break;
        case 20:
            QuestionText.text = [NSString stringWithFormat:@"For inertially aided munitions, significant errors can result if different datums are used by the controller and the weapon delivery platform."];
            [Answer1 setTitle:@"True" forState:UIControlStateNormal];
            [Answer2 setTitle:@"False" forState:UIControlStateNormal];
            [Answer3 setTitle:@"" forState:UIControlStateNormal];
            [Answer4 setTitle:@"" forState:UIControlStateNormal];
            Answer1Correct = YES;
            Answer3.hidden = YES;
            Answer4.hidden = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"True"];
            break;
        case 21:
            QuestionText.text = [NSString stringWithFormat:@"Like all other weapons, when able, precision-guided munitions such as inertially aided munitions should be employed __________ to the FLOT (forward line of tropps)."];
            [Answer1 setTitle:@"perpendicular" forState:UIControlStateNormal];
            [Answer2 setTitle:@"parallel" forState:UIControlStateNormal];
            [Answer3 setTitle:@"tangentally" forState:UIControlStateNormal];
            [Answer4 setTitle:@"vertical" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Parallel"];
            break;
        case 22:
            QuestionText.text = [NSString stringWithFormat:@"There are six elements in the call for fire: the observer identification, warning order, target location, _________, __________ and ________."];
            [Answer1 setTitle:@"target description, method of engagement and time of flight" forState:UIControlStateNormal];
            [Answer2 setTitle:@"time of flight, maximum ordnance and adjust fire" forState:UIControlStateNormal];
            [Answer3 setTitle:@"target description, method of engagement, and method of fire and control" forState:UIControlStateNormal];
            [Answer4 setTitle:@"target sizing, fusing and polar plot" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Target description, method of engagement, and method of fire and control"];
            break;
        case 23:
            QuestionText.text = [NSString stringWithFormat:@"Concerning artillery/mortar/Naval gunfire, 'Splash' means the rounds will impact in ___ seconds. It will be announced by the fire direction center (FDC)."];
            [Answer1 setTitle:@"5" forState:UIControlStateNormal];
            [Answer2 setTitle:@"10" forState:UIControlStateNormal];
            [Answer3 setTitle:@"15" forState:UIControlStateNormal];
            [Answer4 setTitle:@"30" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"5"];
            break;
        case 24:
            QuestionText.text = [NSString stringWithFormat:@"Concerning an artiller call for fire, 'At my command' is an example of __________."];
            [Answer1 setTitle:@"Method of fire and control" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Method of engagement" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Message to Observer (MTO)" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Both A and B" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Method of fire and control"];
            break;
        case 25:
            QuestionText.text = [NSString stringWithFormat:@"Danger close distances for friendly troops when firing artillery, mortars and/or naval surface fire can be found in what document?"];
            [Answer1 setTitle:@"AFPD 13-1" forState:UIControlStateNormal];
            [Answer2 setTitle:@"AFTTP(I) 3-2.6, JFIRE" forState:UIControlStateNormal];
            [Answer3 setTitle:@"JP 3-09.3" forState:UIControlStateNormal];
            [Answer4 setTitle:@"AFI 13-112, Volume 1" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"AFTTP(I) 3-2.6, JFIRE"];
            break;
        case 26:
            QuestionText.text = [NSString stringWithFormat:@"What is a suggested ammunition for bunkers (large or small) when making a call for fire?"];
            [Answer1 setTitle:@"ICM" forState:UIControlStateNormal];
            [Answer2 setTitle:@"HE/VT" forState:UIControlStateNormal];
            [Answer3 setTitle:@"HE/PD" forState:UIControlStateNormal];
            [Answer4 setTitle:@"DPICM" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"HE/PD"];
            break;
        case 27:
            QuestionText.text = [NSString stringWithFormat:@"A method of integrating rotary-wing and fixed-wing aircraft to locate and attack high-priority targets and targets of opportunity is a(n) ___________"];
            [Answer1 setTitle:@"brigade combat team (BCT)" forState:UIControlStateNormal];
            [Answer2 setTitle:@"air component coordination element (ACCE)" forState:UIControlStateNormal];
            [Answer3 setTitle:@"combat air patrol (CAP)" forState:UIControlStateNormal];
            [Answer4 setTitle:@"joint air attack team (JAAT)" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Joint air attack team (JAAT)"];
            break;
        case 28:
            QuestionText.text = [NSString stringWithFormat:@"A Joint Air Attack Team (JAAT) is a method of employment, not a type of mission."];
            [Answer1 setTitle:@"True" forState:UIControlStateNormal];
            [Answer2 setTitle:@"False" forState:UIControlStateNormal];
            [Answer3 setTitle:@"" forState:UIControlStateNormal];
            [Answer4 setTitle:@"" forState:UIControlStateNormal];
            Answer1Correct = YES;
            Answer3.hidden = YES;
            Answer4.hidden = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"True"];
            break;
        case 29:
            QuestionText.text = [NSString stringWithFormat:@"The two attack methods used during JAAT operations are _________ and __________."];
            [Answer1 setTitle:@"random; combined" forState:UIControlStateNormal];
            [Answer2 setTitle:@"combined; sectored" forState:UIControlStateNormal];
            [Answer3 setTitle:@"simultaneous; sectored" forState:UIControlStateNormal];
            [Answer4 setTitle:@"simultaneous; sequential" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Combined; sectored"];
            break;
        case 30:
            QuestionText.text = [NSString stringWithFormat:@"The three types of firepower timing options for a joint air attack team (JAAT) are simultaneous, sequential and _________."];
            [Answer1 setTitle:@"combined" forState:UIControlStateNormal];
            [Answer2 setTitle:@"quadrant" forState:UIControlStateNormal];
            [Answer3 setTitle:@"random" forState:UIControlStateNormal];
            [Answer4 setTitle:@"lateral" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Random"];
            break;
        case 31:
            QuestionText.text = [NSString stringWithFormat:@"Based on the current __________, the supported commander will weigh the benefits and liabilities of authorizing particular types of munitions and proximity of employment to personnel and other avoidance areas."];
            [Answer1 setTitle:@"enemy" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Air Tasking Order (ATO)" forState:UIControlStateNormal];
            [Answer3 setTitle:@"targeting" forState:UIControlStateNormal];
            [Answer4 setTitle:@"risk assessment" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Risk assessment"];
            break;
        case 32:
            QuestionText.text = [NSString stringWithFormat:@"_______ is/are those actions that provide electronic, mechanical, voice or visual communications that provide approaching aircraft and/or weapons additional information regarding a specific target location."];
            [Answer1 setTitle:@"Terminal guidance operations" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Close air support" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Terminal attack control" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Thermal imaging system" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Terminal guidance operations"];
            break;
        case 33:
            QuestionText.text = [NSString stringWithFormat:@"Mandatory readback items in the CAS 9-Line Briefing are _________."];
            [Answer1 setTitle:@"Lines 1 through 9" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Lines 4, 6 and restrictions" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Lines 1, 2, and 8" forState:UIControlStateNormal];
            [Answer4 setTitle:@"None" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Lines 4, 6 and restrictions"];
            break;
        case 34:
            QuestionText.text = [NSString stringWithFormat:@"To get the AC-130 to fire closer than DANGER CLOSE distances, the observer must accept responsibility. State _____(with commander's initials) on line five of the AC-130 Call for Fire."];
            [Answer1 setTitle:@"All on my Position" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Cleared Hot" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Cleared Danger Close" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Adjust Danger Close" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Cleared Danger Close"];
            break;
        case 35:
            QuestionText.text = [NSString stringWithFormat:@"What JTAC brevity code means to 'continue present maneuver, ornance release NOT authorized;' Type 1, 2, or 3 controls?"];
            [Answer1 setTitle:@"CLEARED HOT" forState:UIControlStateNormal];
            [Answer2 setTitle:@"CONTINUE DRY" forState:UIControlStateNormal];
            [Answer3 setTitle:@"CLEARED TO ENGAGE" forState:UIControlStateNormal];
            [Answer4 setTitle:@"ABORT" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"CONTINUE DRY"];
            break;
        case 36:
            QuestionText.text = [NSString stringWithFormat:@"What JTAC brevity code is used for 'JTAC Type 3 control clearance?"];
            [Answer1 setTitle:@"CLEARED HOT" forState:UIControlStateNormal];
            [Answer2 setTitle:@"CONTINUE DRY" forState:UIControlStateNormal];
            [Answer3 setTitle:@"CLEARED TO ENGAGE" forState:UIControlStateNormal];
            [Answer4 setTitle:@"ABORT" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"CLEARED TO ENGAGE"];
            break;
        case 37:
            QuestionText.text = [NSString stringWithFormat:@"The words 'CLEARED HOT' will only be used when ornance is actually to be delivered."];
            [Answer1 setTitle:@"True" forState:UIControlStateNormal];
            [Answer2 setTitle:@"False" forState:UIControlStateNormal];
            [Answer3 setTitle:@"" forState:UIControlStateNormal];
            [Answer4 setTitle:@"" forState:UIControlStateNormal];
            Answer1Correct = YES;
            Answer3.hidden = YES;
            Answer4.hidden = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"True"];
            break;
        case 38:
            QuestionText.text = [NSString stringWithFormat:@"Which aircraft utilizes a 25mm GAU-12?"];
            [Answer1 setTitle:@"A-10" forState:UIControlStateNormal];
            [Answer2 setTitle:@"AH-64" forState:UIControlStateNormal];
            [Answer3 setTitle:@"AV-8B" forState:UIControlStateNormal];
            [Answer4 setTitle:@"GR-7" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"AV-8B"];
            break;
        case 39:
            QuestionText.text = [NSString stringWithFormat:@"Which of the following aircraft is Link-16 capable?"];
            [Answer1 setTitle:@"F/A-18" forState:UIControlStateNormal];
            [Answer2 setTitle:@"F-16" forState:UIControlStateNormal];
            [Answer3 setTitle:@"F-15E" forState:UIControlStateNormal];
            [Answer4 setTitle:@"All of the above" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"All of the above"];
            break;
        case 40:
            QuestionText.text = [NSString stringWithFormat:@"Low-Altitude Navigation and Training Infrared for Night (LANTIRN) can be used with what Air Force aircraft?"];
            [Answer1 setTitle:@"F-15E" forState:UIControlStateNormal];
            [Answer2 setTitle:@"F-22" forState:UIControlStateNormal];
            [Answer3 setTitle:@"A-10" forState:UIControlStateNormal];
            [Answer4 setTitle:@"F/A-18" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"F-15E"];
            break;
        case 41:
            QuestionText.text = [NSString stringWithFormat:@"The PPN-19 Beacon works with which aircraft?"];
            [Answer1 setTitle:@"A-10" forState:UIControlStateNormal];
            [Answer2 setTitle:@"B-1B" forState:UIControlStateNormal];
            [Answer3 setTitle:@"F-16" forState:UIControlStateNormal];
            [Answer4 setTitle:@"F-18" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"B-1B"];
            break;
        case 42:
            QuestionText.text = [NSString stringWithFormat:@"The F-18 is equipped with what systems?"];
            [Answer1 setTitle:@"FLIR" forState:UIControlStateNormal];
            [Answer2 setTitle:@"NVG" forState:UIControlStateNormal];
            [Answer3 setTitle:@"GPS" forState:UIControlStateNormal];
            [Answer4 setTitle:@"All of the above" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"All of the above"];
            break;
        case 43:
            QuestionText.text = [NSString stringWithFormat:@"The F/A-18D is capable of laser spot tracking and designating."];
            [Answer1 setTitle:@"True" forState:UIControlStateNormal];
            [Answer2 setTitle:@"False" forState:UIControlStateNormal];
            [Answer3 setTitle:@"" forState:UIControlStateNormal];
            [Answer4 setTitle:@"" forState:UIControlStateNormal];
            Answer1Correct = YES;
            Answer3.hidden = YES;
            Answer4.hidden = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"True"];
            break;
        case 44:
            QuestionText.text = [NSString stringWithFormat:@"Which of the following aircraft targeting pod(s) is equipped with Laser Spot Tracker (LST) capabilities?"];
            [Answer1 setTitle:@"SNIPER" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Night Hawk" forState:UIControlStateNormal];
            [Answer3 setTitle:@"LANTIRN" forState:UIControlStateNormal];
            [Answer4 setTitle:@"ATFLIR" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"SNIPER"];
            break;
        case 45:
            QuestionText.text = [NSString stringWithFormat:@"The IR CAS brevity term 'Rope' means the JTAC should __________ to help the aircraft identify the friendly ground position."];
            [Answer1 setTitle:@"mark the target with the IR pointer" forState:UIControlStateNormal];
            [Answer2 setTitle:@"circle the IR pointer around the aircraft" forState:UIControlStateNormal];
            [Answer3 setTitle:@"jiggle the IR beam on the target" forState:UIControlStateNormal];
            [Answer4 setTitle:@"jiggle the IR beam on the JTAC position" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Circle the IR pointer around the aircraft"];
            break;
        case 46:
            QuestionText.text = [NSString stringWithFormat:@"When referring to multiservice tactical brevity codes, the code word 'BLIND' means?"];
            [Answer1 setTitle:@"No visual contact with target" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Friendly aircraft/ground position identified" forState:UIControlStateNormal];
            [Answer3 setTitle:@"No visual contact with friendly aircraft/ground position" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Aircraft bombs have missed the target" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"No visual contact with friendly aircraft/ground position"];
            break;
        case 47:
            QuestionText.text = [NSString stringWithFormat:@"Which one of the following brevity terms is NOT related to an air to ground missile launch?"];
            [Answer1 setTitle:@"Long Rifle" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Magnum" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Rifle" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Remington" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Remington"];
            break;
        case 48:
            QuestionText.text = [NSString stringWithFormat:@"The radio transmission 'RIFLE' is an advisory call indicating ___________."];
            [Answer1 setTitle:@"a friendly air-to-surface missile launch" forState:UIControlStateNormal];
            [Answer2 setTitle:@"the JTAC should begin laser designation" forState:UIControlStateNormal];
            [Answer3 setTitle:@"a laser-guided weapon has impacted the target" forState:UIControlStateNormal];
            [Answer4 setTitle:@"an air contact whose identity is unknown" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"A friendly air-to-surface missile launch"];
            break;
        case 49:
            QuestionText.text = [NSString stringWithFormat:@"What is the size of the safety zone for laser operations?"];
            [Answer1 setTitle:@"10 degree cone" forState:UIControlStateNormal];
            [Answer2 setTitle:@"20 degree cone" forState:UIControlStateNormal];
            [Answer3 setTitle:@"30 degree cone" forState:UIControlStateNormal];
            [Answer4 setTitle:@"60 degree cone" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"20 degree cone"];
            break;
        case 50:
            QuestionText.text = [NSString stringWithFormat:@"During laser operations, ________ or _________ should not be used as the sole source of target mark/verification."];
            [Answer1 setTitle:@"white phosphorous / map coordinates" forState:UIControlStateNormal];
            [Answer2 setTitle:@"map coordinates / beacon" forState:UIControlStateNormal];
            [Answer3 setTitle:@"LTM/IR pointers / laser sources" forState:UIControlStateNormal];
            [Answer4 setTitle:@"smoke / white phosphorous" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"LTM/IR pointers / laser sources"];
            break;
        case 51:
            QuestionText.text = [NSString stringWithFormat:@"When using laser energy, aircrews should use LSTs as the sole source for target verification."];
            [Answer1 setTitle:@"True" forState:UIControlStateNormal];
            [Answer2 setTitle:@"False" forState:UIControlStateNormal];
            [Answer3 setTitle:@"" forState:UIControlStateNormal];
            [Answer4 setTitle:@"" forState:UIControlStateNormal];
            Answer2Correct = YES;
            Answer3.hidden = YES;
            Answer4.hidden = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"False"];
            break;
        case 52:
            QuestionText.text = [NSString stringWithFormat:@"In a No-Fire Area, the commander must get clearance from the esablishing headquarters to defend against incoming fire from within the No-Fire Area."];
            [Answer1 setTitle:@"True" forState:UIControlStateNormal];
            [Answer2 setTitle:@"False" forState:UIControlStateNormal];
            [Answer3 setTitle:@"" forState:UIControlStateNormal];
            [Answer4 setTitle:@"" forState:UIControlStateNormal];
            Answer2Correct = YES;
            Answer3.hidden = YES;
            Answer4.hidden = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"False"];
            break;
        case 53:
            QuestionText.text = [NSString stringWithFormat:@"A Restrictive Fire Area (RFA) is?"];
            [Answer1 setTitle:@"An area established between two converging forces." forState:UIControlStateNormal];
            [Answer2 setTitle:@"An area in which specific restrictions are imposed into which fires that exceed those restrictions will not be delivered without coordination with the establishing headquarters." forState:UIControlStateNormal];
            [Answer3 setTitle:@"An area in which any weapon system can fire conventional or improved munitions." forState:UIControlStateNormal];
            [Answer4 setTitle:@"An area in which no joint fires, or the effects of joint fires, are allowed." forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"An area in which specific restrictions are imposed into which fires that exceed those restrictions will not be delivered without coordination with the establishing headquarters."];
            break;
        case 54:
            QuestionText.text = [NSString stringWithFormat:@"Fire support coordination measures can be either ________ or _________."];
            [Answer1 setTitle:@"formal, informal" forState:UIControlStateNormal];
            [Answer2 setTitle:@"friendly, enemy" forState:UIControlStateNormal];
            [Answer3 setTitle:@"permissive, restrictive" forState:UIControlStateNormal];
            [Answer4 setTitle:@"permissive, formal" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Permissive, restrictive"];
            break;
        case 55:
            QuestionText.text = [NSString stringWithFormat:@"The purpose of the __________ is to expedite the surface-to-surface engagement of targets beyond the ____ without coordination with the land commander in whose area the targets are located."];
            [Answer1 setTitle:@"no-fire area; NFA" forState:UIControlStateNormal];
            [Answer2 setTitle:@"restrictive fire line; RFL" forState:UIControlStateNormal];
            [Answer3 setTitle:@"zone of fire; ZF" forState:UIControlStateNormal];
            [Answer4 setTitle:@"coordinated fire line; CFL" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Coordinated fire line; CFL"];
            break;
        case 56:
            QuestionText.text = [NSString stringWithFormat:@"Which of the following fire support coordination measures is exclusive to the Marined Corps?"];
            [Answer1 setTitle:@"Battlefield coordination line" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Free fire area" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Coordinated fire line" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Restrictive fire line" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Battlefield coordination line"];
            break;
        case 57:
            QuestionText.text = [NSString stringWithFormat:@"Permissive' fire support coordination measures include:"];
            [Answer1 setTitle:@"Free-fire area, no fire area, air defense zone" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Fire support coordination line, free-fire area, coordinated fire line" forState:UIControlStateNormal];
            [Answer3 setTitle:@"No-fire area, informal airspace control area, coordinated fire line" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Airspace coordination are, air defense zone, fire support coordination line" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Fire support coordination line, free-fire area, coordinated fire line"];
            break;
        case 58:
            QuestionText.text = [NSString stringWithFormat:@"Any headquarters can establish an informal ACA."];
            [Answer1 setTitle:@"True" forState:UIControlStateNormal];
            [Answer2 setTitle:@"False" forState:UIControlStateNormal];
            [Answer3 setTitle:@"" forState:UIControlStateNormal];
            [Answer4 setTitle:@"" forState:UIControlStateNormal];
            Answer1Correct = YES;
            Answer3.hidden = YES;
            Answer4.hidden = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"True"];
            break;
        case 59:
            QuestionText.text = [NSString stringWithFormat:@"What is the description of a Mk-84 JDAM and its contact 0.1 probability of incapacitation?"];
            [Answer1 setTitle:@"GBU-24 / 200 meters" forState:UIControlStateNormal];
            [Answer2 setTitle:@"GBU-31 / 265 meters" forState:UIControlStateNormal];
            [Answer3 setTitle:@"GBU-32 / 200 meters" forState:UIControlStateNormal];
            [Answer4 setTitle:@"GBU-31 / 265 meters" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"GBU-31 / 265 meters"];
            break;
        case 60:
            QuestionText.text = [NSString stringWithFormat:@"What is the description of a laser guided Mk-83 and its 0.1 probability of incapacitation?"];
            [Answer1 setTitle:@"GBU-16 / 195 meters" forState:UIControlStateNormal];
            [Answer2 setTitle:@"GBU-18 / 195 meters" forState:UIControlStateNormal];
            [Answer3 setTitle:@"GBU-12 / 170 meters" forState:UIControlStateNormal];
            [Answer4 setTitle:@"GBU-14 / 170 meters" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"GBU-16 / 195 meters"];
            break;
        case 61:
            QuestionText.text = [NSString stringWithFormat:@"Which mode of the AGM-65 is laser guided?"];
            [Answer1 setTitle:@"D" forState:UIControlStateNormal];
            [Answer2 setTitle:@"E" forState:UIControlStateNormal];
            [Answer3 setTitle:@"F" forState:UIControlStateNormal];
            [Answer4 setTitle:@"K" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"E"];
            break;
        case 62:
            QuestionText.text = [NSString stringWithFormat:@"What is the description of a Wind Corrected Munitions Dispenser equipped CBU-87 and its 0.1 probability of incapacitation?"];
            [Answer1 setTitle:@"CBU-103 / 155 meters" forState:UIControlStateNormal];
            [Answer2 setTitle:@"CBU-104 / 175 meters" forState:UIControlStateNormal];
            [Answer3 setTitle:@"CBU-105 / 195 meters" forState:UIControlStateNormal];
            [Answer4 setTitle:@"CBU-106 / 205 meters" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"CBU-103 / 155 meters"];
            break;
        case 63:
            QuestionText.text = [NSString stringWithFormat:@"The LUU-2A/B is a parachute flare with a __________ minute burn time."];
            [Answer1 setTitle:@"2" forState:UIControlStateNormal];
            [Answer2 setTitle:@"4" forState:UIControlStateNormal];
            [Answer3 setTitle:@"6" forState:UIControlStateNormal];
            [Answer4 setTitle:@"8.5" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"4"];
            break;
        case 64:
            QuestionText.text = [NSString stringWithFormat:@"The BL-755 is a European cluster munition loaded with 147 anti-armor submunitions and is designed for low-altitude, low-angle deliveries against armor. Its dispersion pattern is ___________"];
            [Answer1 setTitle:@"Rectangular" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Linear" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Circular" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Donut Shaped" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Rectangular"];
            break;
        case 65:
            QuestionText.text = [NSString stringWithFormat:@"Which type of aircraft ordnance is suitable for use against armored vehicles?"];
            [Answer1 setTitle:@"WCMD" forState:UIControlStateNormal];
            [Answer2 setTitle:@"JSOW" forState:UIControlStateNormal];
            [Answer3 setTitle:@"JDAM" forState:UIControlStateNormal];
            [Answer4 setTitle:@"All of the above" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"All of the above"];
            break;
        case 66:
            QuestionText.text = [NSString stringWithFormat:@"Which of the following weapons would NOT be effective against tanks, APCs, and mobile assault guns?"];
            [Answer1 setTitle:@"CBU-87 CEM" forState:UIControlStateNormal];
            [Answer2 setTitle:@"30MM (AP/HEI)" forState:UIControlStateNormal];
            [Answer3 setTitle:@"2.75in rockets" forState:UIControlStateNormal];
            [Answer4 setTitle:@"AGM-65 Maverick" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"2.75in rockets"];
            break;
        case 67:
            QuestionText.text = [NSString stringWithFormat:@"Ordnance deliveries inside the 0.1 Probability of Incapacitation (PI) distance require ____________."];
            [Answer1 setTitle:@"S-3/G-3 initials" forState:UIControlStateNormal];
            [Answer2 setTitle:@"FSCOORD initials" forState:UIControlStateNormal];
            [Answer3 setTitle:@"JTAC controller initials" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Supported commander initials" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Supported commander initials"];
            break;
        case 68:
            QuestionText.text = [NSString stringWithFormat:@"What is the 0.1 PI Risk-Estimate Distance for a Mk-82 LD (contact)"];
            [Answer1 setTitle:@"245 meters" forState:UIControlStateNormal];
            [Answer2 setTitle:@"50 meters" forState:UIControlStateNormal];
            [Answer3 setTitle:@"2010 meters" forState:UIControlStateNormal];
            [Answer4 setTitle:@"100 meters" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"245 meters"];
            break;
        case 69:
            QuestionText.text = [NSString stringWithFormat:@"What is the 0.1 PI Risk-Estimate Distance for a GBU-38 (contact)"];
            [Answer1 setTitle:@"100 meters" forState:UIControlStateNormal];
            [Answer2 setTitle:@"185 meters" forState:UIControlStateNormal];
            [Answer3 setTitle:@"200 meters" forState:UIControlStateNormal];
            [Answer4 setTitle:@"275 meters" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"185 meters"];
            break;
        case 70:
            QuestionText.text = [NSString stringWithFormat:@"What is the 0.1 PI Risk-Estimate Distance for an F15E gun strafe?"];
            [Answer1 setTitle:@"35 meters" forState:UIControlStateNormal];
            [Answer2 setTitle:@"45 meters" forState:UIControlStateNormal];
            [Answer3 setTitle:@"60 meters" forState:UIControlStateNormal];
            [Answer4 setTitle:@"70 meters" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"60 meters"];
            break;
        case 71:
            QuestionText.text = [NSString stringWithFormat:@"0.1 probability of incapacitation distances can also be used for minimum safe distances during peacetime training."];
            [Answer1 setTitle:@"True" forState:UIControlStateNormal];
            [Answer2 setTitle:@"False" forState:UIControlStateNormal];
            [Answer3 setTitle:@"" forState:UIControlStateNormal];
            [Answer4 setTitle:@"" forState:UIControlStateNormal];
            Answer2Correct = YES;
            Answer3.hidden = YES;
            Answer4.hidden = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"False"];
            break;
        case 72:
            QuestionText.text = [NSString stringWithFormat:@"What is the AC-130's smallest 0.1 probability of incapacitation weapon?"];
            [Answer1 setTitle:@"25mm" forState:UIControlStateNormal];
            [Answer2 setTitle:@"30mm" forState:UIControlStateNormal];
            [Answer3 setTitle:@"40mm" forState:UIControlStateNormal];
            [Answer4 setTitle:@"105mm" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"25mm"];
            break;
        case 73:
            QuestionText.text = [NSString stringWithFormat:@"Danger close for friendly troops while firing the AC-130's 25mm, 30mm, 40mm, and the 105mm weapon systems is __________."];
            [Answer1 setTitle:@"65, 100, 75, and 165 meters respectively" forState:UIControlStateNormal];
            [Answer2 setTitle:@"100, 150, 200, and 455 meters respectively" forState:UIControlStateNormal];
            [Answer3 setTitle:@"125, 125, 150, and 200 meters respectively" forState:UIControlStateNormal];
            [Answer4 setTitle:@"200, 200, 350, and 550 meters respectively" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"65, 100, 75, and 165 meters respectively"];
            break;
        case 74:
            QuestionText.text = [NSString stringWithFormat:@"Generally, what is the run-in speed for an F-16 during a CAS mission?"];
            [Answer1 setTitle:@"300-350 knots" forState:UIControlStateNormal];
            [Answer2 setTitle:@"420-480 knots" forState:UIControlStateNormal];
            [Answer3 setTitle:@"480-540 knots" forState:UIControlStateNormal];
            [Answer4 setTitle:@"550-620 knots" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"480-540 knots"];
            break;
        case 75:
            QuestionText.text = [NSString stringWithFormat:@"The determination and assignment of the total expected effort by percentage and/or by priority that should be devoted to the various air operations for a given period of time is called ___________."];
            [Answer1 setTitle:@"Allocation" forState:UIControlStateNormal];
            [Answer2 setTitle:@"A Mission Statement" forState:UIControlStateNormal];
            [Answer3 setTitle:@"An Air Tasking Order" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Air Apportionment" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Air Apportionment"];
            break;
        case 76:
            QuestionText.text = [NSString stringWithFormat:@"The _________ portion occurs following the JFC's air apportionment decision."];
            [Answer1 setTitle:@"Allocation" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Apportionment" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Allotment" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Dissemination" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Allocation"];
            break;
        case 77:
            QuestionText.text = [NSString stringWithFormat:@"The senior element of the TACS that provides command and control of air operations is the ____________."];
            [Answer1 setTitle:@"Control and Reporting Center (CRC)" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Air and Space Operations Center (AOC)" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Wing Operations Center (WOC)" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Air Support Operations Center (ASOC)" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Air and Space Operations Center (AOC)"];
            break;
        case 78:
            QuestionText.text = [NSString stringWithFormat:@"________ is/are the employment of forces, through movement combined with fire or fire potential, to achieve a position of advantage with repect to the enemy."];
            [Answer1 setTitle:@"Attack aviation" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Fires" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Maneuver" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Operations" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Maneuver"];
            break;
        case 79:
            QuestionText.text = [NSString stringWithFormat:@"The GLO is an Army liaison provided by the Army component or force commander to the AOC and/or to the component designated by the JFC to plan, coordinate, and deconflict air operations."];
            [Answer1 setTitle:@"True" forState:UIControlStateNormal];
            [Answer2 setTitle:@"False" forState:UIControlStateNormal];
            [Answer3 setTitle:@"" forState:UIControlStateNormal];
            [Answer4 setTitle:@"" forState:UIControlStateNormal];
            Answer2Correct = YES;
            Answer3.hidden = YES;
            Answer4.hidden = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"False"];
            break;
        case 80:
            QuestionText.text = [NSString stringWithFormat:@"Air operations conducted to divert, disrupt, delay, or destroy the enemy's military potential before it cna be brought to bear effectively against friendly forces is called ____________."];
            [Answer1 setTitle:@"Air Interdiction" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Close Air Support" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Defensive Counter Air" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Airlift" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Air Interdiction"];
            break;
        case 81:
            QuestionText.text = [NSString stringWithFormat:@"The ___________ is the air and space operations planning and execution focal point for the Air Force forces, and is where centralized planning, direction, control, coordination and assessment of air and space operations occur."];
            [Answer1 setTitle:@"TOC" forState:UIControlStateNormal];
            [Answer2 setTitle:@"AOC" forState:UIControlStateNormal];
            [Answer3 setTitle:@"ASOC" forState:UIControlStateNormal];
            [Answer4 setTitle:@"TACC" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"AOC"];
            break;
        case 82:
            QuestionText.text = [NSString stringWithFormat:@"What element of TACS is responsible for the integration of air operations within its assigned corps sector, including CAS, AI, intra-theater airlift, ISR, SEAD, and CSAR?"];
            [Answer1 setTitle:@"The Control and Reporting Center (CRC)" forState:UIControlStateNormal];
            [Answer2 setTitle:@"The Air and Space Operation Center (AOC" forState:UIControlStateNormal];
            [Answer3 setTitle:@"The Air Support Operations Center (ASOC)" forState:UIControlStateNormal];
            [Answer4 setTitle:@"The Wing Operations Center (WOC)" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"The Air Support Operations Center (ASOC)"];
            break;
        case 83:
            QuestionText.text = [NSString stringWithFormat:@"What kind of map is a reproduction on an aerial photo with grid lines, marginal data, place names, route numbers, important elevations, boundries, and approximate scale and direction?"];
            [Answer1 setTitle:@"Aerial map" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Sketch map" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Topographical map" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Photo map" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Photo map"];
            break;
        case 84:
            QuestionText.text = [NSString stringWithFormat:@"If UTM coordinates from the same point are computed on different horizontal-control datums, those coordinates may differ as much as _____ meters."];
            [Answer1 setTitle:@"100" forState:UIControlStateNormal];
            [Answer2 setTitle:@"300" forState:UIControlStateNormal];
            [Answer3 setTitle:@"900" forState:UIControlStateNormal];
            [Answer4 setTitle:@"2000" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"900"];
            break;
        case 85:
            QuestionText.text = [NSString stringWithFormat:@"The 'Flash-to-Bang' method used to calculate approximate range (in meters) to an explosion or enemy fire multiplies the time interval (in seconds) from the flash until hearing weapon fire by _________."];
            [Answer1 setTitle:@"200 (FA uses 250)" forState:UIControlStateNormal];
            [Answer2 setTitle:@"330 (FA uses 350)" forState:UIControlStateNormal];
            [Answer3 setTitle:@"500 (FA uses 550)" forState:UIControlStateNormal];
            [Answer4 setTitle:@"550 (FA uses 600)" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"330 (FA uses 350)"];
            break;
        case 86:
            QuestionText.text = [NSString stringWithFormat:@"How many mils are in one degree?"];
            [Answer1 setTitle:@"6.4" forState:UIControlStateNormal];
            [Answer2 setTitle:@"17.78" forState:UIControlStateNormal];
            [Answer3 setTitle:@"18.87" forState:UIControlStateNormal];
            [Answer4 setTitle:@"64" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"17.78"];
            break;
        case 87:
            QuestionText.text = [NSString stringWithFormat:@"How many mils are in a 360-degree circle?"];
            [Answer1 setTitle:@"3,600" forState:UIControlStateNormal];
            [Answer2 setTitle:@"4,600" forState:UIControlStateNormal];
            [Answer3 setTitle:@"6,400" forState:UIControlStateNormal];
            [Answer4 setTitle:@"7,200" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"6,400"];
            break;
        case 88:
            QuestionText.text = [NSString stringWithFormat:@"How is true north represented on a map?"];
            [Answer1 setTitle:@"A line with a star" forState:UIControlStateNormal];
            [Answer2 setTitle:@"A line with GN" forState:UIControlStateNormal];
            [Answer3 setTitle:@"A line with a half arrow" forState:UIControlStateNormal];
            [Answer4 setTitle:@"A line with MN" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"A line with a star"];
            break;
        case 89:
            QuestionText.text = [NSString stringWithFormat:@"The back azimuth of 337 degrees is _____ degrees."];
            [Answer1 setTitle:@"152" forState:UIControlStateNormal];
            [Answer2 setTitle:@"157" forState:UIControlStateNormal];
            [Answer3 setTitle:@"162" forState:UIControlStateNormal];
            [Answer4 setTitle:@"167" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"157"];
            break;
        case 90:
            QuestionText.text = [NSString stringWithFormat:@"What is the back azimuth of 115 degrees?"];
            [Answer1 setTitle:@"285 degrees" forState:UIControlStateNormal];
            [Answer2 setTitle:@"290 degrees" forState:UIControlStateNormal];
            [Answer3 setTitle:@"295 degrees" forState:UIControlStateNormal];
            [Answer4 setTitle:@"300 degrees" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"295 degrees"];
            break;
        case 91:
            QuestionText.text = [NSString stringWithFormat:@"When using a military protractor, the _______ is always oriented parallel to a north-south grid line."];
            [Answer1 setTitle:@"magnetic line" forState:UIControlStateNormal];
            [Answer2 setTitle:@"true north line" forState:UIControlStateNormal];
            [Answer3 setTitle:@"target line" forState:UIControlStateNormal];
            [Answer4 setTitle:@"base line" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"base line"];
            break;
        case 92:
            QuestionText.text = [NSString stringWithFormat:@"The method of locating one's position on a map by determining the grid azimuth to at least two well-define locations that can be pinpointed on a map."];
            [Answer1 setTitle:@"Resection" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Intersection" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Bi-section" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Triangulation" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Resection"];
            break;
        case 93:
            QuestionText.text = [NSString stringWithFormat:@"The contour lines depicting a _______ are U-shaped or V-shaped, pointing toward high ground."];
            [Answer1 setTitle:@"Spur" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Draw" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Hill" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Slope" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Draw"];
            break;
        case 94:
            QuestionText.text = [NSString stringWithFormat:@"What is a short, continuous sloping line of higher ground jutting out from the side of a ridge?"];
            [Answer1 setTitle:@"Hill" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Draw" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Spur" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Cut" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Spur"];
            break;
        case 95:
            QuestionText.text = [NSString stringWithFormat:@"During terrain association, by observing the map contour lines in detail, the five major terrain features (hilltop, valley, ridge, depression, and __________) should be determined."];
            [Answer1 setTitle:@"Contour line" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Map Datum" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Spur" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Saddle" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Saddle"];
            break;
        case 96:
            QuestionText.text = [NSString stringWithFormat:@"What number, multiplied by meters, will give distances for feet?"];
            [Answer1 setTitle:@"0.62" forState:UIControlStateNormal];
            [Answer2 setTitle:@"1.62" forState:UIControlStateNormal];
            [Answer3 setTitle:@"2.38" forState:UIControlStateNormal];
            [Answer4 setTitle:@"3.28" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"3.28"];
            break;
        case 97:
            QuestionText.text = [NSString stringWithFormat:@"Power transmission lines are symbolized as a series of purple pylons connected by a solid purple line on ______________."];
            [Answer1 setTitle:@"Joint Operations Graphic - Ground series maps" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Joint Operations Graphic - Air series maps" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Universal Transverse Mercator system" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Both A and B" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Both A and B"];
            break;
        case 98:
            QuestionText.text = [NSString stringWithFormat:@"Which Army coordinating staff officer is responsible for intelligence readiness, intelligence tasks, intelligence synchronization, other intelligence support, counterintelligence, and support to security programs?"];
            [Answer1 setTitle:@"G-1 / S-1" forState:UIControlStateNormal];
            [Answer2 setTitle:@"G-2 / S-2" forState:UIControlStateNormal];
            [Answer3 setTitle:@"G-3 / S-3" forState:UIControlStateNormal];
            [Answer4 setTitle:@"G-6 / S-6" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"G-2 / S-2"];
            break;
        case 99:
            QuestionText.text = [NSString stringWithFormat:@"Which Army coordinating staff officer is responsible for all matters concerning training, operations and plans, and force development and modernization?"];
            [Answer1 setTitle:@"G-1 / S-1" forState:UIControlStateNormal];
            [Answer2 setTitle:@"G-2 / S-2" forState:UIControlStateNormal];
            [Answer3 setTitle:@"G-3 / S-3" forState:UIControlStateNormal];
            [Answer4 setTitle:@"G-6 / S-6" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"G-3 / S-3"];
            break;
        case 100:
            QuestionText.text = [NSString stringWithFormat:@"Which Army coordinating staff officer is responsible for all matters concerning command, control, communications, and computer operations?"];
            [Answer1 setTitle:@"G-1 / S-1" forState:UIControlStateNormal];
            [Answer2 setTitle:@"G-2 / S-2" forState:UIControlStateNormal];
            [Answer3 setTitle:@"G-3 / S-3" forState:UIControlStateNormal];
            [Answer4 setTitle:@"G-6 / S-6" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"G-6 / S-6"];
            break;
        case 101:
            QuestionText.text = [NSString stringWithFormat:@"The fire support system includes the ___________ that must function collectively to ensure effective fires are delivered where and when the commander requires them."];
            [Answer1 setTitle:@"artillery, air operations, and amphibious operations" forState:UIControlStateNormal];
            [Answer2 setTitle:@"target acquisition, command and control (C2), and attack/delivery systems" forState:UIControlStateNormal];
            [Answer3 setTitle:@"target acquisition, naval gunfire, and close air support" forState:UIControlStateNormal];
            [Answer4 setTitle:@"communications, data transfer, and direct actions" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Target acquisition, command and control (C2), and attack/delivery systems"];
            break;
        case 102:
            QuestionText.text = [NSString stringWithFormat:@"Joint fires that assist air, land, maritime, and special operations forces (SOF) to move, maneuver, and control territory, populations, airspace, and key waters is called __________."];
            [Answer1 setTitle:@"joint mobility" forState:UIControlStateNormal];
            [Answer2 setTitle:@"maneuver" forState:UIControlStateNormal];
            [Answer3 setTitle:@"joint fire support" forState:UIControlStateNormal];
            [Answer4 setTitle:@"joint air defense" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Joint fire support"];
            break;
        case 103:
            QuestionText.text = [NSString stringWithFormat:@"What U.S. Marine Corps agency assigns direct air support aircraft to terminal control agencies, provides aircraft ingress and egress route instructions, and disseminates advisory information?"];
            [Answer1 setTitle:@"Tactical Air Control Center (TACC)" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Air Support Operations Center (ASOC)" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Shore Fire Control Party (SFCP)" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Direct Air Support Center (DASC)" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Direct Air Support Center (DASC)"];
            break;
        case 104:
            QuestionText.text = [NSString stringWithFormat:@"In the Navy Tactical Air Control System (NTACS), the Direct Air Support Center (DASC) becomes operational when?"];
            [Answer1 setTitle:@"The control of the operation is passed ashore and collocates with the senior Fire Support Coordination Center" forState:UIControlStateNormal];
            [Answer2 setTitle:@"It is always the lead Navy CAS control agency" forState:UIControlStateNormal];
            [Answer3 setTitle:@"The control of the operation is passed from Fleet Command to the USMC" forState:UIControlStateNormal];
            [Answer4 setTitle:@"The control of the operation is passed from MAGTF to the amphibious task force" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"The control of the operation is passed ashore and collocates with the senior Fire Support Coordination Center"];
            break;
        case 105:
            QuestionText.text = [NSString stringWithFormat:@"What is the principal Air Force C2 node for integrating air power into Army land operations?"];
            [Answer1 setTitle:@"Tactical Air Control Center (TACC)" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Air Support Operations Center (ASOC)" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Air and Space Operations Center (AOC)" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Direct Air Support Center (DASC)" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Air Support Operations Center (ASOC)"];
            break;
        case 106:
            QuestionText.text = [NSString stringWithFormat:@"Joint fire support coordination procedures must be _______ and _______ to the ever-changing dynamics of warfighting."];
            [Answer1 setTitle:@"firm, rigid" forState:UIControlStateNormal];
            [Answer2 setTitle:@"precise, subordinate" forState:UIControlStateNormal];
            [Answer3 setTitle:@"flexible, responsive" forState:UIControlStateNormal];
            [Answer4 setTitle:@"flexible, considerate" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Flexible, responsive"];
            break;
        case 107:
            QuestionText.text = [NSString stringWithFormat:@"Which of the following is NOT a non-lethal form of joint fire support?"];
            [Answer1 setTitle:@"electronic attack" forState:UIControlStateNormal];
            [Answer2 setTitle:@"computer network attack" forState:UIControlStateNormal];
            [Answer3 setTitle:@"obscurant fires" forState:UIControlStateNormal];
            [Answer4 setTitle:@"attack helicopters" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Attack helicopters"];
            break;
        case 108:
            QuestionText.text = [NSString stringWithFormat:@"For joint fire support, choosing an appropriate weapons system, munition warhead, warhead fuzing, and final attack axis are all methods used to mitigate _______."];
            [Answer1 setTitle:@"collateral damage" forState:UIControlStateNormal];
            [Answer2 setTitle:@"strategic attack" forState:UIControlStateNormal];
            [Answer3 setTitle:@"maneuver capability" forState:UIControlStateNormal];
            [Answer4 setTitle:@"commander's intent" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Collateral damage"];
            break;
        case 109:
            QuestionText.text = [NSString stringWithFormat:@"The establishment of a Fire Support Coordination Line (FSCL) creates a Free Fire Area (FFA) beyond the FSCL."];
            [Answer1 setTitle:@"True" forState:UIControlStateNormal];
            [Answer2 setTitle:@"False" forState:UIControlStateNormal];
            [Answer3 setTitle:@"" forState:UIControlStateNormal];
            [Answer4 setTitle:@"" forState:UIControlStateNormal];
            Answer2Correct = YES;
            Answer3.hidden = YES;
            Answer4.hidden = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"False"];
            break;
        case 110:
            QuestionText.text = [NSString stringWithFormat:@"Air interdiction sorties can occur short of the fire support coordination line (FSCL)."];
            [Answer1 setTitle:@"True" forState:UIControlStateNormal];
            [Answer2 setTitle:@"False" forState:UIControlStateNormal];
            [Answer3 setTitle:@"" forState:UIControlStateNormal];
            [Answer4 setTitle:@"" forState:UIControlStateNormal];
            Answer1Correct = YES;
            Answer3.hidden = YES;
            Answer4.hidden = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"True"];
            break;
        case 111:
            QuestionText.text = [NSString stringWithFormat:@"A laser target designator (LTD) with a beam divergence of 1 miliradian would have a spot diameter of approximately ________meter(s) at a distance of 1,000 meters in front of the designator."];
            [Answer1 setTitle:@"1" forState:UIControlStateNormal];
            [Answer2 setTitle:@"10" forState:UIControlStateNormal];
            [Answer3 setTitle:@"100" forState:UIControlStateNormal];
            [Answer4 setTitle:@"110" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"1"];
            break;
        case 112:
            QuestionText.text = [NSString stringWithFormat:@"The safety zone for a laser is defined as the volume of airspace in the shape of a cone (generally ____ degrees)."];
            [Answer1 setTitle:@"10" forState:UIControlStateNormal];
            [Answer2 setTitle:@"20" forState:UIControlStateNormal];
            [Answer3 setTitle:@"45" forState:UIControlStateNormal];
            [Answer4 setTitle:@"90" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"20"];
            break;
        case 113:
            QuestionText.text = [NSString stringWithFormat:@"Coded laser target designators emit laser energy with a unique ___________ and require input of specific laser codes for operation."];
            [Answer1 setTitle:@"Morse" forState:UIControlStateNormal];
            [Answer2 setTitle:@"PRF" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Spot" forState:UIControlStateNormal];
            [Answer4 setTitle:@"LST" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"PRF"];
            break;
        case 114:
            QuestionText.text = [NSString stringWithFormat:@"Single weapon systems, small buildings and infantry smaller than platoon size are examples of ____________."];
            [Answer1 setTitle:@"area targets" forState:UIControlStateNormal];
            [Answer2 setTitle:@"target groups" forState:UIControlStateNormal];
            [Answer3 setTitle:@"point targets" forState:UIControlStateNormal];
            [Answer4 setTitle:@"low payoff targets" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Point targets"];
            break;
        case 115:
            QuestionText.text = [NSString stringWithFormat:@"Large enemy infantry formations, or compounds with several buildings are examples of __________."];
            [Answer1 setTitle:@"target groups" forState:UIControlStateNormal];
            [Answer2 setTitle:@"point targets" forState:UIControlStateNormal];
            [Answer3 setTitle:@"low payoff targets" forState:UIControlStateNormal];
            [Answer4 setTitle:@"area targets" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Area targets"];
            break;
        case 116:
            QuestionText.text = [NSString stringWithFormat:@"For planning purposes, laser spot size should be determined and ideally equal to no more than __________ the target surface area."];
            [Answer1 setTitle:@"Half" forState:UIControlStateNormal];
            [Answer2 setTitle:@"one-quarter" forState:UIControlStateNormal];
            [Answer3 setTitle:@"two-thirds" forState:UIControlStateNormal];
            [Answer4 setTitle:@"double" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Half"];
            break;
        case 117:
            QuestionText.text = [NSString stringWithFormat:@"The absorption of laser-radiated energy from any direction is called ____________."];
            [Answer1 setTitle:@"sponge effect" forState:UIControlStateNormal];
            [Answer2 setTitle:@"entrapment" forState:UIControlStateNormal];
            [Answer3 setTitle:@"seeker sucker" forState:UIControlStateNormal];
            [Answer4 setTitle:@"obstruction" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Entrapment"];
            break;
        case 118:
            QuestionText.text = [NSString stringWithFormat:@"_____________is the result of motion of the laser designator around the intended aimpoint."];
            [Answer1 setTitle:@"Ocular motion" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Loose laser" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Spot jitter" forState:UIControlStateNormal];
            [Answer4 setTitle:@"No spot" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Spot jitter"];
            break;
        case 119:
            QuestionText.text = [NSString stringWithFormat:@"The primary method to employ LGBs is to allow the aircraft to self designate."];
            [Answer1 setTitle:@"True" forState:UIControlStateNormal];
            [Answer2 setTitle:@"False" forState:UIControlStateNormal];
            [Answer3 setTitle:@"" forState:UIControlStateNormal];
            [Answer4 setTitle:@"" forState:UIControlStateNormal];
            Answer1Correct = YES;
            Answer3.hidden = YES;
            Answer4.hidden = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"True"];
            break;
        case 120:
            QuestionText.text = [NSString stringWithFormat:@"The minimum safe altitude for an aircraft to stay outside the 20 degree safety zone 10 nautical miles from a ground laser designated target is ________."];
            [Answer1 setTitle:@"550 feet" forState:UIControlStateNormal];
            [Answer2 setTitle:@"5,800 feet" forState:UIControlStateNormal];
            [Answer3 setTitle:@"9,700 feet" forState:UIControlStateNormal];
            [Answer4 setTitle:@"19,300 feet" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"19,300 feet"];
            break;
        case 121:
            QuestionText.text = [NSString stringWithFormat:@"The laser designator operator will turn the designator off when __________."];
            [Answer1 setTitle:@"The 'TERMINATE' call is heard" forState:UIControlStateNormal];
            [Answer2 setTitle:@"the weapon hits the target" forState:UIControlStateNormal];
            [Answer3 setTitle:@"the 'HOT' LED is illuminated in the display" forState:UIControlStateNormal];
            [Answer4 setTitle:@"All of the above" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"All of the above"];
            break;
        case 122:
            QuestionText.text = [NSString stringWithFormat:@"When operating in a high laser countermeasure environment, the JTAC may have to coordinate ___________."];
            [Answer1 setTitle:@"timed radio calls" forState:UIControlStateNormal];
            [Answer2 setTitle:@"the use of SPINS" forState:UIControlStateNormal];
            [Answer3 setTitle:@"laser designation based on timing" forState:UIControlStateNormal];
            [Answer4 setTitle:@"abandon use of laser" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Laser designation based on timing"];
            break;
        case 123:
            QuestionText.text = [NSString stringWithFormat:@"Three variables require the need for delayed laser designation: standoff operations requiring a longer ballistic fall prior to laser acquisition, the possibility of enemy detection of laser energy, and _________."];
            [Answer1 setTitle:@"angle of impact" forState:UIControlStateNormal];
            [Answer2 setTitle:@"aircrew experience" forState:UIControlStateNormal];
            [Answer3 setTitle:@"extreme weather conditions" forState:UIControlStateNormal];
            [Answer4 setTitle:@"energy of the munition" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Energy of the munition"];
            break;
        case 124:
            QuestionText.text = [NSString stringWithFormat:@"Concerning laser codes, the lower the PRF code numbers, the higher the pulse repetition."];
            [Answer1 setTitle:@"True" forState:UIControlStateNormal];
            [Answer2 setTitle:@"False" forState:UIControlStateNormal];
            [Answer3 setTitle:@"" forState:UIControlStateNormal];
            [Answer4 setTitle:@"" forState:UIControlStateNormal];
            Answer1Correct = YES;
            Answer3.hidden = YES;
            Answer4.hidden = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"True"];
            break;
        case 125:
            QuestionText.text = [NSString stringWithFormat:@"Typical laser times required for acquisition are only the last ____ to ____ seconds of weapon flight."];
            [Answer1 setTitle:@"4 , 8" forState:UIControlStateNormal];
            [Answer2 setTitle:@"8 , 12" forState:UIControlStateNormal];
            [Answer3 setTitle:@"16 , 20" forState:UIControlStateNormal];
            [Answer4 setTitle:@"20 , 30" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"8 , 12"];
            break;
        case 126:
            QuestionText.text = [NSString stringWithFormat:@"The two basic types of Hellfire launch modes are lock on before launch (LOBL) and lock on after launch (LOAL)."];
            [Answer1 setTitle:@"True" forState:UIControlStateNormal];
            [Answer2 setTitle:@"False" forState:UIControlStateNormal];
            [Answer3 setTitle:@"" forState:UIControlStateNormal];
            [Answer4 setTitle:@"" forState:UIControlStateNormal];
            Answer1Correct = YES;
            Answer3.hidden = YES;
            Answer4.hidden = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"True"];
            break;
        case 127:
            QuestionText.text = [NSString stringWithFormat:@"During laser operations, the best acquisition area is from ____ to ______ degrees on either side of the laser-to-target (LTL) line"];
            [Answer1 setTitle:@"10 , 55" forState:UIControlStateNormal];
            [Answer2 setTitle:@"20 , 45" forState:UIControlStateNormal];
            [Answer3 setTitle:@"20 , 55" forState:UIControlStateNormal];
            [Answer4 setTitle:@"10 , 45" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"10 , 45"];
            break;
        case 128:
            QuestionText.text = [NSString stringWithFormat:@"The AH-64A Apache uses what kind of coded laser acquisition system?"];
            [Answer1 setTitle:@"TADS" forState:UIControlStateNormal];
            [Answer2 setTitle:@"LST" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Pave Penny" forState:UIControlStateNormal];
            [Answer4 setTitle:@"LANTIRN" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"TADS"];
            break;
        case 129:
            QuestionText.text = [NSString stringWithFormat:@"Close air support (CAS) is air action by fixed-wing and rotary-wing aircraft against hostile targets that are in close proximity to friendly forces, and requires ________ of each air mission with the fire and movement of those forces."];
            [Answer1 setTitle:@"air interdiction" forState:UIControlStateNormal];
            [Answer2 setTitle:@"detailed integration" forState:UIControlStateNormal];
            [Answer3 setTitle:@"JTACs" forState:UIControlStateNormal];
            [Answer4 setTitle:@"seperation" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Detailed integration"];
            break;
        case 130:
            QuestionText.text = [NSString stringWithFormat:@"Concerning close air support, the word '____' does not imply a specific distance; rather, it is situational."];
            [Answer1 setTitle:@"deconflict" forState:UIControlStateNormal];
            [Answer2 setTitle:@"contact" forState:UIControlStateNormal];
            [Answer3 setTitle:@"close" forState:UIControlStateNormal];
            [Answer4 setTitle:@"meter" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Close"];
            break;
        case 131:
            QuestionText.text = [NSString stringWithFormat:@"The FAC(A) provides coordination and _______ for CAS missions as well as locating and marking ground targets."];
            [Answer1 setTitle:@"terminal attack control" forState:UIControlStateNormal];
            [Answer2 setTitle:@"planning" forState:UIControlStateNormal];
            [Answer3 setTitle:@"integration" forState:UIControlStateNormal];
            [Answer4 setTitle:@"All of the above" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Terminal attack control"];
            break;
        case 132:
            QuestionText.text = [NSString stringWithFormat:@"Responsible ___________ decide the target priority, effects, and timing of CAS within an operational area and optimally make decisions with the advice and guidance of specially trained personnel."];
            [Answer1 setTitle:@"ground force commanders" forState:UIControlStateNormal];
            [Answer2 setTitle:@"air liaison officers" forState:UIControlStateNormal];
            [Answer3 setTitle:@"mission commanders" forState:UIControlStateNormal];
            [Answer4 setTitle:@"special operations forces" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Ground force commanders"];
            break;
        case 133:
            QuestionText.text = [NSString stringWithFormat:@"Whether conducting offensive or defensive operations, commanders plan for CAS at key points throughout the operational area."];
            [Answer1 setTitle:@"True" forState:UIControlStateNormal];
            [Answer2 setTitle:@"False" forState:UIControlStateNormal];
            [Answer3 setTitle:@"" forState:UIControlStateNormal];
            [Answer4 setTitle:@"" forState:UIControlStateNormal];
            Answer1Correct = YES;
            Answer3.hidden = YES;
            Answer4.hidden = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"True"];
            break;
        case 134:
            QuestionText.text = [NSString stringWithFormat:@"A Navy and Marine Corps section consists of how many fixed-wing aircraft?"];
            [Answer1 setTitle:@"1" forState:UIControlStateNormal];
            [Answer2 setTitle:@"2" forState:UIControlStateNormal];
            [Answer3 setTitle:@"3" forState:UIControlStateNormal];
            [Answer4 setTitle:@"4" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"2"];
            break;
        case 135:
            QuestionText.text = [NSString stringWithFormat:@"A ________ is a flight by one aircraft."];
            [Answer1 setTitle:@"Flight" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Sortie" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Mission" forState:UIControlStateNormal];
            [Answer4 setTitle:@"None of the above" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Sortie"];
            break;
        case 136:
            QuestionText.text = [NSString stringWithFormat:@"For CAS fixed-wing aircraft, the Air Force calls them flights, while the Navy and Marine Corps call them either ______(two aircraft) or _______(three to four aircraft)."];
            [Answer1 setTitle:@"sections, divisions" forState:UIControlStateNormal];
            [Answer2 setTitle:@"units, groups" forState:UIControlStateNormal];
            [Answer3 setTitle:@"flights, wings" forState:UIControlStateNormal];
            [Answer4 setTitle:@"elements, formations" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Sections, Divisions"];
            break;
        case 137:
            QuestionText.text = [NSString stringWithFormat:@"Conditions for effective close air support include:"];
            [Answer1 setTitle:@"Air superiority" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Target marking" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Effective training and proficiency" forState:UIControlStateNormal];
            [Answer4 setTitle:@"All of the above" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"All of the above"];
            break;
        case 138:
            QuestionText.text = [NSString stringWithFormat:@"The ____ begins at the field army level, and extends down through all echelons to the maneuver battalion. It coordinates and integrates both Army component aviation support and air support with Army ground maneuver."];
            [Answer1 setTitle:@"Theater Air Control System (TACS)" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Air and Space Operations Center (AOC)" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Army Air-Ground System (AAGS)" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Joint Force Air Component Commander (JFACC)" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Army Air-Ground System (AAGS)"];
            break;
        case 139:
            QuestionText.text = [NSString stringWithFormat:@"The ______ interface includes exchanging current intelligence and operational data, support requirements, coordinating the integration of Army forces requirements for airspace coordination measures, fire support coordination measures and theater airlift."];
            [Answer1 setTitle:@"AOC" forState:UIControlStateNormal];
            [Answer2 setTitle:@"FSO" forState:UIControlStateNormal];
            [Answer3 setTitle:@"ASOC" forState:UIControlStateNormal];
            [Answer4 setTitle:@"BCD" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"BCD"];
            break;
        case 140:
            QuestionText.text = [NSString stringWithFormat:@"The ______ is an Army liaison provided to the COMAFFOR for duties with the AOC or to the JFACC for duties in the JAOC based on the scenario."];
            [Answer1 setTitle:@"Battlefield Coordination Detachment" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Corps G-3 Air" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Air Support Operations Center" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Division-level AC2" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Battlefield Coordination Detachment"];
            break;
        case 141:
            QuestionText.text = [NSString stringWithFormat:@"The _______ is the principal Air Force liaison unit collocated with Army maneuver units from battalion through corps"];
            [Answer1 setTitle:@"AOC" forState:UIControlStateNormal];
            [Answer2 setTitle:@"TACP" forState:UIControlStateNormal];
            [Answer3 setTitle:@"ASOC" forState:UIControlStateNormal];
            [Answer4 setTitle:@"CRC" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"TACP"];
            break;
        case 142:
            QuestionText.text = [NSString stringWithFormat:@"CAS can support what kind of operations?"];
            [Answer1 setTitle:@"Shaping" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Close Combat" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Joint Security Area" forState:UIControlStateNormal];
            [Answer4 setTitle:@"All of the above" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"All of the above"];
            break;
        case 143:
            QuestionText.text = [NSString stringWithFormat:@"CAS used to destroy the combat effectiveness of the fleeing enemy forces as the enemy becomes demoralized, and cohesion and control disintegrates is support to what type of offensive operations?"];
            [Answer1 setTitle:@"Movement to Contact" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Attack" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Exploitation" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Pursuit" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Pursuit"];
            break;
        case 144:
            QuestionText.text = [NSString stringWithFormat:@"The most important ADVANTAGE of night and adverse weather CAS is ______."];
            [Answer1 setTitle:@"the limitation it imposes on enemy optically-directed AAA and optical/IR guided SAMs" forState:UIControlStateNormal];
            [Answer2 setTitle:@"the element of surprise" forState:UIControlStateNormal];
            [Answer3 setTitle:@"aircraft require a longer time on station; increasing the number of target attacks" forState:UIControlStateNormal];
            [Answer4 setTitle:@"JTAC observation point in concealed from direct enemy observation; enhancing CAS effectiveness" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"The limitation it imposes on enemy optically-directed AAA and optical/IR guided SAMs"];
            break;
        case 145:
            QuestionText.text = [NSString stringWithFormat:@"Cloud cover and precipitation as well as battlefield conditions (smoke, haze, dust, and other obscurrants) will NOT degrade laser effectiveness"];
            [Answer1 setTitle:@"True" forState:UIControlStateNormal];
            [Answer2 setTitle:@"False" forState:UIControlStateNormal];
            [Answer3 setTitle:@"" forState:UIControlStateNormal];
            [Answer4 setTitle:@"" forState:UIControlStateNormal];
            Answer2Correct = YES;
            Answer3.hidden = YES;
            Answer4.hidden = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"False"];
            break;
        case 146:
            QuestionText.text = [NSString stringWithFormat:@"The primary objective of ________ is to allow friendly aircraft to operate in airspace defended by an enemy air defense system."];
            [Answer1 setTitle:@"ACA" forState:UIControlStateNormal];
            [Answer2 setTitle:@"MMR" forState:UIControlStateNormal];
            [Answer3 setTitle:@"SEAD" forState:UIControlStateNormal];
            [Answer4 setTitle:@"ACP" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"SEAD"];
            break;
        case 147:
            QuestionText.text = [NSString stringWithFormat:@"Within their operational areas. land and maritime commanders employ ____ and ____ fire support coordinating measures (FSCMs) to expedite attack of targets."];
            [Answer1 setTitle:@"altitude, time" forState:UIControlStateNormal];
            [Answer2 setTitle:@"distance, time" forState:UIControlStateNormal];
            [Answer3 setTitle:@"altitude, distance" forState:UIControlStateNormal];
            [Answer4 setTitle:@"permissive, restrictive" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Permissive, restrictive"];
            break;
        case 148:
            QuestionText.text = [NSString stringWithFormat:@"A line beyond which conventional, indirect, surface fire support may fire at any time within the boundaries of the establishing headquarters without additional coordination is a ________."];
            [Answer1 setTitle:@"Coordinated Fire Line" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Fire Support Coordination Line" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Free Fire Area" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Restrictive Fire line" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Coordinated Fire Line"];
            break;
        case 149:
            QuestionText.text = [NSString stringWithFormat:@"A designated area into which any weapon system may fire without additional coordination with the establishing headquarters is a ___________."];
            [Answer1 setTitle:@"Fire Support Coordination Line" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Free Fire Area" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Restrictive Fire Area" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Restrictive Fire Line" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Free Fire Area"];
            break;
        case 150:
            QuestionText.text = [NSString stringWithFormat:@"A _____ is a three-dimensional area used to facilitate the integration of joint fires."];
            [Answer1 setTitle:@"no-fire area" forState:UIControlStateNormal];
            [Answer2 setTitle:@"restrictive measure" forState:UIControlStateNormal];
            [Answer3 setTitle:@"kill box" forState:UIControlStateNormal];
            [Answer4 setTitle:@"restrictive fire area" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Kill box"];
            break;
        case 151:
            QuestionText.text = [NSString stringWithFormat:@"The purpose of _______ is to safeguard friendly forces, protect religious sites and for the deconfliction of fires."];
            [Answer1 setTitle:@"permissive measures" forState:UIControlStateNormal];
            [Answer2 setTitle:@"no-fire area" forState:UIControlStateNormal];
            [Answer3 setTitle:@"maneuver control measures" forState:UIControlStateNormal];
            [Answer4 setTitle:@"restrictive measures" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Restrictive measures"];
            break;
        case 152:
            QuestionText.text = [NSString stringWithFormat:@"What restrictive measures is the most restrictive technique for aircrews?"];
            [Answer1 setTitle:@"Altitude and Lateral seperation" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Timed seperation" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Altitude seperation" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Lateral seperation" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Altitude and Lateral seperation"];
            break;
        case 153:
            QuestionText.text = [NSString stringWithFormat:@"Who establishes formal ACMs?"];
            [Answer1 setTitle:@"S-3 (Air)" forState:UIControlStateNormal];
            [Answer2 setTitle:@"The airspace control authority" forState:UIControlStateNormal];
            [Answer3 setTitle:@"The appropriate ground commander" forState:UIControlStateNormal];
            [Answer4 setTitle:@"All of the above" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"The airspace control authority"];
            break;
        case 154:
            QuestionText.text = [NSString stringWithFormat:@"The two types of Airspace Coordination Areas are ________?"];
            [Answer1 setTitle:@"sectored and sequential" forState:UIControlStateNormal];
            [Answer2 setTitle:@"high and low" forState:UIControlStateNormal];
            [Answer3 setTitle:@"formal and informal" forState:UIControlStateNormal];
            [Answer4 setTitle:@"on and off" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Formal and informal"];
            break;
        case 155:
            QuestionText.text = [NSString stringWithFormat:@"Informal ACAs can be established using seperation plans and may be established by any _________."];
            [Answer1 setTitle:@"ALO/JTAC" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Battalion FSO" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Brigade S-3 (Air)" forState:UIControlStateNormal];
            [Answer4 setTitle:@"ground commander" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Ground commander"];
            break;
        case 156:
            QuestionText.text = [NSString stringWithFormat:@"A(n) __________ is a temporary corridor of defined dimensions recommended for use by fixed-wing aircraft that presents the minimum known hazards to low flying aircraft transiting the combat zone."];
            [Answer1 setTitle:@"MRR (Minimum-Risk Route)" forState:UIControlStateNormal];
            [Answer2 setTitle:@"ACA (Airspace Coordination Area)" forState:UIControlStateNormal];
            [Answer3 setTitle:@"FFA (Free-Fire Area)" forState:UIControlStateNormal];
            [Answer4 setTitle:@"ROZ (Restricted Operations Zone)" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"MRR (Minimum-Risk Route)"];
            break;
        case 157:
            QuestionText.text = [NSString stringWithFormat:@"The ______ is one of the most overlooked aspects of maneuver and fire support planning."];
            [Answer1 setTitle:@"sand table" forState:UIControlStateNormal];
            [Answer2 setTitle:@"rehearsal" forState:UIControlStateNormal];
            [Answer3 setTitle:@"warning order" forState:UIControlStateNormal];
            [Answer4 setTitle:@"battle update brief" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Rehearsal"];
            break;
        case 158:
            QuestionText.text = [NSString stringWithFormat:@"Joint Terminal Attack Controllers should select seperation techniques that _______________."];
            [Answer1 setTitle:@"require the least coordination" forState:UIControlStateNormal];
            [Answer2 setTitle:@"do not adversely affect the ability to safely complete the mission" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Both A and B" forState:UIControlStateNormal];
            [Answer4 setTitle:@"None of the above" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Both A and B"];
            break;
        case 159:
            QuestionText.text = [NSString stringWithFormat:@"Which informal ACA is appropriate when aircraft and firing units engage targets along the gun target line (GTL) or aircraft must cross the GTL?"];
            [Answer1 setTitle:@"Lateral seperation" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Altitude seperation" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Time seperation" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Altitude and lateral seperation" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Altitude and lateral seperation"];
            break;
        case 160:
            QuestionText.text = [NSString stringWithFormat:@"Time to Target establishes a precise number of minutes and seconds that elapse between an established time hack and bombs on target."];
            [Answer1 setTitle:@"True" forState:UIControlStateNormal];
            [Answer2 setTitle:@"False" forState:UIControlStateNormal];
            [Answer3 setTitle:@"" forState:UIControlStateNormal];
            [Answer4 setTitle:@"" forState:UIControlStateNormal];
            Answer1Correct = YES;
            Answer3.hidden = YES;
            Answer4.hidden = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"True"];
            break;
        case 161:
            QuestionText.text = [NSString stringWithFormat:@"Procedural control measures provide target orientation to aircrew, align aircraft for the attack or egress, provide seperation from other supporting fires, and provide seperation from enemy air defense assets. Procedural control measures include ________."];
            [Answer1 setTitle:@"appropriate checks of TAD comm equip" forState:UIControlStateNormal];
            [Answer2 setTitle:@"IP selection, offset direction and atk heading" forState:UIControlStateNormal];
            [Answer3 setTitle:@"passing the relevant weather conditions to the a/c" forState:UIControlStateNormal];
            [Answer4 setTitle:@"maintaining comms with the brigade FSO." forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"IP selection, offset direction and atk heading"];
            break;
        case 162:
            QuestionText.text = [NSString stringWithFormat:@"IPs are normally located from ____ nm from the target for fixed wing aircraft."];
            [Answer1 setTitle:@"1-5" forState:UIControlStateNormal];
            [Answer2 setTitle:@"5-15" forState:UIControlStateNormal];
            [Answer3 setTitle:@"20-30" forState:UIControlStateNormal];
            [Answer4 setTitle:@"30-50" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"5-15"];
            break;
        case 163:
            QuestionText.text = [NSString stringWithFormat:@"Offset restrictions apply to aircrews from the time they _____ until they _______."];
            [Answer1 setTitle:@"arrive at the IP / return to the IP" forState:UIControlStateNormal];
            [Answer2 setTitle:@"depart the IP / return to the IP" forState:UIControlStateNormal];
            [Answer3 setTitle:@"see the target / are cleared by the TAC" forState:UIControlStateNormal];
            [Answer4 setTitle:@"leave the IP / release their ordnance or begin egress" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Leave the IP / release their ordnance or begin egress"];
            break;
        case 164:
            QuestionText.text = [NSString stringWithFormat:@"Timing for marking rounds is ______ and must be coordinated prior to commencement of the attack."];
            [Answer1 setTitle:@"15 to 30 seconds" forState:UIControlStateNormal];
            [Answer2 setTitle:@"30 to 45 seconds" forState:UIControlStateNormal];
            [Answer3 setTitle:@"1 to 2 minutes" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Situationally dependent" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Situationally dependent"];
            break;
        case 165:
            QuestionText.text = [NSString stringWithFormat:@"When illuminating a target with an IR pointer, the mark should be initiated ___ seconds prior to the CAS time on target (TOT) / time to target (TTT), or when requested by the aircrew."];
            [Answer1 setTitle:@"10-20" forState:UIControlStateNormal];
            [Answer2 setTitle:@"20-30" forState:UIControlStateNormal];
            [Answer3 setTitle:@"30-45" forState:UIControlStateNormal];
            [Answer4 setTitle:@"50-60" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"20-30"];
            break;
        case 166:
            QuestionText.text = [NSString stringWithFormat:@"When using IR pointers or lasers to mark a target, include _____ in the marks portion of the CAS briefing."];
            [Answer1 setTitle:@"SPARKLE' only" forState:UIControlStateNormal];
            [Answer2 setTitle:@"TALLY" forState:UIControlStateNormal];
            [Answer3 setTitle:@"IR Pointer' or 'Laser" forState:UIControlStateNormal];
            [Answer4 setTitle:@"SPARKLE' and pointer-to-target line" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"IR Pointer' or 'Laser"];
            break;
        case 167:
            QuestionText.text = [NSString stringWithFormat:@"________ is the least desirable methor od enabling a tally on the target. It can be confusing and should be used cautiously and only when no other method is available."];
            [Answer1 setTitle:@"IR marking" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Laser Marking" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Indirect fire" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Marking friendlies" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Marking friendlies"];
            break;
        case 168:
            QuestionText.text = [NSString stringWithFormat:@"For weapons release authority, the authority and responsibility for the expenditure of any ordnance on the battlefield rests with the _________."];
            [Answer1 setTitle:@"supported commander" forState:UIControlStateNormal];
            [Answer2 setTitle:@"JFACC" forState:UIControlStateNormal];
            [Answer3 setTitle:@"BCD" forState:UIControlStateNormal];
            [Answer4 setTitle:@"AOC" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Supported commander"];
            break;
        case 169:
            QuestionText.text = [NSString stringWithFormat:@"The term used by a JTAC during a Type 3 control, granting weapons release clearance to an aircraft or flight attacking a target or targets?"];
            [Answer1 setTitle:@"CLEARED HOT" forState:UIControlStateNormal];
            [Answer2 setTitle:@"CLEARED TO ENGAGE" forState:UIControlStateNormal];
            [Answer3 setTitle:@"CONTINUE" forState:UIControlStateNormal];
            [Answer4 setTitle:@"RELEASE" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"CLEARED TO ENGAGE"];
            break;
        case 170:
            QuestionText.text = [NSString stringWithFormat:@"The term used by a JTAC during Type 1 and 2 controls that grant weapons release clearance to an aircraft attacking a specific target is _________."];
            [Answer1 setTitle:@"CLEARED TO ENGAGE" forState:UIControlStateNormal];
            [Answer2 setTitle:@"CONTINUE" forState:UIControlStateNormal];
            [Answer3 setTitle:@"CLEARED HOT" forState:UIControlStateNormal];
            [Answer4 setTitle:@"RELEASE" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"CLEARED HOT"];
            break;
        case 171:
            QuestionText.text = [NSString stringWithFormat:@"Troops in contact' is regarded as _________."];
            [Answer1 setTitle:@"friendly ground forces within 600 meters of the enemy forces/target" forState:UIControlStateNormal];
            [Answer2 setTitle:@"friendly ground forces receiving effective fire" forState:UIControlStateNormal];
            [Answer3 setTitle:@"friendly ground forces within range of enemy mortar fire" forState:UIControlStateNormal];
            [Answer4 setTitle:@"ground forces within range of enemy small arms fire" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Friendly ground forces receiving effective fire"];
            break;
        case 172:
            QuestionText.text = [NSString stringWithFormat:@"There are ____ types of CAS terminal attack control."];
            [Answer1 setTitle:@"2" forState:UIControlStateNormal];
            [Answer2 setTitle:@"3" forState:UIControlStateNormal];
            [Answer3 setTitle:@"4" forState:UIControlStateNormal];
            [Answer4 setTitle:@"5" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"3"];
            break;
        case 173:
            QuestionText.text = [NSString stringWithFormat:@"JTACs use _____ control when they must visually acquire the attacking aircraft and the target for each attack."];
            [Answer1 setTitle:@"Type 1" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Type 2" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Type 3" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Type 4" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Type 1"];
            break;
        case 174:
            QuestionText.text = [NSString stringWithFormat:@"CAS aircraft are not require to achieve tally/capture the target when conducting ____ attacks."];
            [Answer1 setTitle:@"Troops in contact" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Bomb on target" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Bomb on Coordinate" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Time sensitive target" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Bomb on Coordinate"];
            break;
        case 175:
            QuestionText.text = [NSString stringWithFormat:@"Which answer is the correct procedure for transmitting laser information in a 9-line brief?"];
            [Answer1 setTitle:@"Pass the 4-digit laser code and LTL on line 7" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Pass the 4-digit laser code and LTL in the Remarks" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Have the fighter contact the laser designation team for code sequence and grid location" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Pass the 4-digit laser code on line 7 and the LTL in Remarks" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Pass the 4-digit laser code on line 7 and the LTL in Remarks"];
            break;
        case 176:
            QuestionText.text = [NSString stringWithFormat:@"Because of the multiple coordinate systems available for use in target location, the _______ that will be used must always be specified in the JTAR."];
            [Answer1 setTitle:@"datum" forState:UIControlStateNormal];
            [Answer2 setTitle:@"global positioning system (GPS)" forState:UIControlStateNormal];
            [Answer3 setTitle:@"inertial navigation system (INS)" forState:UIControlStateNormal];
            [Answer4 setTitle:@"fire support coordinating measure" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Datum"];
            break;
        case 177:
            QuestionText.text = [NSString stringWithFormat:@"What information is always a restriction and shall be read back?"];
            [Answer1 setTitle:@"ACAs" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Danger close" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Final attack heading" forState:UIControlStateNormal];
            [Answer4 setTitle:@"All of the above" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"All of the above"];
            break;
        case 178:
            QuestionText.text = [NSString stringWithFormat:@"Concerning the Abort Code; during the CAS check-in briefing, the flight lead gives the JTAC a challenge code for use with his flight only. The JTAC refers to his authentication document, finds the reply, and notes but does not transmit it."];
            [Answer1 setTitle:@"True" forState:UIControlStateNormal];
            [Answer2 setTitle:@"False" forState:UIControlStateNormal];
            [Answer3 setTitle:@"" forState:UIControlStateNormal];
            [Answer4 setTitle:@"" forState:UIControlStateNormal];
            Answer1Correct = YES;
            Answer3.hidden = YES;
            Answer4.hidden = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"True"];
            break;
        case 179:
            QuestionText.text = [NSString stringWithFormat:@"For CAS, if no abort code is briefed, the proper abort call is ______."];
            [Answer1 setTitle:@"TERMINATE" forState:UIControlStateNormal];
            [Answer2 setTitle:@"KNOCK IT OFF" forState:UIControlStateNormal];
            [Answer3 setTitle:@"STOP, STOP, STOP" forState:UIControlStateNormal];
            [Answer4 setTitle:@"ABORT, ABORT, ABORT" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"ABORT, ABORT, ABORT"];
            break;
        case 180:
            QuestionText.text = [NSString stringWithFormat:@"If conditions preclude briefing an entire BDA report, what should be sent as the abbreviated report?"];
            [Answer1 setTitle:@"Successful, Unsuccessful, or Unknown" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Time-over-target and specific results" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Specific results and target coordinates" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Specific results and successful/unsuccessful" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Successful, Unsuccessful, or Unknown"];
            break;
        case 181:
            QuestionText.text = [NSString stringWithFormat:@"High altitude bombing can be described as 'bombing with the height of release over ______ AGL.'"];
            [Answer1 setTitle:@"2,000 feet" forState:UIControlStateNormal];
            [Answer2 setTitle:@"8,000 feet" forState:UIControlStateNormal];
            [Answer3 setTitle:@"15,000 feet" forState:UIControlStateNormal];
            [Answer4 setTitle:@"None of the above" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"15,000 feet"];
            break;
        case 182:
            QuestionText.text = [NSString stringWithFormat:@"Low altitude tactics are flown below ____ feet AGL. Very low altitude is flight below ____ feet AGL."];
            [Answer1 setTitle:@"5,000 / 300" forState:UIControlStateNormal];
            [Answer2 setTitle:@"6,000 / 400" forState:UIControlStateNormal];
            [Answer3 setTitle:@"8,000 / 500" forState:UIControlStateNormal];
            [Answer4 setTitle:@"10,000 / 500" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"8,000 / 500"];
            break;
        case 183:
            QuestionText.text = [NSString stringWithFormat:@"The JTAC must approve re-attacks after coordination with the ground force commander."];
            [Answer1 setTitle:@"True" forState:UIControlStateNormal];
            [Answer2 setTitle:@"False" forState:UIControlStateNormal];
            [Answer3 setTitle:@"" forState:UIControlStateNormal];
            [Answer4 setTitle:@"" forState:UIControlStateNormal];
            Answer1Correct = YES;
            Answer3.hidden = YES;
            Answer4.hidden = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"True"];
            break;
        case 184:
            QuestionText.text = [NSString stringWithFormat:@"The laser spot size is a function of ___________."];
            [Answer1 setTitle:@"beam divergence and the distance from the laser designator to the target" forState:UIControlStateNormal];
            [Answer2 setTitle:@"reflection and optics" forState:UIControlStateNormal];
            [Answer3 setTitle:@"color and wavelength" forState:UIControlStateNormal];
            [Answer4 setTitle:@"atmospheric conditions and target material composition" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Beam divergence and the distance from the laser designator to the target"];
            break;
        case 185:
            QuestionText.text = [NSString stringWithFormat:@"When using laser range finders and target locating devices, errors are induced by inaccurate GPS data, poor azimuth, range and elevation data, system calibration and user skill. These errors are magnified with rane and can result in significant target location errors (TLEs). Due to the variables listed previously, TLE will generally vary from 10 meters at 1 km to more than ____ meters at maximum ranges."];
            [Answer1 setTitle:@"2000" forState:UIControlStateNormal];
            [Answer2 setTitle:@"1000" forState:UIControlStateNormal];
            [Answer3 setTitle:@"500" forState:UIControlStateNormal];
            [Answer4 setTitle:@"300" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"300"];
            break;
        case 186:
            QuestionText.text = [NSString stringWithFormat:@"Due to the possibility of false target indicators, final attack headings must avoid _____."];
            [Answer1 setTitle:@"all laser operations" forState:UIControlStateNormal];
            [Answer2 setTitle:@"the laser-to-target zone" forState:UIControlStateNormal];
            [Answer3 setTitle:@"the 20-degree safety exclusion zone, unless the tactical situation dictates otherwise" forState:UIControlStateNormal];
            [Answer4 setTitle:@"the laser-to-target zone, plus or minus the safety zone" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"the 20-degree safety exclusion zone, unless the tactical situation dictates otherwise"];
            break;
        case 187:
            QuestionText.text = [NSString stringWithFormat:@"For laser operations, the target-to-laser designator safey zone for a laser attack heading is a _______ cone whose apex is at the target, and extends ____ either side of the target-to-designator line."];
            [Answer1 setTitle:@"20-degree, 10 degrees" forState:UIControlStateNormal];
            [Answer2 setTitle:@"30-degree, 15 degrees" forState:UIControlStateNormal];
            [Answer3 setTitle:@"40-degree, 20 degrees" forState:UIControlStateNormal];
            [Answer4 setTitle:@"50-degree, 25 degrees" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"20-degree, 10 degrees"];
            break;
        case 188:
            QuestionText.text = [NSString stringWithFormat:@"The aircrew can select PRF codes for the Laser Spot Tracker (LST) while in-flight."];
            [Answer1 setTitle:@"True" forState:UIControlStateNormal];
            [Answer2 setTitle:@"False" forState:UIControlStateNormal];
            [Answer3 setTitle:@"" forState:UIControlStateNormal];
            [Answer4 setTitle:@"" forState:UIControlStateNormal];
            Answer1Correct = YES;
            Answer3.hidden = YES;
            Answer4.hidden = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"True"];
            break;
        case 189:
            QuestionText.text = [NSString stringWithFormat:@"What are the three general categories of limited visibility CAS employment?"];
            [Answer1 setTitle:@"Visual, system-adied, and laser" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Visual, system-aided, and night vision device (NVD)" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Radar, system-aided, and laser" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Radar, system-aided, and NVD" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Visual, system-aided, and night vision device (NVD)"];
            break;
        case 190:
            QuestionText.text = [NSString stringWithFormat:@"For system-aided employment, aircrews and JTACs should incorporate redundant methods (e.g. radar, laser, and FLIR) into an attack, along with a target mark to find and attack a target."];
            [Answer1 setTitle:@"True" forState:UIControlStateNormal];
            [Answer2 setTitle:@"False" forState:UIControlStateNormal];
            [Answer3 setTitle:@"" forState:UIControlStateNormal];
            [Answer4 setTitle:@"" forState:UIControlStateNormal];
            Answer1Correct = YES;
            Answer3.hidden = YES;
            Answer4.hidden = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"True"];
            break;
        case 191:
            QuestionText.text = [NSString stringWithFormat:@"UAS that fly low and have a large visual signature or a loud engine noise will alert enemy forces, or may give away friendly positions."];
            [Answer1 setTitle:@"True" forState:UIControlStateNormal];
            [Answer2 setTitle:@"False" forState:UIControlStateNormal];
            [Answer3 setTitle:@"" forState:UIControlStateNormal];
            [Answer4 setTitle:@"" forState:UIControlStateNormal];
            Answer1Correct = YES;
            Answer3.hidden = YES;
            Answer4.hidden = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"True"];
            break;
        case 192:
            QuestionText.text = [NSString stringWithFormat:@"Generally, bombers avoiding the use of afterburner will not be heard and are very difficult to visually detect outside 5 nm from the target area when above _______ ft MSL."];
            [Answer1 setTitle:@"10,000" forState:UIControlStateNormal];
            [Answer2 setTitle:@"14,000" forState:UIControlStateNormal];
            [Answer3 setTitle:@"18,000" forState:UIControlStateNormal];
            [Answer4 setTitle:@"20,000" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"20,000"];
            break;
        case 193:
            QuestionText.text = [NSString stringWithFormat:@"Concerning bombers, the preferred coordinate format is _______."];
            [Answer1 setTitle:@"Degrees minutes seconds" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Degrees decimal minutes" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Military grid reference system" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Geographical terrain reference" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Degrees decimal minutes"];
            break;
        case 194:
            QuestionText.text = [NSString stringWithFormat:@"What publication contains detailed instructions on the Joint Tactical Air Strike Request (JTAR) (DD Form 1972)"];
            [Answer1 setTitle:@"AFI 13-112, Volume 1" forState:UIControlStateNormal];
            [Answer2 setTitle:@"AFDD 1" forState:UIControlStateNormal];
            [Answer3 setTitle:@"JP 3-09.3" forState:UIControlStateNormal];
            [Answer4 setTitle:@"ADP 3-0" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"JP 3-09.3"];
            break;
        case 195:
            QuestionText.text = [NSString stringWithFormat:@"What line of the Joint Tactical Air Strike Request will the 'type of terminal control' be transmitted?"];
            [Answer1 setTitle:@"Line 5" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Line 6" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Line 7" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Line 8" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Line 7"];
            break;
        case 196:
            QuestionText.text = [NSString stringWithFormat:@"The _______ implements the Airspace Control Plan that provides the details of the approved requests for airspace coordinating measures."];
            [Answer1 setTitle:@"airspace control order" forState:UIControlStateNormal];
            [Answer2 setTitle:@"special instructions" forState:UIControlStateNormal];
            [Answer3 setTitle:@"operations plan" forState:UIControlStateNormal];
            [Answer4 setTitle:@"joint prioritized target list" forState:UIControlStateNormal];
            Answer1Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Airspace control order"];
            break;
        case 197:
            QuestionText.text = [NSString stringWithFormat:@"A target whose loss to the enemy will significantly contribute to the success of the friendly course of action is considered to be a ______."];
            [Answer1 setTitle:@"high value target" forState:UIControlStateNormal];
            [Answer2 setTitle:@"high pay-off target" forState:UIControlStateNormal];
            [Answer3 setTitle:@"named area of interest" forState:UIControlStateNormal];
            [Answer4 setTitle:@"priority target" forState:UIControlStateNormal];
            Answer2Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"High pay-off target"];
            break;
        case 198:
            QuestionText.text = [NSString stringWithFormat:@"A target the enemy commander requires for successful completion of the mission is defined as __________."];
            [Answer1 setTitle:@"priority target" forState:UIControlStateNormal];
            [Answer2 setTitle:@"high pay-off target" forState:UIControlStateNormal];
            [Answer3 setTitle:@"high value target" forState:UIControlStateNormal];
            [Answer4 setTitle:@"named area of interest" forState:UIControlStateNormal];
            Answer3Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"High value target"];
            break;
        case 199:
            QuestionText.text = [NSString stringWithFormat:@"Directives issued by competent military authority that delineate the circumstances and limitations under which United States forces will initiae and/or continue combat engagement with other forces encountered is called ___________."];
            [Answer1 setTitle:@"special instructions" forState:UIControlStateNormal];
            [Answer2 setTitle:@"operation order" forState:UIControlStateNormal];
            [Answer3 setTitle:@"general orders" forState:UIControlStateNormal];
            [Answer4 setTitle:@"rules of engagement" forState:UIControlStateNormal];
            Answer4Correct = YES;
            CorrectAnswerDisplay.text = [NSString stringWithFormat:@"Rules of engagement"];
            break;
            
        default:
            break;
    }
    
    
    
    
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
    
    
    if (GameInProgress == NO) {
        LivesNumber = 10;
        ScoreNumber = 0;
        GameInProgress = YES;
    }
    
    Result.hidden = YES;
    Exit.hidden = YES;
    NextCategory.hidden = YES;
    CorrectAnswerDisplay.hidden = YES;
    
    Lives.text = [NSString stringWithFormat:@"%i", LivesNumber];
    Score.text = [NSString stringWithFormat:@"%i", ScoreNumber];
    
    Answer1Correct = NO;
    Answer2Correct = NO;
    Answer3Correct = NO;
    Answer4Correct = NO;
    
    
    CategoryLoaded = [[NSUserDefaults standardUserDefaults] integerForKey:@"CategorySaved"];
    
    switch (CategoryLoaded) {
        case 1:
            CategorySelected.text = [NSString stringWithFormat:@"CDC Volume 1"];
            [self Category1];
            break;
        case 2:
            CategorySelected.text = [NSString stringWithFormat:@"CDC Volume 2"];
            [self Category2];
            break;
        case 3:
            CategorySelected.text = [NSString stringWithFormat:@"CDC Volume 3"];
            [self Category3];
            break;
        case 4:
            CategorySelected.text = [NSString stringWithFormat:@"CDC All Volumes"];
            [self Category4];
            break;
        case 5:
            CategorySelected.text = [NSString stringWithFormat:@"MQF Test"];
            [self Category5];
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
