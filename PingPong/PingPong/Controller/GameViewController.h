//
//  GameViewController.h
//  PingPong
//
//  Created by Grigory Stolyarov on 23.04.2021.
//

#import <UIKit/UIKit.h>

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height
#define HALF_SCREEN_WIDTH SCREEN_WIDTH / 2
#define HALF_SCREEN_HEIGHT SCREEN_HEIGHT / 2
#define MAX_SCORE 6
#define SCORE_SIZE 50
#define SCORE_POSITION_SHIFT 70
#define BALL_SIZE 20
#define PADDLE_WIDTH 90
#define PADDLE_HEIGHT 60
#define PADDLE_X_SHIFT 30
#define PADDLE_Y_SHIFT 40

NS_ASSUME_NONNULL_BEGIN

@interface GameViewController : UIViewController

@end

NS_ASSUME_NONNULL_END
