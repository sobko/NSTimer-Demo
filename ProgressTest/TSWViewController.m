//
//  TSWViewController.m
//  ProgressTest
//
//  Created by Mark Sobkowicz on 12/6/13.
//  Copyright (c) 2013 27Walnut. All rights reserved.
//

#import "TSWViewController.h"

@interface TSWViewController ()
@property (weak, nonatomic) IBOutlet UIProgressView *progress;
@property (strong, nonatomic) NSTimer *timer;


@end

@implementation TSWViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.progress.progress = 0.0;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)start:(id)sender {
    self.timer = [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(timerFireMethod:) userInfo:self repeats:YES];
    
    
}
- (void)timerFireMethod: (NSTimer *)timer
{
    NSLog(@"timer, yo");
    self.progress.progress += 0.05;
    
    
}
@end
