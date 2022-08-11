//
//  Task3.h
//  BytedanceHomework
//
//  Created by T D on 2022/8/10.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Task3 : NSObject

- (NSMutableArray*)selectionSort:(NSArray*)array;

- (void)quickSort:(NSMutableArray*)array l:(NSInteger)l r:(NSInteger)r;

- (void)heapSort:(NSMutableArray*)array;


@end

NS_ASSUME_NONNULL_END
