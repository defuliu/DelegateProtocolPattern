//
//  Model.m
//  代理模式一
//
//  Created by 刘德福 on 2018/4/16.
//  Copyright © 2018年 Dreams. All rights reserved.
//

#import "Model.h"
#import "PersonProtocol.h"

@interface Model ()<PersonProtocol>

@end

@implementation Model

- (NSInteger )accpetSpeeds
{
    return 100.f;
}



@end
