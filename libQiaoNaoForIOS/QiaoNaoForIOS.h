//
//  QiaoNaoForIOS.h
//  QiaoNaoForIOS
//
//  Version 1.0
//
//  Created by 阿凡树 QQ：729397005 on 14-7-31.
//  Copyright (c) 2014年 http://blog.afantree.com/ . All rights reserved.
//
// 由网页版改为iOS版
// 参考：http://bbs.qiannao.com/posts/list/36172/570549.html

#import <Foundation/Foundation.h>

@interface QiaoNaoForIOS : NSObject
/**
 只有一个方法，完成图片向千脑的服务器
 @param imageData   因为jpg,png等图片格式的存在，这里为了统一，所以传Data类型
 @param qianNaoID   向哪一个千脑ID下面发送
 @param name        图片的名字，默认是image
 @returns           图片的外链地址
 */
+ (NSString*)sendImageData:(NSData*)imageData toQianNaoID:(NSString*)qianNaoID withImageName:(NSString*)name;

@end
