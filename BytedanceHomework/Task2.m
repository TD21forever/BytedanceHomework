//
//  Task2.m
//  BytedanceHomework
//
//  Created by T D on 2022/8/12.
//

#import "Task2.h"

@implementation Task2


- (void)copyForImmutable{
    
    NSString * s1 = @"hello world";
    NSLog(@"原始字符串的地址%p",s1);
    NSString * s2 = [s1 copy];
    NSLog(@"copy字符串的地址%p",s2);
    NSString * s3 = [s1 mutableCopy];
    NSLog(@"mutableCopy的字符串地址%p",s3);
    
}

- (void)copyForMutable{
    NSMutableString * s1 = [NSMutableString stringWithString:@"hello world"];
    NSLog(@"原始字符串的地址%p",s1);
    NSMutableString * s2 = [s1 copy];
    NSLog(@"copy字符串的地址%p",s2);
    NSMutableString * s3 = [s1 mutableCopy];
    NSLog(@"mutableCopy的字符串地址%p",s3);
}

- (void)testForCopyAndMutableCopy{
    NSMutableArray* array = [NSMutableArray arrayWithObject:@"a"];
    NSArray* copyArray = [array copy];
    NSMutableArray* mutablyCopyArray = [array mutableCopy];
    NSArray* pointerArray = array;
    array[0] = @"Change origin array";
    NSLog(@"copyArray:%@;mutableCopyArray:%@;pointerArray:%@",copyArray,mutablyCopyArray,pointerArray);
    
}


- (void)copyForMutableArray{
    
    NSMutableArray * originMutableArray = [NSMutableArray arrayWithArray:@[@[@"1",@"2"]]];
    NSMutableArray * copyArray = [originMutableArray mutableCopy];
    NSLog(@"单层深拷贝");
    NSLog(@"originMutableArray:%p",originMutableArray);
    NSLog(@"copyArray:%p",copyArray);
    NSLog(@"===内层浅拷贝===");
    NSLog(@"originMutableArray[0]:%p",originMutableArray[0]);
    NSLog(@"copyArray[0]:%p",copyArray[0]);
    
}

- (void)needBlock:(int (^)(int,int))callBack{
    int result = callBack(5,10);
    NSLog(@"%d",result);
}

@end
