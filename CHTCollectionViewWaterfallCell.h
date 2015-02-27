//
//  UICollectionViewWaterfallCell.h
//  Demo
//
//  Created by Nelson on 12/11/27.
//  Copyright (c) 2012年 Nelson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CHTCollectionViewWaterfallCell : UICollectionViewCell{

    NSMutableArray * _dataArray;
}
@property (nonatomic, copy) NSString *displayString;
@property (nonatomic, retain) UILabel *displayLabel;

@property (nonatomic, retain) UIImageView *photoView;

@end
