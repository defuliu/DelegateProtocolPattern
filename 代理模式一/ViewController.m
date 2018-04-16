//
//  ViewController.m
//  代理模式一
//
//  Created by 刘德福 on 2018/4/16.
//  Copyright © 2018年 Dreams. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "PersonProtocol.h"
#import "Model.h"

@interface ViewController ()<PersonDelegate>
@property (nonatomic, assign)NSInteger age;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Person *p = [[Person alloc] init];
    p.delegate = self;
    [p run: 50];
    
    Model *mode = [Model new];
    id <PersonProtocol> object = mode;
    [self testData:object];
    
}

- (void)personRun:(Person *)person speeds:(NSInteger)speeds
{
    NSLog(@"speeds====:%ld",speeds);
}



- (void)testData:(id<PersonProtocol>)model
{
    self.age  = [model accpetSpeeds];
    NSLog(@"self.age ===:%ld",self.age);
}

@end
