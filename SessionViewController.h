//
//  SessionViewController.h
//  backdemo
//
//  Created by iBoss on 18/04/16.
//  Copyright © 2016 iBoss. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SessionViewController : UIViewController
{
    int count;
    NSTimer *theTimer;
    UIBackgroundTaskIdentifier counterTask;
    IBOutlet UILabel *theCount;

}
@property (weak, nonatomic) IBOutlet UILabel *label;

@end
