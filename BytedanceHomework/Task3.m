//
//  Task3.m
//  BytedanceHomework
//
//  Created by T D on 2022/8/10.
//

#import "Task3.h"

@implementation Task3

- (NSMutableArray*)selectionSort:(NSArray*)array{
    NSMutableArray* sortedArray = [NSMutableArray arrayWithArray:array];
    for(int i = 0;i < sortedArray.count;i++){
        int min_index = i;
        for(int j = i+1;j < sortedArray.count;j++){
            if([sortedArray[j] integerValue] < [sortedArray[min_index] integerValue]){
                min_index = j;
            }
        }
        if(min_index != i){
            [sortedArray exchangeObjectAtIndex:i withObjectAtIndex:min_index];
        }
    }
    return sortedArray;
}

- (NSInteger)partition:(NSMutableArray*)A l:(NSInteger)l r:(NSInteger)r{
    
    NSInteger piviot = [A[r] integerValue];
    NSInteger i = l - 1;
    
    for(NSInteger j = l; j < r; j++){
        if([A[j] integerValue] < piviot){
            i ++;
            [A exchangeObjectAtIndex:i withObjectAtIndex:j];
        }
    }
    [A exchangeObjectAtIndex:i+1 withObjectAtIndex:r];
    return i+1;
    
    
    
}

- (void)quickSort:(NSMutableArray*)array l:(NSInteger)l r:(NSInteger)r{
    if(l <= r){
        NSInteger mid = [self partition:array l:l r:r];
        [self quickSort:array l:l r:mid-1];
        [self quickSort:array l:mid+1 r:r];
    }
}

- (void)heapfiy:(NSMutableArray*)array n:(NSInteger) n index:(NSInteger)  index{
    if(index >= n){
        return;
    }
    NSInteger left_index = index * 2 + 1;
    NSInteger rignt_index = index * 2 + 2;
    NSInteger max_index = index;
    if(left_index < n && [array[left_index] integerValue] > [array[max_index] integerValue]){
        max_index = left_index;
        
    }
    if(rignt_index < n && [array[rignt_index] integerValue] > [array[max_index] integerValue]){
        max_index = rignt_index;
    }
   
    if(max_index != index){
        [array exchangeObjectAtIndex:index withObjectAtIndex:max_index];
        [self heapfiy:array n:n index:max_index];
    }
    
}

- (void)buildHeap:(NSMutableArray*)array n:(NSInteger)n{
    NSInteger last_index = n - 1;
    NSInteger parent = (last_index - 1) / 2;
    for(NSInteger i = parent;i>=0;i--){
        [self heapfiy:array n:n index:i];
    }
}

- (void)heapSort:(NSMutableArray*)array {
    NSInteger n = [array count];
    [self buildHeap:array n:n];
    for(NSInteger i = n - 1; i >= 0; i--){
        [array exchangeObjectAtIndex:0 withObjectAtIndex:i];
        [self heapfiy:array n:i index:0];
    }
}

@end
