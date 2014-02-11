#import "JMDCalendarDate.h"

@implementation JMDCalendarDate {
    NSDate *_date;
    id _calendar;
}

- (NSDate *)date {
    return _date;
}

- (NSCalendar *)calendar {
    return _calendar;
}

- (id)init {
    self = [super init];
    if (self) {
        [self boot:[NSCalendar currentCalendar] date:[NSDate date]];
    }
    return self;
}

- (id)initWithDate:(NSDate *)date {
    self = [super init];
    if (self) {
        [self boot:[NSCalendar currentCalendar] date:date];
    }
    return self;
}

- (id)initWithCalendar:(NSCalendar *)calendar date:(NSDate *)date {
    self = [super init];
    if (self) {
        [self boot:calendar date:date];
    }
    return self;
}

- (void)boot:(NSCalendar *)calendar date:(NSDate *)date {
    _date = date;
    _calendar = calendar;
}

+ (JMDCalendarDate *)today {
    JMDCalendarDate *calendarDate = [[JMDCalendarDate alloc] init];
    return [calendarDate calendarDateFromYearMonthDayComponents];
}

- (JMDCalendarDate *)calendarDateFromYearMonthDayComponents {
    return [self calendarDateUsingUnitFlags:NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay];
}

- (JMDCalendarDate *)calendarDateUsingUnitFlags:(enum NSCalendarUnit)calendarUnitFlags {
    NSDateComponents *sourceComponents = [_calendar components:calendarUnitFlags fromDate:_date];
    NSDate *newDate = [_calendar dateFromComponents:sourceComponents];
    return [[JMDCalendarDate alloc] initWithCalendar:_calendar date:newDate];
}

- (JMDCalendarDate *)addComponents:(NSDateComponents *)additionComponents {
    NSDate *newDate = [_calendar dateByAddingComponents:additionComponents toDate:_date options:0];
    return [[JMDCalendarDate alloc] initWithCalendar:_calendar date:newDate];
}

- (JMDCalendarDate *)addDays:(NSInteger)v {
    return [self addMutatedComponents:^(NSDateComponents *c) {c.day = v;}];
}

- (JMDCalendarDate *)addMonths:(NSInteger)v {
    return [self addMutatedComponents:^(NSDateComponents *c) {c.month = v;}];
}

- (JMDCalendarDate *)addWeeks:(int)v {
    return [self addMutatedComponents:^(NSDateComponents *c) {c.week = v;}];
}

- (JMDCalendarDate *)addHours:(int)v {
    return [self addMutatedComponents:^(NSDateComponents *c) {c.hour = v;}];
}

- (JMDCalendarDate *)addMinutes:(int)v {
    return [self addMutatedComponents:^(NSDateComponents *c) {c.minute = v;}];
}

- (JMDCalendarDate *)addSeconds:(int)v {
    return [self addMutatedComponents:^(NSDateComponents *c) {c.second = v;}];
}

- (JMDCalendarDate *)addMutatedComponents:(void (^)(NSDateComponents *))mutator {
    NSDateComponents *components = [[NSDateComponents alloc] init];
    mutator(components);
    return [self addComponents:components];
}

- (BOOL)isBefore:(JMDCalendarDate *)date {
    NSTimeInterval d = [self timeIntervalSinceDate:date];
    return d < 0;
}

- (BOOL)isAfter:(JMDCalendarDate *)date {
    NSTimeInterval d = [self timeIntervalSinceDate:date];
    return d > 0;
}

- (BOOL)isOnOrBefore:(JMDCalendarDate *)date {
    NSTimeInterval d = [self timeIntervalSinceDate:date];
    return d <= 0;
}

- (BOOL)isOnOrAfter:(JMDCalendarDate *)date {
    NSTimeInterval d = [self timeIntervalSinceDate:date];
    return d >= 0;
}

- (NSTimeInterval)timeIntervalSinceDate:(JMDCalendarDate *)date {
    return [self.date timeIntervalSinceDate:date.date];
}

@end