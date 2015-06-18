//
//  ViewController.m
//  ScrollView
//
//  Created by NAV on 6/18/15.
//  Copyright (c) 2015 RedGao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    for (NSInteger i = 1; i <= 4; i++)
    {
        NSString *fileName = [NSString stringWithFormat:@"bmw%d.jpg", i];
        UIImage *image = [UIImage imageNamed:fileName];
        UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
        imageView.contentMode = UIViewContentModeScaleToFill;
        imageView.frame = CGRectMake((750/2) * (i - 1), 0, (750/2), self.scrollView.frame.size.height);
        
        [self.scrollView addSubview:imageView];
    }
    
    self.scrollView.contentSize = CGSizeMake((750/2) * 4, self.scrollView.frame.size.height);
    self.scrollView.pagingEnabled = YES;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
