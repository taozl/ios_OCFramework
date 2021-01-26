//
//  HomeController.m
//  MyPorject
//
//  Created by Tzl on 2021/1/19.
//

#import "HomeController.h"
#import "HomeChildController.h"
#import "BaseNavController.h"
@interface HomeController ()<ZLScrollViewDelegate>
/**  滑动视图  **/
@property (nonatomic , strong)UIScrollView *scr;
@end

@implementation HomeController

///tabbar中的主界面要显示tabbar，不显示tabbar的基类已处理
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    self.showTababr = YES;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    ///创建界面
    [self _setupView];
    self.navigationTitleStr = @"首页";
    
}

/// 创建界面
- (void)_setupView{
    
    
    UILabel *lb = [UILabel new];
    lb.attributedText = [self resetAttriWithStr:@"美国总统就职典礼#20号在华盛顿举行，拜登宣誓就任第46任美国总统，而他的副手哈里斯也宣誓成为了美国史上首任女副总统。美国总统就职典礼在首都华盛顿国会山举行，首先由联邦最高法院首位拉丁裔女法官索托马约尔为副总统哈里斯监誓。哈里斯之后便轮到拜登，在首席大法官罗伯茨监誓下，宣誓成为第46任美国总统。美国卸任总统特朗普，并没有出席这次就职典礼。而传出与特朗普，在选举人团争议中有分歧的卸任副总统彭斯则是座上客。此外，美国3位前总统，包括克林顿、小布什与奥巴马也有出席。至于未有到场的卡特，则在早前向拜登送上了祝贺。（凤凰卫视李建安 综合报道)美国总统就职典礼#20号在华盛顿举行，拜登宣誓就任第46任美国总统，而他的副手哈里斯也宣誓成为了美国史上首任女副总统。美国总统就职典礼在首都华盛顿国会山举行，首先由联邦最高法院首位拉丁裔女法官索托马约尔为副总统哈里斯监誓。哈里斯之后便轮到拜登，在首席大法官罗伯茨监誓下，宣誓成为第46任美国总统。美国卸任总统特朗普，并没有出席这次就职典礼。而传出与特朗普，在选举人团争议中有分歧的卸任副总统彭斯则是座上客。此外，美国3位前总统，包括克林顿、小布什与奥巴马也有出席。至于未有到场的卡特，则在早前向拜登送上了祝贺。（凤凰卫视李建安 综合报道美国总统就职典礼#20号在华盛顿举行，拜登宣誓就任第46任美国总统，而他的副手哈里斯也宣誓成为了美国史上首任女副总统。美国总统就职典礼在首都华盛顿国会山举行，首先由联邦最高法院首位拉丁裔女法官索托马约尔为副总统哈里斯监誓。哈里斯之后便轮到拜登，在首席大法官罗伯茨监誓下，宣誓成为第46任美国总统。美国卸任总统特朗普，并没有出席这次就职典礼。而传出与特朗普，在选举人团争议中有分歧的卸任副总统彭斯则是座上客。此外，美国3位前总统，包括克林顿、小布什与奥巴马也有出席。至于未有到场的卡特，则在早前向拜登送上了祝贺。（凤凰卫视李建安 综合报道美国总统就职典礼#20号在华盛顿举行，拜登宣誓就任第46任美国总统，而他的副手哈里斯也宣誓成为了美国史上首任女副总统。美国总统就职典礼在首都华盛顿国会山举行，首先由联邦最高法院首位拉丁裔女法官索托马约尔为副总统哈里斯监誓。哈里斯之后便轮到拜登，在首席大法官罗伯茨监誓下，宣誓成为第46任美国总统。美国卸任总统特朗普，并没有出席这次就职典礼。而传出与特朗普，在选举人团争议中有分歧的卸任副总统彭斯则是座上客。此外，美国3位前总统，包括克林顿、小布什与奥巴马也有出席。至于未有到场的卡特，则在早前向拜登送上了祝贺。（凤凰卫视李建安 综合报道)美国总统就职典礼#20号在华盛顿举行，拜登宣誓就任第46任美国总统，而他的副手哈里斯也宣誓成为了美国史上首任女副总统。美国总统就职典礼在首都华盛顿国会山举行，首先由联邦最高法院首位拉丁裔女法官索托马约尔为副总统哈里斯监誓。哈里斯之后便轮到拜登，在首席大法官罗伯茨监誓下，宣誓成为第46任美国总统。美国卸任总统特朗普，并没有出席这次就职典礼。而传出与特朗普，在选举人团争议中有分歧的卸任副总统彭斯则是座上客。此外，美国3位前总统，包括克林顿、小布什与奥巴马也有出席。至于未有到场的卡特，则在早前向拜登送上了祝贺。（凤凰卫视李建安 综合报道美国总统就职典礼#20号在华盛顿举行，拜登宣誓就任第46任美国总统，而他的副手哈里斯也宣誓成为了美国史上首任女副总统。美国总统就职典礼在首都华盛顿国会山举行，首先由联邦最高法院首位拉丁裔女法官索托马约尔为副总统哈里斯监誓。哈里斯之后便轮到拜登，在首席大法官罗伯茨监誓下，宣誓成为第46任美国总统。美国卸任总统特朗普，并没有出席这次就职典礼。而传出与特朗普，在选举人团争议中有分歧的卸任副总统彭斯则是座上客。此外，美国3位前总统，包括克林顿、小布什与奥巴马也有出席。至于未有到场的卡特，则在早前向拜登送上了祝贺。（凤凰卫视李建安 综合报道美国总统就职典礼#20号在华盛顿举行，拜登宣誓就任第46任美国总统，而他的副手哈里斯也宣誓成为了美国史上首任女副总统。美国总统就职典礼在首都华盛顿国会山举行，首先由联邦最高法院首位拉丁裔女法官索托马约尔为副总统哈里斯监誓。哈里斯之后便轮到拜登，在首席大法官罗伯茨监誓下，宣誓成为第46任美国总统。美国卸任总统特朗普，并没有出席这次就职典礼。而传出与特朗普，在选举人团争议中有分歧的卸任副总统彭斯则是座上客。此外，美国3位前总统，包括克林顿、小布什与奥巴马也有出席。至于未有到场的卡特，则在早前向拜登送上了祝贺。（凤凰卫视李建安 综合报道)美国总统就职典礼#20号在华盛顿举行，拜登宣誓就任第46任美国总统，而他的副手哈里斯也宣誓成为了美国史上首任女副总统。美国总统就职典礼在首都华盛顿国会山举行，首先由联邦最高法院首位拉丁裔女法官索托马约尔为副总统哈里斯监誓。哈里斯之后便轮到拜登，在首席大法官罗伯茨监誓下，宣誓成为第46任美国总统。美国卸任总统特朗普，并没有出席这次就职典礼。而传出与特朗普，在选举人团争议中有分歧的卸任副总统彭斯则是座上客。此外，美国3位前总统，包括克林顿、小布什与奥巴马也有出席。至于未有到场的卡特，则在早前向拜登送上了祝贺。（凤凰卫视李建安 综合报道美国总统就职典礼#20号在华盛顿举行，拜登宣誓就任第46任美国总统，而他的副手哈里斯也宣誓成为了美国史上首任女副总统。美国总统就职典礼在首都华盛顿国会山举行，首先由联邦最高法院首位拉丁裔女法官索托马约尔为副总统哈里斯监誓。哈里斯之后便轮到拜登，在首席大法官罗伯茨监誓下，宣誓成为第46任美国总统。美国卸任总统特朗普，并没有出席这次就职典礼。而传出与特朗普，在选举人团争议中有分歧的卸任副总统彭斯则是座上客。此外，美国3位前总统，包括克林顿、小布什与奥巴马也有出席。至于未有到场的卡特，则在早前向拜登送上了祝贺。（凤凰卫视李建安 综合报道美国总统就职典礼#20号在华盛顿举行，拜登宣誓就任第46任美国总统，而他的副手哈里斯也宣誓成为了美国史上首任女副总统。美国总统就职典礼在首都华盛顿国会山举行，首先由联邦最高法院首位拉丁裔女法官索托马约尔为副总统哈里斯监誓。哈里斯之后便轮到拜登，在首席大法官罗伯茨监誓下，宣誓成为第46任美国总统。美国卸任总统特朗普，并没有出席这次就职典礼。而传出与特朗普，在选举人团争议中有分歧的卸任副总统彭斯则是座上客。此外，美国3位前总统，包括克林顿、小布什与奥巴马也有出席。至于未有到场的卡特，则在早前向拜登送上了祝贺。（凤凰卫视李建安 综合报道)美国总统就职典礼#20号在华盛顿举行，拜登宣誓就任第46任美国总统，而他的副手哈里斯也宣誓成为了美国史上首任女副总统。美国总统就职典礼在首都华盛顿国会山举行，首先由联邦最高法院首位拉丁裔女法官索托马约尔为副总统哈里斯监誓。哈里斯之后便轮到拜登，在首席大法官罗伯茨监誓下，宣誓成为第46任美国总统。美国卸任总统特朗普，并没有出席这次就职典礼。而传出与特朗普，在选举人团争议中有分歧的卸任副总统彭斯则是座上客。此外，美国3位前总统，包括克林顿、小布什与奥巴马也有出席。至于未有到场的卡特，则在早前向拜登送上了祝贺。（凤凰卫视李建安 综合报道美国总统就职典礼#20号在华盛顿举行，拜登宣誓就任第46任美国总统，而他的副手哈里斯也宣誓成为了美国史上首任女副总统。美国总统就职典礼在首都华盛顿国会山举行，首先由联邦最高法院首位拉丁裔女法官索托马约尔为副总统哈里斯监誓。哈里斯之后便轮到拜登，在首席大法官罗伯茨监誓下，宣誓成为第46任美国总统。美国卸任总统特朗普，并没有出席这次就职典礼。而传出与特朗普，在选举人团争议中有分歧的卸任副总统彭斯则是座上客。此外，美国3位前总统，包括克林顿、小布什与奥巴马也有出席。至于未有到场的卡特，则在早前向拜登送上了祝贺。（凤凰卫视李建安 综合报道"];
    lb.backgroundColor = ColorHex(0xffbb00, 1);
    lb.numberOfLines = 0;
    lb.frame = CGRectMake(10, 0, ScreenWith() - 20, [lb getLabel_textOrAttriStrMaxHeightWithMaxWidth:ScreenWith() - 20]);
    
    ///滑动视图
    self.scr = [[UIScrollView alloc]init];
    self.scr.zl_delegate = self;
    self.scr.contentSize = CGSizeMake(ScreenWith(), [lb getLabel_textOrAttriStrMaxHeightWithMaxWidth:ScreenWith() - 20]);
    [self.view addSubview:self.scr];
    [self.scr mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.bottom.mas_equalTo(0);
        make.top.mas_equalTo(NavgitionHeight());
    }];
    [self.scr addSubview:lb];
    
    __weak typeof(self)weakSelf = self;
    lb.clickLableBlock = ^(UILabel * _Nonnull currentLabel) {
        HomeChildController *vc = [[HomeChildController alloc]init];
        vc.hidesBottomBarWhenPushed = YES;
        [weakSelf.navigationController pushViewController:vc animated:YES];
    };
}


///构造富文本
- (NSMutableAttributedString *)resetAttriWithStr:(NSString *)str{
    NSMutableAttributedString *attri = [[NSMutableAttributedString alloc]initWithString:str];
    NSRange range = NSMakeRange(0, str.length);
    [attri addAttribute:NSFontAttributeName value:HeavyTitleFont(17) range:range];
    [attri addAttribute:NSForegroundColorAttributeName value:ColorHex(0x000000, 1) range:range];
    NSMutableParagraphStyle *ps = [[NSMutableParagraphStyle alloc]init];
    ps.lineSpacing = 15;
    ps.lineBreakMode = NSLineBreakByTruncatingTail;
    [attri addAttribute:NSParagraphStyleAttributeName value:ps range:range];
    return attri;
    
}
@end
