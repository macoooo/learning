//
//  main.m
//  NSDate
//
//  Created by 强淑婷 on 2018/6/20.
//  Copyright © 2018年 强淑婷. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //获取代表当前日期，时间的NSDate
        NSDate *date1 = [NSDate date];
        NSLog(@"%@", date1);
        //获取从当前时间开始，一天之后的日期
        NSDate *date2 = [[NSDate alloc] initWithTimeIntervalSinceNow: 3600*24];
        NSLog(@"%@", date2);
        //获取从当前时间开始，3天之后的日期
        NSDate *date3 = [[NSDate alloc] initWithTimeIntervalSinceNow: -3*3600*24];
        NSLog(@"%@", date3);
        //获取从1970年一月一日开始，20年之后的日期
        NSDate *date4 = [NSDate dateWithTimeIntervalSince1970: 3600*24*366*20];
        NSLog(@"%@", date4);
        //获取当前系统的Locale
        NSLocale *cn = [NSLocale currentLocale];
        //获取NSDate在当前Locale下对应的字符串
        NSLog(@"%@", [date1 descriptionWithLocale: cn]);
        //获取两个日期之间较早的日期
        NSDate *earlier = [date1 earlierDate: date2];
        //获取两个日期之间较晚的日期
        NSDate *later = [date1 laterDate: date2];
        //比较两个日期，compare方法返回NSComparisonResult枚举值
        //该枚举类型包含NSOrderedAscending,NSOrderedSame和NSOrderedDescending三个值
        //分别代表调用compare：的日期位于被比较日期之前，相同，之后
        switch([date1 compare: date3])
        {
            case NSOrderedAscending:
                NSLog(@"date1位于date3之前");
                break;
            case NSOrderedSame:
                NSLog(@"date1 与date3日期相等");
                break;
            case NSOrderedDescending:
                NSLog(@"date1位于date3之后");
                break;
        }
        //获取两个时间之间的时间差
        NSLog(@"date1与date3之间时间差%g秒", [date1 timeIntervalSinceDate: date3]);
        //获取指定时间与现在的时间差
        NSLog(@"date2 与现在时间差%g秒", [date2 timeIntervalSinceNow]);
    }
    return 0;
}
