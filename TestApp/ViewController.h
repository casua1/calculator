//
//  ViewController.h
//  TestApp
//
//  Created by iD Student on 6/24/13.
//  Copyright (c) 2013 Phil. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    float firstNumber;
    int operation;
    float secondNumber;
    BOOL op;
    IBOutlet UITextField *answer;
}

-(IBAction)getNumber:(id)sender;
-(IBAction)doMath:(id)sender;
-(IBAction)getOperation:(id)sender;
-(IBAction)clearCalc:(id)sender;
-(IBAction)posNeg:(id)sender;

@end
