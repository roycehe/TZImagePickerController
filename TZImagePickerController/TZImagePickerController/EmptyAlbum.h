//
//  EmptyAlbum.h
//  freebox
//
//  Created by gys on 2021/6/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface EmptyAlbum : UIView
@property (weak, nonatomic) IBOutlet UIImageView *emptyImg;
@property (weak, nonatomic) IBOutlet UILabel *emptyTitle;
@property (weak, nonatomic) IBOutlet UILabel *emptySubTitle;
@property (weak, nonatomic) IBOutlet UIButton *emptyBtn;

@end

NS_ASSUME_NONNULL_END
