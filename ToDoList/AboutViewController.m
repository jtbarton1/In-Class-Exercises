//
//  AboutViewController.m
//  ToDoList
//
//  Created by Student on 5/9/14.
//  Copyright (c) 2014 Student. All rights reserved.
//

#import "AboutViewController.h"

@interface AboutViewController ()
@property (weak, nonatomic) IBOutlet UILabel *Name;
@property (weak, nonatomic) IBOutlet UIButton *doneButton;

@end

@implementation AboutViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIButton *Gitbutton = [[UIButton alloc] initWithFrame:CGRectMake(20, 120, 150, 50)];
    Gitbutton.backgroundColor = [UIColor redColor];
    [Gitbutton setTitle:@"Github page" forState:UIControlStateNormal];
    [Gitbutton addTarget:self action:@selector(didTapMyButton:) forControlEvents:UIControlEventTouchUpInside];
    //show button
    [self.view addSubview:Gitbutton];
    
    _Name.text = @"Name : Jeremy Barton";
    
    // Do any additional setup after loading the view.
    
    
}

-(void)didTapMyButton:(UIButton *)sender
{
    [self launchURL];
}

-(void)launchURL
{
    NSURL *github = [[NSURL alloc] initWithString:@"http://www.github.com/jtbarton1"];
    [[UIApplication sharedApplication] openURL:github];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
