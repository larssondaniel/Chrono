//
//  CHViewController.m
//  Chrono
//
//  Created by larssondaniel on 02/04/2017.
//  Copyright (c) 2017 larssondaniel. All rights reserved.
//

#import "CHViewController.h"
#import <Chrono/Chrono.h>

@interface CHViewController ()

@end

@implementation CHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    [self performHeavyCalculations];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)performHeavyCalculations
{
    [Chrono start:@"myHeavyTask"];

    for (NSInteger i = 0; i < 50000; i++)
    {
        // Do work
    }

    [Chrono addEvent:@"finishedFirstPart" forOperation:@"myHeavyTask"];

    for (NSInteger i = 0; i < 10000; i++)
    {
        // Do work
    }

    [Chrono stop:@"myHeavyTask"];
}

@end
