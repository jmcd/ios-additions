#import <Foundation/Foundation.h>

@interface JMDCalendarDate : NSObject

- (id)initWithDate:(NSDate *)date;

- (id)initWithCalendar:(NSCalendar *)calendar date:(NSDate *)date;

- (JMDCalendarDate *)addComponents:(NSDateComponents *)additionComponents;

+ (JMDCalendarDate *)today;

- (JMDCalendarDate *)calendarDateFromYearMonthDayComponents;

- (JMDCalendarDate *)addDays:(NSInteger)v;

- (NSDate *)date;

- (NSCalendar *)calendar;

- (JMDCalendarDate *)addMonths:(NSInteger)v;

- (BOOL)isBefore:(JMDCalendarDate *)date;

- (BOOL)isOnOrBefore:(JMDCalendarDate *)date;

- (BOOL)isOnOrAfter:(JMDCalendarDate *)date;

- (BOOL)isAfter:(JMDCalendarDate *)date;

- (JMDCalendarDate *)addWeeks:(int)v;

- (JMDCalendarDate *)addHours:(int)v;

- (JMDCalendarDate *)addMinutes:(int)v;

- (JMDCalendarDate *)addSeconds:(int)v;
@end