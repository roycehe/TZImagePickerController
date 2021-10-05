//
//  EmptyAlbum.m
//  freebox
//
//  Created by gys on 2021/6/21.
//

#import "EmptyAlbum.h"


@implementation EmptyAlbum

-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self = [[[NSBundle mainBundle] loadNibNamed:@"EmptyAlbum" owner:nil options:nil] firstObject];
        self.frame = frame;
        self.emptyBtn.layer.cornerRadius = 8;
        self.emptySubTitle.textColor = [UIColor colorWithRed:60 green:60 blue:67 alpha:1];
    }

          return self;
}

@end
