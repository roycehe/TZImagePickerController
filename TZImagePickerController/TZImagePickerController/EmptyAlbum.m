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
        NSBundle *xibBundle = [NSBundle bundleForClass:[self class]];
        self = [[xibBundle loadNibNamed:@"EmptyAlbum" owner:nil options:nil] firstObject];
        self.frame = frame;
        self.emptyBtn.layer.cornerRadius = 8;

    }

          return self;
}

@end
