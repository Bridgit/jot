//
//  JotDoneAccessoryView.h
//  jot
//
//  Created by Mark DiFranco on 2018-08-02.
//
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface JotDoneAccessoryView : UIToolbar

/**
 *  The UITextView to assign this accessory view to. Setting this
 *  property will automatically set this view as the textView's accessory
 *  view.
 */
@property (nonatomic, weak) UITextView *textView;

@end
