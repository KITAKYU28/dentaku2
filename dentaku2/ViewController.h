//
//  ViewController.h
//  dentaku2
//
//  Created by 篠原　辰徳 on 13/01/10.
//  Copyright (c) 2013年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *label;
@property enum {CLEAR} state;
@property (weak, nonatomic) IBOutlet UILabel *Y;
@property (weak, nonatomic) IBOutlet UILabel *SIKI;
@property (weak, nonatomic) IBOutlet UILabel *X;
@property (weak, nonatomic) IBOutlet UILabel *IKORU;
@property (weak, nonatomic) IBOutlet UILabel *HOZON;

- (void)Button:(int)number;
- (void)KIGOUButton:(int)number;
- (void)RESET;
- (void)YX;
- (void)YLX;
- (void)LXc;
- (void)LXy;
- (void)SYOIKOLXc;
- (void)xXIKOSYO;
- (void)xIKOSYOLXy;
- (void)KIGYXpKIGHUG:(int)number;
- (void)YYwoY;
- (void)xX:(int)number;

- (IBAction)push0:(id)sender;

- (IBAction)push1:(id)sender;

- (IBAction)push2:(id)sender;

- (IBAction)push3:(id)sender;

- (IBAction)push4:(id)sender;

- (IBAction)push5:(id)sender;

- (IBAction)push6:(id)sender;

- (IBAction)push7:(id)sender;

- (IBAction)push8:(id)sender;

- (IBAction)push9:(id)sender;

- (IBAction)pushTEN:(id)sender;

- (IBAction)pushIKORU:(id)sender;

- (IBAction)pushPLUS:(id)sender;

- (IBAction)pushMAINASU:(id)sender;

- (IBAction)pushKAKERU:(id)sender;

- (IBAction)pushWARU:(id)sender;

- (IBAction)pushHUGOU:(id)sender;

- (IBAction)pushC:(id)sender;

- (IBAction)HOZON:(id)sender;

- (IBAction)YOMIKOMI:(id)sender;

- (IBAction)Mreset:(id)sender;


@end
