//
//  Task2.h
//  BytedanceHomework
//
//  Created by T D on 2022/8/11.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Task1 : NSObject

@end


// 定义两个成员变量
// 手动创建存取器
@interface Person : NSObject {
    
    @public
    NSInteger age;
    NSString * name;

}

// setter
- (void)setAge:(NSInteger)age;
// getter
- (NSInteger)age;

// setter
- (void)setName:(NSString*)name;
// getter
- (NSString*)name;

- (instancetype)initWithName:(NSString*)name age:(NSInteger)age;
- (void)print;

@end


@interface PersonProperty : NSObject

@property (nonatomic,copy) NSString* name;
@property (nonatomic,assign) NSInteger age;
@property (atomic) NSInteger number;

- (instancetype)initWithName:(NSString*)name age:(NSInteger)age;
- (void)print;
- (void)increase;

@end

NS_ASSUME_NONNULL_END
