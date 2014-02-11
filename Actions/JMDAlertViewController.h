#import <Foundation/Foundation.h>

@class JMDAction;
@class UIAlertView;

@interface JMDAlertViewController : NSObject
- (id)initWithTitle:(NSString *)title message:(NSString *)message cancelAction:(JMDAction *)cancelAction otherActions:(NSArray *)otherActions;

- (UIAlertView *)alertView;
@end