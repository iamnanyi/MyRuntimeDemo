//
//  MyClass.m
//  MyRuntimeDemo
//
//  Created by Jasonzb on 2020/2/8.
//  Copyright © 2020 zhaobin. All rights reserved.
//

#import "MyClass.h"

@interface MyClass() {
	NSInteger _instance1;
	NSString *_instance2;
}

@property(nonatomic, assign) NSUInteger integer;

- (void)method3WithArg1:(NSInteger)arg1 arg2:(NSString *)arg2;

- (void)submethod1;

@end

@implementation MyClass

+ (void)classMethod1 {
	
}

- (void)method1 {
	NSLog(@"call method method1");
}

- (void)method2 {
	
}

- (void)method3WithArg1:(NSInteger)arg1 arg2:(NSString *)arg2 {
	NSLog(@"arg1: %ld, arg2: %@", arg1, arg2);
}

- (void)submethod1 {
    NSLog(@"run sub method 1");
}

@end
