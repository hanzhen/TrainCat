//
//  CocosViewController.h
//  TrainCat
//
//  Created by Alankar Misra on 14/02/13.
//
//

#import <UIKit/UIKit.h>
#import "cocos2d.h"

@interface GameController : UIViewController <CCDirectorDelegate>
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;
@end
