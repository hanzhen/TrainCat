//
//  InfoViewController.m
//  TrainCat
//
//  Created by Alankar Misra on 28/02/13.
//
//

#import "InfoViewController.h"
#import <Dropbox/Dropbox.h>


@interface InfoViewController ()
@property (weak, nonatomic) IBOutlet UILabel *lblCurrentPid;
@property (weak, nonatomic) IBOutlet UILabel *lblDropboxAuthenticated;

@end

@implementation InfoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    NSString *pid =[ud stringForKey:@"loggedInPid"];
    self.lblCurrentPid.text = pid ? pid : @"Not set!";
    DBAccountInfo *ai = [[[DBAccountManager sharedManager] linkedAccount] info];
    if(ai) {
        self.lblDropboxAuthenticated.text = [NSString stringWithFormat:@"%@ with %@", [ai displayName], [ai email]];
    } else {
        self.lblDropboxAuthenticated.text = @"No";
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    //[[[DBAccountManager sharedManager] linkedAccount] unlink];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end