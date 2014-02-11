#import <UIKit/UIKit.h>
#import "JMDAlertViewController.h"
#import "JMDAction.h"

@interface JMDAlertViewController () <UIAlertViewDelegate>
@property(nonatomic, copy) NSString *title;
@property(nonatomic, copy) NSString *message;
@property(nonatomic, strong) JMDAction *cancelAction;
@property(nonatomic, strong) NSArray *otherActions;
@property(nonatomic, strong) NSMutableArray *allActions;
@end

@implementation JMDAlertViewController {
	UIAlertView *_alertView;
}
- (id)initWithTitle:(NSString *)title message:(NSString *)message cancelAction:(JMDAction *)cancelAction otherActions:(NSArray *)otherActions {
	self = [super init];
	if (self) {
		self.title = title;
		self.message = message;
		self.cancelAction = cancelAction;
		self.otherActions = otherActions;
		self.allActions = [otherActions?: @[] mutableCopy];
		if (cancelAction) {
			[self.allActions insertObject:cancelAction atIndex:0];
		}
	}

	return self;
}

- (UIAlertView *)alertView {
	if (!_alertView) {
		_alertView = [[UIAlertView alloc] initWithTitle:self.title message:self.message delegate:self cancelButtonTitle:self.cancelAction.title otherButtonTitles:nil];
		for (JMDAction *otherAction in self.otherActions) {
			[_alertView addButtonWithTitle:otherAction.title];
		}
	}
	return _alertView;
}

- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex {
	JMDAction *action = self.allActions[buttonIndex];
	action.block();
}
@end