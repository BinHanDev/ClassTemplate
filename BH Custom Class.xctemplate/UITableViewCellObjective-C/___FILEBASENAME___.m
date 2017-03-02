//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import "___FILEBASENAME___.h"

@implementation ___FILEBASENAMEASIDENTIFIER___

+(NSString *)identifier
{
    return [NSString stringWithUTF8String:object_getClassName([self class])];
}

#pragma mark - Intial Methods

// Designated initializer.  If the cell can be reused, you must pass in a reuse identifier.  You should use the same reuse identifier for all cells of the same form.
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
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

#pragma mark - Private Method

#pragma mark - External Delegate

#pragma mark - Setter Getter Methods

#pragma mark - Target Methods

/*
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
*/

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    // Configure the view for the selected state
}

@end
