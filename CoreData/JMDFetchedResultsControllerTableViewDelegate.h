#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@protocol JMDFetchedResultsControllerTableViewDelegateDelegate;

@interface JMDFetchedResultsControllerTableViewDelegate : NSObject<NSFetchedResultsControllerDelegate>
- (id)initWithDelegate:(id <JMDFetchedResultsControllerTableViewDelegateDelegate>)delegate;
@end