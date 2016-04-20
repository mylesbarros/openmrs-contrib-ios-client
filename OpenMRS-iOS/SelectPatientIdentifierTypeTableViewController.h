//
//  SelectPatientIdentifierTypeTableViewController.h
//  OpenMRS-iOS
//
//  Created by Parker Erway on 12/11/14.
//

#import <UIKit/UIKit.h>
#import "XLFormRowDescriptor.h"
@class MRSPatientIdentifierType;
@protocol SelectPatientIdentifierTypeTableViewControllerDelegate <NSObject>
- (void)didSelectPatientIdentifierType:(MRSPatientIdentifierType *)type;
@end

@interface SelectPatientIdentifierTypeTableViewController : UITableViewController <UIViewControllerRestoration, XLFormRowDescriptorViewController>
@property (nonatomic, strong) NSArray *identifierTypes;
@property (nonatomic, strong) NSObject<SelectPatientIdentifierTypeTableViewControllerDelegate> *delegate;
@end
