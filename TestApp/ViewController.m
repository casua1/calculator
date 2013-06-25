//
//  ViewController.m
//  TestApp
//
//  Created by iD Student on 6/24/13.
//  Copyright (c) 2013 Phil. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Gets user inputted numbers
-(IBAction)getNumber:(id)sender
{
    /*if(answer.text == "")
    {
        firstNumber= (float)answer.text;
    }*/
    if(op)
    {
        secondNumber = secondNumber*10 + (float)[sender tag];
        answer.text = [NSString stringWithFormat:@"%3.2f", secondNumber];
        op = FALSE;
    }
    else
    {
        firstNumber = firstNumber*10 + (float)[sender tag];
        answer.text = [NSString stringWithFormat:@"%3.2f", firstNumber];
    }
}
//Completes mathematical operation
-(IBAction)doMath:(id)sender
{
    switch (operation)
    {
        case 0:
            answer.text = [NSString stringWithFormat:@"%3.2f",(firstNumber + secondNumber)];
            break;
        case 1:
            answer.text = [NSString stringWithFormat:@"%3.2f",(firstNumber - secondNumber)];
            break;
        case 2:
            answer.text = [NSString stringWithFormat:@"%3.2f",(firstNumber * secondNumber)];
            break;
        case 3:
            answer.text = [NSString stringWithFormat:@"%3.2f",(firstNumber / secondNumber)];
            break;
    }
}
//Gets user inputted operation
-(IBAction)getOperation:(id)sender;
{
    operation = [sender tag];
    answer.text = [NSString stringWithFormat:@""];
    op = TRUE;
}

//Clears the calculator
-(IBAction)clearCalc:(id)sender;
{
    answer.text = [NSString stringWithFormat:@""];
    firstNumber = 0;
    secondNumber = 0;
}
-(IBAction)posNeg:(id)sender
{
    if ([NSString stringWithFormat:@"%3.2f",(firstNumber)] == answer.text)
    {
        firstNumber = firstNumber * -1;
        answer.text = [NSString stringWithFormat:@"%3.2f", firstNumber];

    }
    else
    {
        secondNumber = secondNumber * -1;
        answer.text = [NSString stringWithFormat:@"%3.2f", secondNumber];
    }
}
@end
