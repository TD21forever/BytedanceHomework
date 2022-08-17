//
//  Task2.h
//  BytedanceHomework
//
//  Created by T D on 2022/8/12.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Task2 : NSObject

- (void)copyForImmutable;

- (void)copyForMutable;

- (void)testForCopyAndMutableCopy;

- (void)copyForMutableArray;

- (void)needBlock:(int (^)(int,int))callBack;


@end

NS_ASSUME_NONNULL_END
