#import <UIKit/UIKit.h>
#import "JMDActionSheetController.h"
#import "JMDAction.h"

@interface JMDActionSheetController () <UIActionSheetDelegate>
@property(nonatomic, copy) NSString *title;
@property(nonatomic, strong) JMDAction *cancelAction;
@property(nonatomic, strong) JMDAction *destructiveAction;
@property(nonatomic, strong) NSArray *otherActions;
@property(nonatomic, strong) NSMutableArray *allActions;
@end

@implementation JMDActionSheetController {
	UIActionSheet *_actionSheet;
}
- (id)initWithTitle:(NSString *)title cancelAction:(JMDAction *)cancelAction destructiveAction:(JMDAction *)destructiveAction otherActions:(NSArray *)otherActions {
	self = [super init];
	if (self) {
		self.title = title;
		self.cancelAction = cancelAction;
		self.destructiveAction = destructiveAction;
		self.otherActions = otherActions;
		self.allActions = [otherActions mutableCopy];
		if (cancelAction) {
			[self.allActions addObject:cancelAction];
		}
		if (destructiveAction) {
			[self.allActions insertObject:destructiveAction atIndex:0];
		}
	}

	return self;
}

- (UIActionSheet *)actionSheet {
	if (!_actionSheet) {

		_actionSheet = [[UIActionSheet alloc] initWithTitle:self.title delegate:self cancelButtonTitle:nil destructiveButtonTitle:nil otherButtonTitles:nil];
		for (JMDAction *action in self.allActions) {
			[_actionSheet addButtonWithTitle:action.title];
		}
		if (_cancelAction) {
			NSUInteger buttonIndex = [self.allActions indexOfObject:_cancelAction];
			[_actionSheet setCancelButtonIndex:buttonIndex];
		}
		if (_destructiveAction) {
			NSUInteger buttonIndex = [self.allActions indexOfObject:_destructiveAction];
			[_actionSheet setDestructiveButtonIndex:buttonIndex];
		}
	}
	return _actionSheet;
}

- (void)actionSheet:(UIActionSheet *)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex {
	JMDAction *action = self.allActions[buttonIndex];
	void (^pFunction)() = action.block;
	pFunction();
}
@end