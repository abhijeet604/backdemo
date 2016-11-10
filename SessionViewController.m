//
//  SessionViewController.m
//  backdemo
//
//  Created by iBoss on 18/04/16.
//  Copyright © 2016 iBoss. All rights reserved.
//

#import "SessionViewController.h"

@interface SessionViewController ()

@end

@implementation SessionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    counterTask = [[UIApplication sharedApplication]
                   beginBackgroundTaskWithExpirationHandler:^{
                       // If you're worried about exceeding 10 minutes, handle it here
                   }];
    count=0;
    theTimer=[NSTimer scheduledTimerWithTimeInterval:0.1
                                              target:self
                                            selector:@selector(countUp)
                                            userInfo:nil
                                             repeats:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (void)dealloc {
}
- (void)countUp {
    if (count==1000) {
        [theTimer invalidate];
        [[UIApplication sharedApplication] endBackgroundTask:counterTask];
    } else {
        count++;
        NSString *currentCount;
        currentCount=[[NSString alloc] initWithFormat:@"%d",count];
        _label.text=currentCount;
    }
    }
@end
