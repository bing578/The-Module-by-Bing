//
//  CheckRegular.h
//  allqa
//
//  Created by bing on 2018/11/9.
//  Copyright © 2018 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CheckRegular : NSObject
+(CheckRegular*)checkRegular;
//正则匹配用户昵称:匹配昵称
+ (BOOL) checkNickname:(NSString *)nickname;
//正则匹配用户姓名:匹配中文姓名
+ (BOOL)checkUserName : (NSString *) userName;
//正则匹配手机号
+ (BOOL)checkTelNumber:(NSString *) telNumber;
//正则匹配用户密码6-18位数字和字母组合
+ (BOOL)checkUserIdCard: (NSString *) idCard;
//正则匹配用户身份证号15或18位
+ (BOOL)checkPassword:(NSString *) password;
//正则匹配用户邮箱
+ (BOOL)checkUsereEmail: (NSString *) email;

@end

NS_ASSUME_NONNULL_END
