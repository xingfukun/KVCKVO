//
//  KVCObject.m
//  KVCKVO
//
//  Created by joymain on 15/9/15.
//  Copyright (c) 2015年 邢富琨. All rights reserved.
//

#import "KVCObject.h"
#import <objc/runtime.h>
#import <objc/objc.h>

@implementation KVCObject

-(id)init
{
    self = [super init];
    if (self) {
        
        testLabel = [[UILabel alloc] init];
    }
    return self;
}

-(void)setValue:(id)value forUndefinedKey:(NSString *)key
{
    
//    //通过Runtime机制获取此类是否存在名字为key的变量
//    UInt32 count;
//    Ivar *Ivars = class_copyIvarList([self class], &count);
//    for(int i = 0;i < count;i++)
//    {
//        if([key UTF8String] == ivar_getName(Ivars[i]))
//        {
//            [self setValue:value forUndefinedKey:key];
//            [super setValue:value forUndefinedKey:key];
//        }
//    }
    
}


@end
