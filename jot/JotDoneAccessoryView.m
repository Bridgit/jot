//
//  JotDoneAccessoryView.m
//  jot
//
//  Created by Mark DiFranco on 2018-08-02.
//
//

#import "JotDoneAccessoryView.h"

@implementation JotDoneAccessoryView

- (instancetype)init
{
    return [self initWithFrame:CGRectMake(0, 0, 375, 44)];
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self commonInit];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        [self commonInit];
    }
    return self;
}

- (void)commonInit
{
    self.barStyle = UIBarStyleBlack;
    self.translucent = YES;

    UIBarButtonItem *doneButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone
                                                                                target:self
                                                                                action:@selector(didTapDone:)];
    UIBarButtonItem *flexibleSpaceItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace
                                                                                       target:nil
                                                                                       action:nil];

    self.items = @[flexibleSpaceItem, doneButton];
}

#pragma mark - Properties

- (void)setTextView:(UITextView *)textView
{
    _textView = textView;
    textView.inputAccessoryView = self;
}

#pragma mark - Actions

- (void)didTapDone:(UIBarButtonItem *)sender
{
    [self.textView resignFirstResponder];
}

@end
