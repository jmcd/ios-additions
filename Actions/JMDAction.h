#import <Foundation/Foundation.h>

@interface JMDAction : NSObject
@property(nonatomic, copy) NSString *title;
@property(nonatomic, copy) void (^block)();

- (id)initWithTitle:(NSString *)title block:(void (^)())block;

+ (JMDAction *)actionWithTitle:(NSString *)title block:(void (^)())block;

+ (JMDAction *)actionWithTitle:(NSString *)title;
@end