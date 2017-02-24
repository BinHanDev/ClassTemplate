//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

___IMPORTHEADER_cocoaTouchSubclass___

@interface ___FILEBASENAMEASIDENTIFIER___ : ___VARIABLE_cocoaTouchSubclass___

/**
 刷新结束信号
 */
@property (nonatomic, strong) RACSubject *refreshEndSubject;

/**
 下拉刷新Command
 */
@property (nonatomic, strong) RACCommand *loadLatestDataCommand;

/**
 上拉加载Command
 */
@property (nonatomic, strong) RACCommand *loadMoreDataCommand;

/**
 所有数据的集合
 */
@property (nonatomic, strong) NSMutableArray *dataArray;

@end
