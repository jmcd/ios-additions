#import <Foundation/Foundation.h>

@interface UIImage (Util)
+ (UIImage *)jmd_imageWithImage:(UIImage *)image scaledToFillSize:(CGSize)size;

+ (UIImage *)jmd_imageWithColor:(UIColor *)color;
@end