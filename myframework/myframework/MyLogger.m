//
//  MyLogger.m
//  myframework
//
//  Created by kimtaeho on 2021/02/10.
//

#import "MyLogger.h"

//isEnableLog은 private 로 선언할꺼다.
@interface MyLogger()
@property(nonatomic) BOOL isEnableLog;
@end

@implementation MyLogger

- (id)initWithEnableLog:(BOOL)argIsEnableLog {
    self = [super init];
    if (self) {
        self.isEnableLog = argIsEnableLog;
    }
    return self;
}

// GCD 싱글톤
+ (id) sharedInstance:(BOOL)argIsEnableLog {
    static MyLogger *_sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [[self alloc] initWithEnableLog:argIsEnableLog];
    });
    return _sharedInstance;
}

// 로그 찎자.
- (void) printMyLog:(NSString *)argLogText {
    if (_isEnableLog) NSLog(@"Log your name: %@", argLogText);
}
@end
