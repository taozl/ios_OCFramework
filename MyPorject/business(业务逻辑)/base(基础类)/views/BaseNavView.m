//
//  BaseNavView.m
//  MyPorject
//
//  Created by Yuki on 2021/1/22.
//


#import "BaseNavView.h"
#import <objc/runtime.h>

@interface BaseNavView ()
/**  返回按钮  **/
@property (nonatomic , strong)UIButton  *backBtn;
/**  标题  **/
@property (nonatomic , strong)UILabel  *titleLb;

/**  底部横线  **/
@property (nonatomic , strong)UIView  *bottomLine;

@end
@implementation BaseNavView
///创建界面
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        ///设置frame
        self.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIApplication sharedApplication].statusBarFrame.size.height + 44.0);
        
        self.backgroundColor = UIColor.whiteColor;//颜色
        ///设置界面
        [self _setupView];
    }
    return self;
}

#pragma mark - --------- 创建界面  ---------
- (void)_setupView{
    
    ///添加标题
    [self addSubview:self.titleLb];
    ///布局
    [self.titleLb mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(0);
        make.height.mas_equalTo(24);
        make.bottom.mas_equalTo(-9);
        make.width.mas_lessThanOrEqualTo(ScreenWith() - 100);
    }];
    
    
    ///添加返回按钮
    [self addSubview:self.backBtn];
    ///布局
    [self.backBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(44, 44));
        make.centerY.mas_equalTo(self.titleLb);
        make.left.mas_equalTo(18);
    }];
    
    
    ///底部灰色线条
    [self addSubview:self.bottomLine];
    ///布局
    [self.bottomLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.bottom.mas_equalTo(0);
        make.height.mas_equalTo(0.5);
    }];
    
    
    ///返回按钮添加点击事件
    __weak typeof(self)weakSelf = self;
    self.backBtn.clickCurrentBtnBlock = ^(UIButton * _Nonnull currentBtn) {
        if (weakSelf.backBtnClickBlock) {
            weakSelf.backBtnClickBlock();
        }
    };
    
}

#pragma mark - --------- set方法  ---------
///是否显示横线
- (void)setShowBottomLine:(BOOL)showBottomLine{
    _showBottomLine = showBottomLine;
    self.bottomLine.hidden = !showBottomLine;
}

///线条颜色
- (void)setBottomLineColor:(UIColor *)bottomLineColor{
    _bottomLineColor = bottomLineColor;
    self.bottomLine.backgroundColor = bottomLineColor;
}

///线条高度
- (void)setBottomLineHeight:(CGFloat)bottomLineHeight{
    _bottomLineHeight = bottomLineHeight;
    [self.bottomLine mas_updateConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(bottomLineHeight);
    }];
}

///设置标题
- (void)setTitleStr:(NSString *)titleStr{
    _titleStr = titleStr;
    self.titleLb.text = titleStr;
}


///设置返回按钮标题
- (void)setBackBtnTitle:(NSString *)backBtnTitle{
    _backBtnTitle = backBtnTitle;
    self.backBtn.hidden = NO;
    self.backBtn.titleLabel.font = [UIFont systemFontOfSize:15 weight:UIFontWeightRegular];
    [self.backBtn setTitleColor:UIColor.blackColor forState:UIControlStateNormal];
    [self.backBtn setTitle:backBtnTitle forState:UIControlStateNormal];
}

///设置返回按图片
- (void)setBackBtnImg:(UIImage *)backBtnImg{
    _backBtnImg = backBtnImg;
    self.backBtn.hidden = NO;
    [self.backBtn setImage:backBtnImg forState:UIControlStateNormal];
}

///自定义返回事件
- (void)setBackBtnClickBlock:(dispatch_block_t)backBtnClickBlock{
    objc_setAssociatedObject(self, @selector(backBtnClickBlock), backBtnClickBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
    ///执行任务
    self.backBtn.clickCurrentBtnBlock = ^(UIButton * _Nonnull currentBtn) {
        backBtnClickBlock();
    };
}
- (dispatch_block_t)backBtnClickBlock{
    return objc_getAssociatedObject(self, _cmd);
}



#pragma mark - --------- lazy  ---------
///返回按钮
- (UIButton *)backBtn{
    if (!_backBtn) {
        _backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _backBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        _backBtn.hidden = YES;
        _backBtn.showsTouchWhenHighlighted = NO;
    }
    return _backBtn;
}

///标题
- (UILabel *)titleLb{
    if (!_titleLb) {
        _titleLb = [[UILabel alloc]init];
        _titleLb.font = [UIFont systemFontOfSize:17 weight:UIFontWeightMedium];
        _titleLb.textColor = UIColor.blackColor;
        _titleLb.lineBreakMode = NSLineBreakByTruncatingMiddle;
    }
    return _titleLb;
}


///底部横线
- (UIView *)bottomLine{
    if (!_bottomLine) {
        _bottomLine = [[UIView alloc]init];
        _bottomLine.backgroundColor = ColorHex(0xf3f3f3, 1);//默认灰色横线
        _bottomLine.hidden = NO;///默认显示横线
    }
    return _bottomLine;
}
@end

