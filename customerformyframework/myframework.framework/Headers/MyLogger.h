//
//  MyLogger.h
//  myframework
//
//  Created by kimtaeho on 2021/02/10.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MyLogger : NSObject

+ (instancetype) sharedInstance:(BOOL)argIsEnableLog; //싱글턴 할꺼다.이 프레임웍 사용자가 로그출력여부를 결정하게 할꺼다.
- (void) printMyLog:(NSString *)argLogText; // 로그 찍을꺼다..

@end

NS_ASSUME_NONNULL_END
