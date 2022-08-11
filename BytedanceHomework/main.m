//
//  main.m
//  BytedanceHomework
//
//  Created by T D on 2022/8/10.
//

#import <Foundation/Foundation.h>
#import "Task3.h"
#import "Task1.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        

#pragma mark - 任务二
        
        // 不使用property 手动创建存取器
        Person* person = [[Person alloc]initWithName:@"小明" age:18];
        [person print];
        person->name = @"小红";
        [person print];
        [person setName:@"小白"];
        [person setAge:22];
        NSLog(@"名字:%@,年龄:%ld",[person name],[person age]);
    
        
        // 使用property
        PersonProperty * personWithProperty = [PersonProperty new];
        personWithProperty.name = @"小黄";
        personWithProperty.age = 25;
        [personWithProperty print];
        
        // 等价下面的代码
        [personWithProperty setName:@"小黄"];
        [personWithProperty setAge:25];
        
        // atomic 线程不安全
        [personWithProperty increase];
        
        

        
#pragma mark - 任务三
//        Task3 * task = [Task3 new];
//
//        NSArray * array = @[@5,@4,@3,@2,@1];
//
//
//        NSMutableArray *quickSortedArray = [NSMutableArray arrayWithArray:array];
//        NSMutableArray *heapSortedArray = [NSMutableArray arrayWithArray:array];
//
//        NSMutableArray* selectionSortedArray = [task selectionSort:array];
//
//        [task quickSort:quickSortedArray l:0 r:quickSortedArray.count-1];
//        [task heapSort:heapSortedArray];
//        NSLog(@"原始数组:%@",array);
//        NSLog(@"选择排序结果:%@",selectionSortedArray);
//        NSLog(@"快速排序结果:%@",quickSortedArray);
//        NSLog(@"堆排序排序结果:%@",heapSortedArray);
      
        
    }
    return 0;
}
