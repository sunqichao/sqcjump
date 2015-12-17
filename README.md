# sqcjump
工具类：提供三部分功能。

第一 .  在app内打电话（一种是弹提示，一种是直接打）。

第二 . 打开外部浏览器。

第三 . 打开设置中的功能（调节声音，wifi，相机，软件更新）

typedef enum : NSInteger{
    //打开设置中的图片设置
    SQCJumpTophotos,
    //打开设置中的语音助手
    SQCJumpToSiri,
    //打开设置中的软件更新
    SQCJumpToSoftWareUpdate,
    //打开设置中的wifi设置页
    SQCJumpToWiFi,
    //打开设置中的声音设置页
    SQCJumpToSounds
}SQCJumpType;
@interface SQCJumpOut : NSObject


+ (BOOL)skipToOSDetailSet:(SQCJumpType)type;

/**
 *  打电话 两种方式，一种是弹出一个alert提示是否要打电话，一种是直接打电话
 *
 *  @param phone    电话号码
 *  @param isAppear 是否弹出alert
 *
 *  @return
 */
+ (BOOL)callWithNumber:(NSString *)phone appearAlert:(BOOL)isAppear;


/**
 *  打开外部浏览器
 *
 *  @param URL 地址
 *
 *  @return  
 */
+ (BOOL)openWebSite:(NSString *)URL;

@end
