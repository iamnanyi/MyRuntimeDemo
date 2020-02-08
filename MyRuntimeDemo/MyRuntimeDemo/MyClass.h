//
//  MyClass.h
//  MyRuntimeDemo
//
//  Created by Jasonzb on 2020/2/8.
//  Copyright © 2020 zhaobin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MyClass : NSObject

@property(nonatomic, strong) NSArray *array;

@property(nonatomic, copy) NSString *string;

- (void)method1;

- (void)method2;

+ (void)classMethod1;

@end

NS_ASSUME_NONNULL_END
