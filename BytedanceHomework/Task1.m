//
//  Task2.m
//  BytedanceHomework
//
//  Created by T D on 2022/8/11.
//

#import "Task1.h"

@implementation Task1

@end

@implementation Person

- (instancetype)initWithName:(NSString*)name age:(NSInteger)age{
    if(self = [super init]){
        self->name = name;
        self->age = age;
    }
    return self;
}

- (void)setAge:(NSInteger)age{
    self->age = age;
}

- (NSInteger)age{
    return self->age;
}
- (void)setName:(NSString *)name{
    self->name = name;
}

- (NSString *)name{
    return self->name;
}

- (void)print{
    NSLog(@"名字:%@ 年龄:%ld",self->name,self->age);
}

@end

@implementation PersonProperty

@synthesize name = 我是个奇怪的名;

- (instancetype)initWithName:(NSString*)name age:(NSInteger)age{
    if(self = [super init]){
        self->_age = age;
        self->我是个奇怪的名 = name;
    }
    return self;
}

- (void)print{
    NSLog(@"名字:%@ 年龄:%ld",self.name,self.age);
}

- (void)increase{
    self.number = 0;
    for(int i = 0;i<100000;i++){
        dispatch_async(dispatch_get_global_queue(0, 0), ^{
            self.number ++;
        });
       
    }
    NSLog(@"Task%ld",self.number);
}

@end