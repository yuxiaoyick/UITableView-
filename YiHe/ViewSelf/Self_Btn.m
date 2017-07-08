//
//  Self_Btn.m
//  YiHe
//
//  Created by Admin on 2017/7/4.
//  Copyright © 2017年 YiHe. All rights reserved.
//

#import "Self_Btn.h"

@implementation Self_Btn

-(void)awakeFromNib{
    [super awakeFromNib];
    
    
    [self creatView];
}

-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self creatView];
    }
    return self;
}

-(void)creatView{
    
    self.view_top.backgroundColor = [UIColor blueColor];
    [self addSubview:self.view_top];
    [self.view_top mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self);
        make.right.equalTo(self);
        make.top.equalTo(self);
        make.height.mas_equalTo(5);
        
    }];
    
    [self addTarget:self action:@selector(clickBtn) forControlEvents:UIControlEventTouchUpInside];
}

-(void)clickBtn{
    if (self.selected) {
        [self.view_top mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self);
            make.right.equalTo(self);
            make.top.equalTo(self);
            make.height.equalTo(self);
            
        }];
    }else{
        [self.view_top mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self);
            make.right.equalTo(self);
            make.top.equalTo(self);
            make.height.mas_equalTo(5);
            
        }];
    }
    
}


-(UIView *)view_top{
    if (!_view_top) {
        _view_top = [[UIView alloc] init];
    }
    return _view_top;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
