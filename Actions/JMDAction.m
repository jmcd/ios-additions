#import "JMDAction.h"

@implementation JMDAction {
}
- (id)initWithTitle:(NSString *)title block:(void (^)())block {
	self = [super init];
	if (self) {
		self.title = title;
		self.block = block;
	}

	return self;
}

+ (JMDAction *)actionWithTitle:(NSString *)title block:(void (^)())block {
	return [[JMDAction alloc] initWithTitle:title block:block];
}

+ (JMDAction *)actionWithTitle:(NSString *)title {
	return [[JMDAction alloc] initWithTitle:title block:^(){}];
}

@end