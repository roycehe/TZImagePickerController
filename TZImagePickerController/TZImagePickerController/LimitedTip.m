//
//  LimitedTip.m
//  freebox
//
//  Created by gys on 2021/6/21.
//

#import "LimitedTip.h"
#import "NSBundle+TZImagePicker.h"
@implementation LimitedTip

-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        CGFloat kWidth =  [UIScreen mainScreen].bounds.size.width;
        UILabel *label = [[UILabel alloc] init];
        label.font = [UIFont systemFontOfSize:14];
        label.frame = CGRectMake(16,8,kWidth - 16*2,40);
        label.textColor = [UIColor colorWithRed:60/255.0 green:60/255.0 blue:67/255.0 alpha:0.8];
        NSDictionary *infoDictionary = [[NSBundle mainBundle] infoDictionary];
        NSString *appName = [infoDictionary objectForKey:@"CFBundleDisplayName"];
        //@"因未授予%@访问所有照片权限，此列表只能显示部分照片。"
        label.text = [NSString stringWithFormat:[NSBundle tz_localizedStringForKey:@"Because %@ has not been granted access to all photos, this list only shows a selection of photos."], appName];
        label.numberOfLines = 0;
        [self addSubview:label];
        _contentLable = label;
        
//        UIColor *btnColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:1.0];
        _pickBtn= [UIButton buttonWithType:(UIButtonTypeSystem)];
        [_pickBtn setTitle:[NSBundle tz_localizedStringForKey:@"Select more photos"] forState:(UIControlStateNormal)];
        _pickBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _pickBtn.frame = CGRectMake(16, 48+5, 85, 22);
        [_pickBtn sizeToFit];
        [self addSubview:_pickBtn];
        
        _settingBtn = [UIButton buttonWithType:(UIButtonTypeSystem)];
        [_settingBtn setTitle:[NSBundle tz_localizedStringForKey:@"Allow access to full photos"] forState:(UIControlStateNormal)];
        _settingBtn.frame = CGRectMake(16 + 85 + 21, 48+5, 85, 22);
        _settingBtn.titleLabel.font =[UIFont systemFontOfSize:14];
        [_settingBtn sizeToFit];
        [self addSubview:_settingBtn];
        self.frame = frame;
        self.backgroundColor = [UIColor colorWithRed:242/255.0 green:242/255.0 blue:247/255.0 alpha:1.0];
        
    }

          return self;
}

@end
