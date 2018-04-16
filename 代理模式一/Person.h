//
//  Person.h
//  代理模式一
//
//  Created by 刘德福 on 2018/4/16.
//  Copyright © 2018年 Dreams. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Person;

@protocol PersonDelegate <NSObject>

- (void)personRun:(Person *)person speeds:(NSInteger)speeds;
@end

@interface Person : NSObject

@property (nonatomic, weak)id <PersonDelegate>delegate;

- (void)run:(NSInteger)speeds;

@end
