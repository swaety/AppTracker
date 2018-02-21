//
//  CustomObject.m
//  AppTracker
//
//  Created by jonathan on 15/02/2018.
//  Copyright © 2018 jonathan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CustomObject.h"
#include <sys/sysctl.h>

@implementation CustomObject

- (void) someMethod {
    NSLog(@"SomeMethod Ran");
}

- (NSArray *) runningProcesses {
    //CTL_KERN，KERN_PROC,KERN_PROC_ALL
    int mib[4] = {CTL_KERN, KERN_PROC, KERN_PROC_ALL ,0};
    size_t miblen = 4;
    
    size_t size;
    int st = sysctl(mib, miblen, NULL, &size, NULL, 0);
    
    struct kinfo_proc * process = NULL;
    struct kinfo_proc * newprocess = NULL;
    do {
        size += size / 10;
        newprocess = (struct kinfo_proc *)realloc(process, sizeof(struct kinfo_proc));
        if (!newprocess) {
            if (process) {
                free(process);
                process = NULL;
            }
            return nil;
        }
        process = newprocess;
        st = sysctl(mib, miblen, process, &size, NULL, 0);
    } while (st == -1 && errno == ENOMEM);
    if (st == 0) {
        if (size % sizeof(struct kinfo_proc) == 0) {
            int nprocess = size / sizeof(struct kinfo_proc);
            if (nprocess) {
                NSMutableArray * array = [[NSMutableArray alloc] init];
                for (int i = nprocess - 1; i >= 0; i--) {
                    NSString * processID = [[NSString alloc] initWithFormat:@"%d", process[i].kp_proc.p_pid];
                    NSString * processName = [[NSString alloc] initWithFormat:@"%s", process[i].kp_proc.p_comm];
                    NSString * proc_CPU = [[NSString alloc] initWithFormat:@"%d", process[i].kp_proc.p_estcpu];
                    double t = [[NSDate date] timeIntervalSince1970] - process[i].kp_proc.p_un.__p_starttime.tv_sec;
                    NSString * proc_useTiem = [[NSString alloc] initWithFormat:@"%f",t];
                    //                    NSLog(@"process.kp_proc.p_stat = %c",process.kp_proc.p_stat);
                    NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
                    [dic setValue:processID forKey:@"ProcessID"];
                    [dic setValue:processName forKey:@"ProcessName"];
                    [dic setValue:proc_CPU forKey:@"ProcessCPU"];
                    [dic setValue:proc_useTiem forKey:@"ProcessUseTime"];
                    [array addObject:dic];
                }
                free(process);
                process = NULL;
                NSLog(@"runningProcesses is === %@",array);
                return array;
            }
        }
    }
    return nil;
}

@end
