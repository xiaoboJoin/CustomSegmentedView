//
//  CustomSegmentedView.m
//  CustomSegmentedView
//
//  Created by iXiaobo on 14-11-19.
//  Copyright (c) 2014年 iXiaobo. All rights reserved.
//

#import "CustomSegmentedView.h"

@implementation CustomSegmentedView
@synthesize delegate;

- (CustomSegmentedView*)instanceCustomSegmentedView
{
    NSArray* nibView =  [[NSBundle mainBundle] loadNibNamed:@"CustomSegmentedView" owner:nil options:nil];
    return [nibView objectAtIndex:0];
    
    
}

- (IBAction)didTapOnDiscoveryButton:(id)sender
{
    
    if ([delegate respondsToSelector:@selector(onDidTapOnDiscoveryButton:)])
    {
        [delegate onDidTapOnDiscoveryButton:self];
    }
}

- (IBAction)didTapOnArticleButton:(id)sender
{
    if ([delegate respondsToSelector:@selector(onDidTapOnArticleButton:)])
    {
        [delegate onDidTapOnArticleButton:self];
    }
    
}

- (IBAction)didTapOnQuestionButton:(id)sender
{
    if ([delegate respondsToSelector:@selector(onDidTapOnQuestionButton:)])
    {
        [delegate onDidTapOnQuestionButton:self];
    }

    
}
@end
