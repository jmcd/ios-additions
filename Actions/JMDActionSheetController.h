#import <Foundation/Foundation.h>

@class JMDAction;
@class UIActionSheet;

@interface JMDActionSheetController : NSObject

- (id)initWithTitle:(NSString *)title cancelAction:(JMDAction *)cancelAction destructiveAction:(JMDAction *)destructiveAction otherActions:(NSArray *)otherActions;

- (UIActionSheet *)actionSheet;
@end