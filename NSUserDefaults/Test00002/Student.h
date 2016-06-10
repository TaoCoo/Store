//
//  Student.h
//  Test00002
//
//  Created by gut on 16/6/2.
//  Copyright © 2016年 com.DSDAI. All rights reserved.
//

#import "BaseValueStorageManager.h"

@interface Student : BaseValueStorageManager

@property (nonatomic, strong) NSString      *name;
@property (nonatomic, strong) NSNumber      *age;
@property (nonatomic, strong) NSDictionary  *infomation;
@property (nonatomic)         BOOL           isMan;

@end

inline static Student *student() {
    
    return [Student sharedInstance];
}