//
//  ViewController.m
//  dentaku2
//
//  Created by 篠原　辰徳 on 13/01/10.
//  Copyright (c) 2013年 admin. All rights reserved.
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

double x,y,yy,c;
int z=1;
double h,m;
int KIGOU,IKORU,SYOUSUU,HUGOU;
int SUUZIX,SUUZIY;
int pKIGOU;

- (void)YX{
    [[self Y] setText: [ NSString stringWithFormat : @"%g", y]];
    [[self X] setText: [ NSString stringWithFormat : @"%g", x]];
}

- (void)YLX{
    [[self Y] setText: [ NSString stringWithFormat : @"%g", y]];
    [[self label] setText: [ NSString stringWithFormat : @""]];
    [[self X] setText: [ NSString stringWithFormat : @""]];
}

- (void)LXc{
    [[self label] setText: [ NSString stringWithFormat : @"%g", yy]];
    [[self X] setText: [ NSString stringWithFormat : @"%g",c]];
}

- (void)LXy{
    [[self label] setText: [ NSString stringWithFormat : @"%g", yy]];
    [[self X] setText: [ NSString stringWithFormat : @"%g",y]];
}

- (void)SYOIKOLXc{
    SYOUSUU=0;
    IKORU=1;
    [self LXc];
}

- (void)xXIKOSYO{
    x=0;
    SUUZIX=0;
    IKORU=1;
    SYOUSUU=0;
}

- (void)xIKOSYOLXy{
    x=0;
    IKORU=1;
    SYOUSUU=0;
    [self LXy];
}

- (void)KIGYXpKIGHUG:(int)number{
    x=0;
    KIGOU=number;
    SUUZIY=SUUZIX;
    SUUZIX=0;
    pKIGOU=number;
    HUGOU=0;
}

- (void)YYwoY{
    if(yy!=0){
        y=yy;
        yy=0;
        [self YLX];
    }
}

- (void)xX:(int)number{
    x=x*10+number;
    SUUZIX=SUUZIX+1;
}

- (void)Button:(int)number{
    if(KIGOU==0){
        if(yy!=0){
            yy=0;
            y=0;
            [self YLX];
        }
    }
    
    if(HUGOU==0){
        if(SYOUSUU==1){
            if(IKORU!=0){
                if(KIGOU==0){
                    y=0;
                    SUUZIY=0;
                }
            }
            x=x+number*pow(0.1, z);
            z=z+1;
            SUUZIX=SUUZIX+1;
            [self YX];
        }
        
        else{
            if(IKORU==1){
                if(KIGOU==0){
                    y=0;
                    IKORU=0;
                    [self xX:number];
                    [[self label] setText: [ NSString stringWithFormat : @""]];
                    [self YX];
                }
                else{
                    [self xX:number];
                    [self YX];
                }
            }
            
            else{
                [self xX:number];
                if(KIGOU==1){
                    if(y==0){
                        x=0-x;
                        HUGOU=1;
                        KIGOU=0;
                        [[self SIKI] setText: [ NSString stringWithFormat : @""]];
                    }
                }
                [self YX];
            }
        }
    }
    
    //±押してる時
    else{
        if(KIGOU==0){
            if(pKIGOU==1){
                x=x*10-number;
                SUUZIX=SUUZIX+1;
                
                [self YX];
            }
            else{
                x=number;
                y=0;
                yy=0;
                z=1;
                HUGOU=0;
                SYOUSUU=0;
                IKORU=0;
                KIGOU=0;
                pKIGOU=0;
                SUUZIY=0;
                SUUZIX=SUUZIX+1;
                [[self label] setText: [ NSString stringWithFormat : @"0"]];
                [self YX];
            }
        }
        else{
            if(y==0){
                [self xX:number];
                [self YX];
            }
            else{
                x=0;
                SUUZIX=0;
                HUGOU=0;
                [self xX:number];
                [self YX];
            }
        }
    }
}
//0

- (IBAction)push0:(id)sender {
    if(yy!=0){
        yy=0;
        y=0;
        [self YLX];
    }
    
    if(HUGOU==0){
        if(SYOUSUU==1){
            z=z+1;
            switch(z){
                case 1:
                    [[self Y] setText: [ NSString stringWithFormat : @"%g", y]];
                    [[self X] setText: [ NSString stringWithFormat : @"%f", x]];
                    break;
                    
                case 2:
                    [[self Y] setText: [ NSString stringWithFormat : @"%g", y]];
                    [[self X] setText: [ NSString stringWithFormat : @"%.1f", x]];
                    break;
                    
                case 3:
                    [[self Y] setText: [ NSString stringWithFormat : @"%g", y]];
                    [[self X] setText: [ NSString stringWithFormat : @"%.2f", x]];
                    break;
                    
                case 4:
                    [[self Y] setText: [ NSString stringWithFormat : @"%g", y]];
                    [[self X] setText: [ NSString stringWithFormat : @"%.3f", x]];
                    break;
                    
                case 5:
                    [[self Y] setText: [ NSString stringWithFormat : @"%g", y]];
                    [[self X] setText: [ NSString stringWithFormat : @"%.4f", x]];
                    break;
                    
                case 6:
                    [[self Y] setText: [ NSString stringWithFormat : @"%g", y]];
                    [[self X] setText: [ NSString stringWithFormat : @"%.5f", x]];
                    break;
            }
        }
        
        else{
            if(IKORU==1){
                if(KIGOU==0){
                    [self RESET];
                }
                else{
                    x=x*10;
                    [self YX];
                }
            }
            
            else{
                if(x!=0){
                    x=x*10;
                    [self YX];
                }
                else{
                    x=0;
                    SUUZIX=SUUZIX+1;
                    [[self label] setText:@"0"];
                    [[self X] setText: [ NSString stringWithFormat : @"0"]];
                }
            }
        }
    }
    
    //±押してる時
    else{
        if(KIGOU==0){
            [self RESET];
        }
        else{
            x=x*10;
            [self YX];
        }
    }
}

- (IBAction)push1:(id)sender {
    [self Button:1];
}

- (IBAction)push2:(id)sender {
    [self Button:2];
}

- (IBAction)push3:(id)sender {
    [self Button:3];
}

- (IBAction)push4:(id)sender {
    [self Button:4];
}

- (IBAction)push5:(id)sender {
    [self Button:5];
}

- (IBAction)push6:(id)sender {
    [self Button:6];
}

- (IBAction)push7:(id)sender {
    [self Button:7];
}

- (IBAction)push8:(id)sender {
    [self Button:8];
}

- (IBAction)push9:(id)sender {
    [self Button:9];
}

- (void)KIGOUButton:(int)number{
    
    [self YYwoY];
    
    if(y==0){
        y=x;
        SYOUSUU=0;
        z=1;
        [self KIGYXpKIGHUG:number];
        [[self Y] setText: [ NSString stringWithFormat : @"%g", y]];
        [[self X] setText: [ NSString stringWithFormat : @""]];
    }
    else{
        if(x!=0){
            switch(KIGOU){
                case 1:
                    y=y-x;
                    [self KIGYXpKIGHUG:number];
                    [self YLX];
                    break;
                    
                case 2:
                    y=y+x;
                    [self KIGYXpKIGHUG:number];
                    [self YLX];
                    break;
                    
                case 3:
                    y=y*x;
                    [self KIGYXpKIGHUG:number];
                    [self YLX];
                    break;
                    
                case 4:
                    y=y/x;
                    [self KIGYXpKIGHUG:number];
                    [self YLX];
                    break;
            }
        }
        else{
            KIGOU=number;
            pKIGOU=number;
        }
    }
    
}


- (IBAction)pushMAINASU:(id)sender {
    [[self SIKI] setText: [ NSString stringWithFormat : @"-"]];
    [self KIGOUButton:1];
}

- (IBAction)pushPLUS:(id)sender {
    [[self SIKI] setText: [ NSString stringWithFormat : @"+"]];
    [self KIGOUButton:2];
}

- (IBAction)pushKAKERU:(id)sender {
    [[self SIKI] setText: [ NSString stringWithFormat : @"×"]];
    [self KIGOUButton:3];
}

- (IBAction)pushWARU:(id)sender {
    [[self SIKI] setText: [ NSString stringWithFormat : @"÷"]];
    [self KIGOUButton:4];
}

- (IBAction)pushIKORU:(id)sender {
    [[self SIKI] setText: [ NSString stringWithFormat : @""]];
    if(SUUZIY!=0){
        if(SUUZIX==0){
            if(KIGOU==0){
                if(yy==0){
                    //y押してる、x押してない、記号使ってない、=連打使ってない//
                    [[self Y] setText: [ NSString stringWithFormat : @"%g", y]];
                    switch(pKIGOU){
                        case 1:
                            yy=y;
                            yy=yy-c;
                            [self SYOIKOLXc];
                            [[self SIKI] setText: [ NSString stringWithFormat : @"-"]];
                            break;
                            
                        case 2:
                            yy=y;
                            yy=yy+c;
                            [self SYOIKOLXc];
                            [[self SIKI] setText: [ NSString stringWithFormat : @"+"]];
                            break;
                            
                        case 3:
                            yy=y;
                            yy=yy*c;
                            [self SYOIKOLXc];
                            [[self SIKI] setText: [ NSString stringWithFormat : @"×"]];
                            break;
                            
                        case 4:
                            yy=y;
                            yy=yy/c;
                            [self SYOIKOLXc];                        [[self SIKI] setText: [ NSString stringWithFormat : @"÷"]];
                            break;
                    }
                }
                
                else{
                    //y押してる、x押してない、記号使ってない、=連打使ってる//
                    [[self Y] setText: [ NSString stringWithFormat : @"%g", yy]];
                    switch(pKIGOU){
                        case 1:
                            yy=yy-c;
                            [self xXIKOSYO];
                            [self LXc];
                            [[self SIKI] setText: [ NSString stringWithFormat : @"-"]];
                            break;
                            
                        case 2:
                            yy=yy+c;
                            [self xXIKOSYO];
                            [self LXc];
                            [[self SIKI] setText: [ NSString stringWithFormat : @"+"]];
                            break;
                            
                        case 3:
                            yy=yy*c;
                            [self xXIKOSYO];
                            [self LXc];
                            [[self SIKI] setText: [ NSString stringWithFormat : @"×"]];
                            break;
                            
                        case 4:
                            yy=yy/c;
                            [self xXIKOSYO];
                            [self LXc];
                            [[self SIKI] setText: [ NSString stringWithFormat : @"÷"]];
                            break;
                    }
                }
            }
            
            else{
                if(yy==0){
                    //y押してる、x押してない、記号使ってる、=連打使ってない//
                    yy=y;
                    [[self Y] setText: [ NSString stringWithFormat : @"%g", yy]];
                    switch(KIGOU){
                        case 1:
                            yy=yy-y;
                            [self xIKOSYOLXy];
                            [[self SIKI] setText: [ NSString stringWithFormat : @"-"]];
                            break;
                            
                        case 2:
                            yy=yy+y;
                            [self xIKOSYOLXy];
                            [[self SIKI] setText: [ NSString stringWithFormat : @"+"]];
                            break;
                            
                        case 3:
                            yy=yy*y;
                            [self xIKOSYOLXy];
                            [[self SIKI] setText: [ NSString stringWithFormat : @"×"]];
                            break;
                            
                        case 4:
                            yy=yy/y;
                            [self xIKOSYOLXy];
                            [[self SIKI] setText: [ NSString stringWithFormat : @"÷"]];
                            break;
                    }
                }
                
                else{
                    //y押してる、x押してない、記号使ってる、=連打使ってる//
                    [[self Y] setText: [ NSString stringWithFormat : @"%g", yy]];
                    switch(KIGOU){
                        case 1:
                            yy=yy-y;
                            [self xXIKOSYO];
                            [self LXy];
                            [[self SIKI] setText: [ NSString stringWithFormat : @"-"]];
                            break;
                            
                        case 2:
                            yy=yy+y;
                            [self xXIKOSYO];
                            [self LXy];
                            [[self SIKI] setText: [ NSString stringWithFormat : @"+"]];
                            break;
                            
                        case 3:
                            yy=yy*y;
                            [self xXIKOSYO];
                            [self LXy];
                            [[self SIKI] setText: [ NSString stringWithFormat : @"×"]];
                            break;
                            
                        case 4:
                            yy=yy/y;
                            [self xXIKOSYO];
                            [self LXy];
                            [[self SIKI] setText: [ NSString stringWithFormat : @"÷"]];
                            break;
                    }
                }
            }
        }
        
        /////////y押してる、x押してる////////////
        else{
            switch(KIGOU){
                case 1:
                    c=x;
                    y=y-x;
                    KIGOU=0;
                    [self xXIKOSYO];
                    [[self label] setText: [ NSString stringWithFormat : @"%g", y]];
                    [self YX];
                    break;
                    
                case 2:
                    c=x;
                    y=y+x;
                    KIGOU=0;
                    [self xXIKOSYO];
                    [[self label] setText: [ NSString stringWithFormat : @"%g", y]];
                    [self YX];
                    break;
                    
                case 3:
                    c=x;
                    y=y*x;
                    KIGOU=0;
                    [self xXIKOSYO];
                    [[self label] setText: [ NSString stringWithFormat : @"%g", y]];
                    [self YX];
                    break;
                    
                case 4:
                    c=x;
                    y=y/x;
                    KIGOU=0;
                    [self xXIKOSYO];
                    [[self label] setText: [ NSString stringWithFormat : @"%g", y]];
                    [self YX];
                    break;
            }
            
        }
    }
}

- (IBAction)pushTEN:(id)sender {
    if(SYOUSUU==0){
        [[self X] setText: [ NSString stringWithFormat : @"%g.", x]];
    }
    SYOUSUU=1;
    
    if(x==0){
        if(KIGOU==0){
            y=0;
            SUUZIY=0;
            [[self label] setText:@"0"];
            [[self Y] setText: [ NSString stringWithFormat : @"0"]];
            if(y==0){
                [[self Y] setText: [ NSString stringWithFormat : @""]];
            }
        }
    }
    if(x==0){
        z=1;
    }
}

- (IBAction)pushHUGOU:(id)sender {
    
    [self YYwoY];
    
    if(x!=0){
        x=-1*x;
        HUGOU=1;
        [[self X] setText: [ NSString stringWithFormat : @"%g", x]];
    }
    //計算結果後の値を符号転換
    else{
        if(y!=0){
            if(IKORU==1){
                if(KIGOU==0){
                    y=-1*y;
                    [[self Y] setText: [ NSString stringWithFormat : @"%g",y]];
                    [[self label] setText:@"0"];
                    [[self SIKI] setText: [ NSString stringWithFormat : @""]];
                }
            }
        }
    }
}

- (void)RESET{
    [[self label] setText:@"0"];
    x=0;
    y=0;
    z=1;
    yy=0;
    HUGOU=0;
    SUUZIX=0;
    SUUZIY=0;
    KIGOU=0;
    pKIGOU=0;
    SYOUSUU=0;
    IKORU=0;
    [[self Y] setText: [ NSString stringWithFormat : @""]];
    [[self X] setText: [ NSString stringWithFormat : @"%g",x]];
    [[self SIKI] setText: [ NSString stringWithFormat : @""]];
}

- (IBAction)pushC:(id)sender {
    [[self label] setText:@"0"];
    [self RESET];
    [[self X] setText: [ NSString stringWithFormat : @""]];
}

- (IBAction)HOZON:(id)sender {
    if(yy!=0){
        y=yy;
        if(x!=0){
            h=x;
            [[self HOZON] setText: [ NSString stringWithFormat : @"%g", x]];
        }
        
        else{
            if(y!=0) {
                h=y;
                [[self HOZON] setText: [ NSString stringWithFormat : @"%g", y]];
            }
        }
        
    }
    
    else{
        if(x!=0){
            h=x;
            [[self HOZON] setText: [ NSString stringWithFormat : @"%g", x]];
        }
        
        else{
            if(y!=0) {
                h=y;
                [[self HOZON] setText: [ NSString stringWithFormat : @"%g", y]];
            }
        }
    }
}

- (IBAction)YOMIKOMI:(id)sender {
    if(h!=0){
        if(x==0){
            if(y!=0){
                if(KIGOU==0){
                    y=0;
                    z=1;
                    SYOUSUU=0;
                    IKORU=0;
                    x=h;
                    [[self X] setText: [ NSString stringWithFormat : @"%g", x]];
                    [[self Y] setText: [ NSString stringWithFormat : @""]];
                    [[self label] setText: [ NSString stringWithFormat : @""]];
                }
                else{
                    x=h;
                    SUUZIX=1;
                    [self YX];
                }
            }
            else{
                x=h;
                SUUZIX=1;
                [[self X] setText: [ NSString stringWithFormat : @"%g", x]];
            }
        }
        
        else{
            x=h;
            SUUZIX=1;
            [[self X] setText: [ NSString stringWithFormat : @"%g", x]];
        }
    }
}

- (IBAction)Mreset:(id)sender {
    h=0;
    [[self HOZON] setText: [ NSString stringWithFormat : @""]];
}


@end
