//
//  TestResultsViewController.m
//  test_app
//
//  Created by Yaroslav Fedorov on 05/02/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TestResultsViewController.h"
#import "AppDelegate.h"

@implementation TestResultsViewController

@synthesize unansweredQuestions, uncorrectAnswers, correctAnswers, testingTime;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    
    [super viewDidLoad];
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    NSMutableDictionary *dic = (NSMutableDictionary *)appDelegate.d1;
    
    
    uncorrectAnswers.text = [dic objectForKey:@"uncorrectAnswers"];
    unansweredQuestions.text = [dic objectForKey:@"unansweredQuestions"];
    correctAnswers.text = [dic objectForKey:@"correctAnwers"];
    testingTime.text = [dic objectForKey:@"testingTime"];
    
   
    
}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
-(IBAction)cancelPressed {
    [self dismissModalViewControllerAnimated:YES];
}
@end
