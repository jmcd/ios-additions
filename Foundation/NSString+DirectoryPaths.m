#import "NSString+DirectoryPaths.h"

@implementation NSString (DirectoryPaths)

+ (NSString *)jmd_documentsDirectoryPath {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    return paths[0];
}

@end