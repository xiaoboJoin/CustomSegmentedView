//
//  CustomSegmentedView.h
//  CustomSegmentedView
//
//  Created by iXiaobo on 14-11-19.
//  Copyright (c) 2014年 iXiaobo. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CustomSegmentedViewDelegate <NSObject>
- (void)onDidTapOnDiscoveryButton:(id)view;
- (void)onDidTapOnArticleButton:(id)view;
- (void)onDidTapOnQuestionButton:(id)view;
@end


@interface CustomSegmentedView : UIView
{
    __weak IBOutlet UIButton *_discoveryBtn;
    __weak IBOutlet UIButton *_articleBtn;
    __weak IBOutlet UIButton *_questionBtn;
    id<CustomSegmentedViewDelegate>delegate;
}

@property(retain,nonatomic)id<CustomSegmentedViewDelegate>delegate;
- (CustomSegmentedView *)instanceCustomSegmentedView;
- (IBAction)didTapOnDiscoveryButton:(id)sender;
- (IBAction)didTapOnArticleButton:(id)sender;
- (IBAction)didTapOnQuestionButton:(id)sender;

@end
