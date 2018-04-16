//
//  Person.m
//  代理模式一
//
//  Created by 刘德福 on 2018/4/16.
//  Copyright © 2018年 Dreams. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)run:(NSInteger)speeds
{
    
    if (self.delegate && [self.delegate respondsToSelector:@selector(personRun:speeds:)]) {
        [self.delegate personRun:self speeds:0.5];
    }
    
}

@end
