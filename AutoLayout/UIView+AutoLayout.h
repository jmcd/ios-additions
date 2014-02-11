#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UIView (AutoLayout)
- (void)jmd_addManyConstraints:(NSArray *)array;

- (id)jmd_addConstrainedSubview:(UIView *)view;
@end