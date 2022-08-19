//
//  main.m
//  BytedanceHomework
//
//  Created by T D on 2022/8/10.
//

#import <Foundation/Foundation.h>
#import "Task3.h"
#import "Task2.h"
#import "Task1.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        

#pragma mark - 任务一
        
        // 不使用property 手动创建存取器
//        Person* person = [[Person alloc]initWithName:@"小明" age:18];
//        [person print];
//        person->name = @"小红";
//        [person print];
//        [person setName:@"小白"];
//        [person setAge:22];
//        NSLog(@"名字:%@,年龄:%ld",[person name],[person age]);
    
        
        // 使用property
        PersonProperty * personWithProperty = [PersonProperty new];
        personWithProperty.name = @"小黄";
        personWithProperty.age = 25;
        [personWithProperty print];
        // 执行 @dynamic 修饰的属性
        personWithProperty.gender = @"male";
        
        
        
        
        // 等价下面的代码
//        [personWithProperty setName:@"小黄"];
//        [personWithProperty setAge:25];
        
        // atomic 线程不安全
//        [personWithProperty increase];
        
        // readonly
//        personWithProperty.money = 100;
        
        // copy 修饰可变容器
//        personWithProperty.nickName = [[NSMutableArray alloc]initWithArray:@[@"jonh",@"Tim"]];
//        [personWithProperty.nickName addObject:@"Jack"];
//        NSLog(@"nickname 有:%@",personWithProperty.nickName);
        
        // 循环引用
//        Dog* dog = [Dog new];
//        dog.owner = personWithProperty;
//        personWithProperty.dog = dog;
        
        
             
#pragma mark - 任务二
        
        Task2 * task2 = [Task2 new];
        // 不可变对象的copy和MutableCopy
//        [task2 copyForImmutable];
        // 可变对象的copy和MutableCopy
//        [task2 copyForMutable];
//        [task2 testForCopyAndMutableCopy];
        // 可变数组的单层深拷贝
//        [task2 copyForMutableArray];
        
        
        // 一个无返回值无参数的闭包
        void (^myBLock) (void) = ^void(void){
            NSLog(@"这是一个闭包");
        };
        myBLock();
        
        // 简化一下一个无返回值无参数的闭包
        // block的赋值无论是否有返回值都可以省略
        void (^myBlock2)(void) = ^{
            NSLog(@"这是一个闭包");
        };
        myBlock2();
        
        // 一个有返回值有参数的闭包
        // 入参的变量名可以省略
        int (^myBLock3)(int,int) = ^(int a,int b){
            NSLog(@"%d",a + b);
            return a + b;
        };
        myBLock3(5,10);

        // 直接把typedef放到block声明的左边
        typedef int (^MyBLock4)(int,int);
        
        MyBLock4 myBLock4 = ^(int a,int b){
            NSLog(@"%d",a+b);
            return a+b;
        };
        myBLock4(5,10);
        
        // 把block放到函数里
        [task2 needBlock:^int(int a, int b) {
            return a + b;
        }];
        
        
        
        

        
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
