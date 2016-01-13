//
//  UIButton+Blocks.h
//  UIButtonBlocks
//
//  Created by Matthew on 16/1/13.
//  Copyright © 2016年 Matthew.ye. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^ButtonBlock)(UIButton* btn);

@interface UIButton (MMBlocks)
- (void)addAction:(ButtonBlock)block
  forControlEvent:(UIControlEvents)controlEvent;

/* does not support remove one specific block*/

- (void)removeAllActionForControlEvent:(UIControlEvents)controlEvent;

@end
