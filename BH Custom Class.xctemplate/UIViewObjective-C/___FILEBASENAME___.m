//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import "___FILEBASENAME___.h"

@implementation ___FILEBASENAMEASIDENTIFIER___

#pragma mark - Private Method
    
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        [self setUpSubViews];
        [self setNeedsUpdateConstraints];
        [self updateConstraints];
    }
    return self;
}

#pragma mark - Intial Methods


// init subviews
-(void)setUpSubViews
{
    
}

// adjust your special constraints during a constraints update pass
- (void)updateConstraints
{
    [super updateConstraints];
}

#pragma mark - External Delegate

#pragma mark - Intial Methods

#pragma mark - Setter Getter Methods

#pragma mark - Target Methods
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
