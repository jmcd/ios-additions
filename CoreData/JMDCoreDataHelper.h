#import <Foundation/Foundation.h>

@class NSManagedObjectID;

@interface JMDCoreDataHelper : NSObject
+ (JMDCoreDataHelper *)instance;

@property(nonatomic, strong) NSManagedObjectContext *mainQueueContext;

- (void)saveMainQueueContext;

- (NSArray *)executeFetchRequestOnMainQueueContext:(NSFetchRequest *)request;

- (NSUInteger)countForFetchRequestOnMainQueueContext:(NSFetchRequest *)request;

- (void)saveContext:(NSManagedObjectContext *)context;

- (NSManagedObject *)existingObjectWithID:(NSManagedObjectID *)objectID;
@end