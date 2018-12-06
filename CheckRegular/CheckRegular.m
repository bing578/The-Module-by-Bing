//
//  CheckRegular.m
//  allqa
//
//  Created by bing on 2018/11/9.
//  Copyright © 2018 mac. All rights reserved.
//

#import "CheckRegular.h"

@implementation CheckRegular
+(CheckRegular*)checkRegular{
    static CheckRegular *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[CheckRegular alloc]init];
    });
    return instance;
}
-(BOOL)isMatchWithString:(NSString *)string byPattern:(NSString *)pattern{
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
    BOOL isMatch = [pred evaluateWithObject:string];
    return isMatch;
}
#pragma 正则匹配用户昵称:匹配昵称[中文开始,中英文字符,共8位]
+ (BOOL) checkNickname:(NSString *)nickname
{
//    NSString *nicknameRegex = @"^[\u4e00-\u9fa5]{1,8}$";
//    NSString *nicknameRegex = @"^[\u4E00-\u9FA5A-Za-z]{1,8}$";
    NSString *nicknameRegex = @"^[\u4E00-\u9FA5A-Za-z]{1}[\u4E00-\u9FA5A-Za-z1-9]{0,7}$";
    NSPredicate *passWordPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",nicknameRegex];
    return [passWordPredicate evaluateWithObject:nickname];
}

#pragma 正则匹配用户姓名:匹配中文姓名
+ (BOOL)checkUserName : (NSString *) userName
{
    
    NSString *pattern = @"^[\u4E00-\u9FA5A-Za-z\\s]+(·[\u4E00-\u9FA5A-Za-z]+)*$";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
    BOOL isMatch = [pred evaluateWithObject:userName];
    return isMatch;
}

#pragma 正则匹配手机号
+ (BOOL)checkTelNumber:(NSString *) telNumber
{
    NSString *pattern = @"^(13[0-9]|14[579]|15[0-3,5-9]|16[6]|17[0135678]|18[0-9]|19[89])\\d{8}$";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
    BOOL isMatch = [pred evaluateWithObject:telNumber];
    return isMatch;
}


#pragma 正则匹配用户密码6-18位数字和字母组合
+ (BOOL)checkPassword:(NSString *) password
{
    NSString *pattern = @"^(?![0-9]+$)(?![a-zA-Z]+$)[a-zA-Z0-9]{6,18}";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
    BOOL isMatch = [pred evaluateWithObject:password];
    return isMatch;
    
}



#pragma 正则匹配用户身份证号15或18位
+ (BOOL)checkUserIdCard: (NSString *) idCard
{
    NSString *pattern = @"(^[0-9]{15}$)|([0-9]{17}([0-9]|X)$)";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
    BOOL isMatch = [pred evaluateWithObject:idCard];
    return isMatch;
}

#pragma 正则匹配用户邮箱
+ (BOOL)checkUsereEmail: (NSString *) email
{
    NSString *pattern = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
    BOOL isMatch = [pred evaluateWithObject:email];
    return isMatch;
}
@end
