//
//  YHViewController.m
//  GMUrlSigner
//
//  Created by youssman on 08/14/2015.
//  Copyright (c) 2015 youssman. All rights reserved.
//

#import "YHViewController.h"
#import "GMUrlSigner.h"

static NSString *const CLIENT_ID = @"YOUR_CLIENT_ID";
static NSString *const PRIVATE_KEY = @"YOUR_PRIVATE_KEY";

@interface YHViewController ()

@property (weak, nonatomic) IBOutlet UITextField *urlTextField;
@property (weak, nonatomic) IBOutlet UITextField *privateKeyTextField;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

- (IBAction)SignURLAction:(id)sender;

@end

@implementation YHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
  //for our example
	NSString *address = @"New+York";
  _urlTextField.text = [NSString stringWithFormat:@"/maps/api/geocode/json?address=%@&sensor=true&client=%@", address, CLIENT_ID];
  
  _privateKeyTextField.text = PRIVATE_KEY;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)SignURLAction:(id)sender {
  GMUrlSigner *urlSigner = [[GMUrlSigner alloc] init];
  //get the signature
  NSString *signature = [urlSigner signUrl:_urlTextField.text withThisKey:_privateKeyTextField.text];
  _resultLabel.text = [NSString stringWithFormat:@"https://maps.googleapis.com%@&signature=%@", _urlTextField.text, signature];
}
@end
