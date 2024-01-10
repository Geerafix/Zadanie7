//
//  ViewController.m
//  Zad
//
//  Created by kolega on 10/01/2024.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [_informationButton setTitle:NSLocalizedString(@"Information", nil) forState:UIControlStateNormal];
    [_image setImage:[UIImage imageNamed:NSLocalizedString(@"image", nil)]];
}

- (IBAction) enter {
    UIAlertController *alertDialog= [UIAlertController alertControllerWithTitle
     :NSLocalizedString(@"Information", nil)
     message:[NSString stringWithFormat:NSLocalizedString(@"The faculty is running %i programs on graduate and undergraduate level.", nil), 4]
     preferredStyle:UIAlertControllerStyleAlert];
     UIAlertAction *defaultAction=[UIAlertAction actionWithTitle:@"OK"
     style:UIAlertActionStyleDefault
     handler:^(UIAlertAction *action){}];
     [alertDialog addAction:defaultAction];
     [self presentViewController:alertDialog animated:YES completion:nil];
}

@end
