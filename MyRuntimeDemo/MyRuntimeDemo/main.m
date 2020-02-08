//
//  main.m
//  MyRuntimeDemo
//
//  Created by Jasonzb on 2020/2/8.
//  Copyright © 2020 zhaobin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyClass.h"
#import <objc/runtime.h>

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		MyClass *myClass = [[MyClass alloc] init];
		unsigned int outCount = 0;
		Class cls = myClass.class;
		// 类名
		NSLog(@"class name: %s", class_getName(cls));
		NSLog(@"============================");
		
		// 父类
		NSLog(@"super class name: %s", class_getName(class_getSuperclass(cls)));
		NSLog(@"============================");
		
		// 是否是元类
		NSLog(@"MyClass is %@ a meta-class", (class_isMetaClass(cls) ? @"" : @"not"));
		NSLog(@"============================");
		
		Class meta_class = objc_getMetaClass(class_getName(cls));
		NSLog(@"%s's meta-class is %s", class_getName(cls), class_getName(meta_class));
	}
	return 0;
}
