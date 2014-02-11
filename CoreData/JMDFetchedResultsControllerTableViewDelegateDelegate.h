#import <Foundation/Foundation.h>

@class JMDFetchedResultsControllerTableViewDelegate;
@class UITableView;

@protocol JMDFetchedResultsControllerTableViewDelegateDelegate <NSObject>  // OOF

- (UITableView *)tableViewForFetchedResultsControllerTableViewDelegate:(JMDFetchedResultsControllerTableViewDelegate *)fetchedResultsControllerTableViewDelegate;

- (void)fetchedResultsControllerTableViewDelegate:(JMDFetchedResultsControllerTableViewDelegate *)fetchedResultsControllerTableViewDelegate configureCellAtIndexPath:(NSIndexPath *)indexPath;
@end