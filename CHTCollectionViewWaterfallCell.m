//
//  UICollectionViewWaterfallCell.m
//  Demo
//
//  Created by Nelson on 12/11/27.
//  Copyright (c) 2012年 Nelson. All rights reserved.
//

#import "CHTCollectionViewWaterfallCell.h"

#import "ActivityListViewController.h"
@implementation CHTCollectionViewWaterfallCell
@synthesize photoView = _photoView;
#pragma mark - Accessors

- (UIImageView *)photoView {
    if (!_photoView) {
        _photoView = [[UIImageView alloc] initWithFrame:self.contentView.bounds];
        _photoView.contentMode = UIViewContentModeScaleAspectFill;
        _photoView.clipsToBounds = YES;
        _photoView.backgroundColor=[UIColor yellowColor];
    }
    return _photoView;
}

- (UILabel *)displayLabel {
	if (!_displayLabel) {
		_displayLabel = [[UILabel alloc] initWithFrame:self.contentView.bounds];
		_displayLabel.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
		_displayLabel.backgroundColor = [UIColor lightGrayColor];
		_displayLabel.textColor = [UIColor whiteColor];
		_displayLabel.textAlignment = NSTextAlignmentCenter;
	}
	return _displayLabel;
}

#pragma mark - Life Cycle
- (void)dealloc {
	[_displayLabel removeFromSuperview];
	_displayLabel = nil;
}

- (id)initWithFrame:(CGRect)frame {
	if (self = [super initWithFrame:frame]) {
//		[self.contentView addSubview:self.displayLabel];
      
        [self.contentView addSubview:self.photoView];
	}
	return self;
}


@end
