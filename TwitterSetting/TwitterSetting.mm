#line 1 "/Users/mac/Desktop/أدواتي/Development/TwitterSetting/TwitterSetting/TwitterSetting.xm"



#import <UIKit/UIKit.h>
#import <CoreGraphics/CoreGraphics.h>
#import <Foundation/Foundation.h>
#import "FRPrefs.h"



@interface TFNItemsDataViewControllerBackingStore
- (void)insertSection:(id)arg1 atIndex:(long long)arg2;
- (void)insertItem:(id)arg1 atIndexPath:(id)arg2;
@end


@interface T1SettingsViewController : UIViewController
@property ( nonatomic, strong) TFNItemsDataViewControllerBackingStore *backingStore;
@property ( nonatomic, strong) NSArray* sections;


@end

@interface TFNTextCell: UITableViewCell
@end



#include <objc/message.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

__attribute__((unused)) static void _logos_register_hook$(Class _class, SEL _cmd, IMP _new, IMP *_old) {
unsigned int _count, _i;
Class _searchedClass = _class;
Method *_methods;
while (_searchedClass) {
_methods = class_copyMethodList(_searchedClass, &_count);
for (_i = 0; _i < _count; _i++) {
if (method_getName(_methods[_i]) == _cmd) {
if (_class == _searchedClass) {
*_old = method_getImplementation(_methods[_i]);
*_old = method_setImplementation(_methods[_i], _new);
} else {
class_addMethod(_class, _cmd, _new, method_getTypeEncoding(_methods[_i]));
}
free(_methods);
return;
}
}
free(_methods);
_searchedClass = class_getSuperclass(_searchedClass);
}
}
@class T1SettingsViewController; @class TFNTextCell; 
static Class _logos_superclass$_ungrouped$T1SettingsViewController; static void (*_logos_orig$_ungrouped$T1SettingsViewController$viewWillAppear$)(_LOGOS_SELF_TYPE_NORMAL T1SettingsViewController* _LOGOS_SELF_CONST, SEL, BOOL);static UITableViewCell * (*_logos_orig$_ungrouped$T1SettingsViewController$tableView$cellForRowAtIndexPath$)(_LOGOS_SELF_TYPE_NORMAL T1SettingsViewController* _LOGOS_SELF_CONST, SEL, UITableView *, NSIndexPath *);static void (*_logos_orig$_ungrouped$T1SettingsViewController$tableView$didSelectRowAtIndexPath$)(_LOGOS_SELF_TYPE_NORMAL T1SettingsViewController* _LOGOS_SELF_CONST, SEL, UITableView *, NSIndexPath *);
static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$TFNTextCell(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("TFNTextCell"); } return _klass; }
#line 28 "/Users/mac/Desktop/أدواتي/Development/TwitterSetting/TwitterSetting/TwitterSetting.xm"


static void _logos_method$_ungrouped$T1SettingsViewController$viewWillAppear$(_LOGOS_SELF_TYPE_NORMAL T1SettingsViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, BOOL arg1) {
    (_logos_orig$_ungrouped$T1SettingsViewController$viewWillAppear$ ? _logos_orig$_ungrouped$T1SettingsViewController$viewWillAppear$ : (__typeof__(_logos_orig$_ungrouped$T1SettingsViewController$viewWillAppear$))class_getMethodImplementation(_logos_superclass$_ungrouped$T1SettingsViewController, @selector(viewWillAppear:)))(self, _cmd, arg1);
    
    
    if ([self.sections count] == 2) {
        
        
        
        
        
        
        TFNItemsDataViewControllerBackingStore *DataViewControllerBackingStore = self.backingStore;
        
        
        
        [DataViewControllerBackingStore insertSection:0 atIndex:0];
        
        
        
        
        [DataViewControllerBackingStore insertItem:@"Row 0 " atIndexPath:[NSIndexPath indexPathForRow:0 inSection:0]];
        
        
        
        
        [DataViewControllerBackingStore insertItem:@"Row1" atIndexPath:[NSIndexPath indexPathForRow:1 inSection:0]];
        
        
    }
    
    
    
    
}





static UITableViewCell * _logos_method$_ungrouped$T1SettingsViewController$tableView$cellForRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL T1SettingsViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITableView * tableView, NSIndexPath * indexPath)    {
    
    if (indexPath.section == 0 && indexPath.row ==1 ) {
        
        TFNTextCell *Tweakcell = [[_logos_static_class_lookup$TFNTextCell() alloc] init];
        
        
        [Tweakcell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
        
        
        [Tweakcell.textLabel setText:@"your tweak name"];
        
        
        
        
        
        return Tweakcell;
        
    } else if (indexPath.section == 0 && indexPath.row ==0 ) {
        
        TFNTextCell *Settingscell = [[_logos_static_class_lookup$TFNTextCell() alloc] init];
        
        
        [Settingscell setBackgroundColor:[UIColor clearColor]];
        
        Settingscell.textLabel.font = [UIFont fontWithName:@".SFUIText-Heavy" size:18];
        
        
        Settingscell.textLabel.textColor = [UIColor colorWithRed:0.40 green:0.47 blue:0.53 alpha:1.0];
        
        [Settingscell.textLabel setText:@"Settings"];
        
        
        
        
        
        return Settingscell;
    }
    
    
    return (_logos_orig$_ungrouped$T1SettingsViewController$tableView$cellForRowAtIndexPath$ ? _logos_orig$_ungrouped$T1SettingsViewController$tableView$cellForRowAtIndexPath$ : (__typeof__(_logos_orig$_ungrouped$T1SettingsViewController$tableView$cellForRowAtIndexPath$))class_getMethodImplementation(_logos_superclass$_ungrouped$T1SettingsViewController, @selector(tableView:cellForRowAtIndexPath:)))(self, _cmd, tableView, indexPath);
}


static void _logos_method$_ungrouped$T1SettingsViewController$tableView$didSelectRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL T1SettingsViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITableView * tableView, NSIndexPath * indexPath) {
    if ([indexPath section]== 0 && [indexPath row]== 1) {
        
        
        
        
        FRPSection *HeaderSection = [FRPSection sectionWithTitle:@"Preferences" footer:nil];
        
        FRPSwitchCell *EXSwitch = [FRPSwitchCell cellWithTitle:@"Enable" setting:[FRPSettings settingsWithKey:@"any key you want" defaultValue:@NO] postNotification:nil changeBlock:^(UISwitch *sender) {
            
            
            










        }];
        
        
        
        FRPSection *DevSection = [FRPSection sectionWithTitle:@"Developer" footer:nil];
        
        FRPDeveloperCell *Developer = [FRPDeveloperCell cellWithTitle:@"BandarHelal" detail:@"BandarHL" image:[UIImage imageNamed:@""] url:@"https://twitter.com/BandarHL"];
        
        [HeaderSection addCell:EXSwitch];
        [DevSection addCell:Developer];
        
        FRPreferences *table = [FRPreferences tableWithSections:@[HeaderSection,DevSection] title:@"Preferences" tintColor:nil];
        
        




        
        
        [self.navigationController pushViewController:table animated:YES];
        
    }else {
        return (_logos_orig$_ungrouped$T1SettingsViewController$tableView$didSelectRowAtIndexPath$ ? _logos_orig$_ungrouped$T1SettingsViewController$tableView$didSelectRowAtIndexPath$ : (__typeof__(_logos_orig$_ungrouped$T1SettingsViewController$tableView$didSelectRowAtIndexPath$))class_getMethodImplementation(_logos_superclass$_ungrouped$T1SettingsViewController, @selector(tableView:didSelectRowAtIndexPath:)))(self, _cmd, tableView, indexPath);
    }
}




static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$T1SettingsViewController = objc_getClass("T1SettingsViewController"); _logos_superclass$_ungrouped$T1SettingsViewController = class_getSuperclass(_logos_class$_ungrouped$T1SettingsViewController); { _logos_register_hook$(_logos_class$_ungrouped$T1SettingsViewController, @selector(viewWillAppear:), (IMP)&_logos_method$_ungrouped$T1SettingsViewController$viewWillAppear$, (IMP *)&_logos_orig$_ungrouped$T1SettingsViewController$viewWillAppear$);}{ _logos_register_hook$(_logos_class$_ungrouped$T1SettingsViewController, @selector(tableView:cellForRowAtIndexPath:), (IMP)&_logos_method$_ungrouped$T1SettingsViewController$tableView$cellForRowAtIndexPath$, (IMP *)&_logos_orig$_ungrouped$T1SettingsViewController$tableView$cellForRowAtIndexPath$);}{ _logos_register_hook$(_logos_class$_ungrouped$T1SettingsViewController, @selector(tableView:didSelectRowAtIndexPath:), (IMP)&_logos_method$_ungrouped$T1SettingsViewController$tableView$didSelectRowAtIndexPath$, (IMP *)&_logos_orig$_ungrouped$T1SettingsViewController$tableView$didSelectRowAtIndexPath$);}} }
#line 165 "/Users/mac/Desktop/أدواتي/Development/TwitterSetting/TwitterSetting/TwitterSetting.xm"
