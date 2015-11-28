//
//  LDCCell.m
//  LDCWaterfallFlowView
//
//  Created by apple on 15/11/29.
//  Copyright © 2015年 dachuan.com. All rights reserved.
//

#import "LDCCell.h"

@implementation LDCCell

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self)
    {
        // change to our custom selected background view
//        CustomCellBackground *backgroundView = [[CustomCellBackground alloc] initWithFrame:CGRectZero];
//        self.selectedBackgroundView = backgroundView;
        self.backgroundColor = [UIColor greenColor];
    }
    return self;
}

@end
