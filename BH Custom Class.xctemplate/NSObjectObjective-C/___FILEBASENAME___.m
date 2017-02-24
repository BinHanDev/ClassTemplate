//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import "___FILEBASENAME___.h"

@implementation ___FILEBASENAMEASIDENTIFIER___

-(void)initialize
{
    @weakify(self)
    [self.loadLatestDataCommand.executionSignals.switchToLatest subscribeNext:^(NSArray *array) {
        @strongify(self)
        [self.dataArray removeAllObjects];
        [self.dataArray addObjectsFromArray:array];
        if (array.count < LOAD_DATA_NUM)
        {
            [self.refreshEndSubject sendNext:@(ZOHeaderRefresh_NoMoreData)];
        }
        else
        {
            [self.refreshEndSubject sendNext:@(ZOHeaderRefresh_HasMoreData)];
        }
    }];
    [self.loadMoreDataCommand.executionSignals.switchToLatest subscribeNext:^(NSArray *array) {
        @strongify(self)
        [self.dataArray addObjectsFromArray:array];
        if (array.count < LOAD_DATA_NUM)
        {
            [self.refreshEndSubject sendNext:@(ZOFooterRefresh_NoMoreData)];
        }
        else
        {
            [self.refreshEndSubject sendNext:@(ZOFooterRefresh_HasMoreData)];
        }
    }];
}

- (RACSubject *)refreshEndSubject
{
    if (!_refreshEndSubject)
    {
        _refreshEndSubject = [RACSubject subject];
    }
    return _refreshEndSubject;
}

-(RACCommand *)loadLatestDataCommand
{
    if (!_loadLatestDataCommand)
    {
        _loadLatestDataCommand = [[RACCommand alloc] initWithSignalBlock:^RACSignal *(id array) {
            @weakify(self);
            return [RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber) {
                
                return nil;
            }];
        }];
    }
    return _loadLatestDataCommand;
}

-(RACCommand *)loadMoreDataCommand
{
    if (!_loadMoreDataCommand)
    {
        _loadMoreDataCommand = [[RACCommand alloc] initWithSignalBlock:^RACSignal *(id input) {
            @weakify(self);
            return [RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber) {
                
                return nil;
            }];
        }];
        
    }
    return _loadMoreDataCommand;
}


@end
