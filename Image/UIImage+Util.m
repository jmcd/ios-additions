#import <UIKit/UIKit.h>
#import "UIImage+Util.h"

@implementation UIImage (Util)

+ (UIImage *)jmd_imageWithImage:(UIImage *)image scaledToFillSize:(CGSize)size {
	CGFloat xScale = size.width / image.size.width;
	CGFloat yScale = size.height / image.size.height;
	CGFloat scale = MAX(xScale, yScale);
    CGFloat newWidth = image.size.width * scale;
    CGFloat newHeight = image.size.height * scale;
    CGRect imageRect = CGRectMake((size.width - newWidth) / 2.0f, (size.height - newHeight) / 2.0f, newWidth, newHeight);
    UIGraphicsBeginImageContextWithOptions(size, NO, 0);
    [image drawInRect:imageRect];
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}

+ (UIImage *)jmd_imageWithColor:(UIColor *)color {
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();

    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);

    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    return image;
}

@end