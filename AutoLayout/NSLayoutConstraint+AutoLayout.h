#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSLayoutConstraint (AutoLayout)

+ (id)jmd_constraintsWithVisualFormats:(NSArray *)visualFormats options:(NSLayoutFormatOptions)options metrics:(NSDictionary *)metrics views:(NSDictionary *)views;
@end