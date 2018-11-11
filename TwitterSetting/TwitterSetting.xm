
// Created by FahadAlJuwausri

#import <UIKit/UIKit.h>
#import <CoreGraphics/CoreGraphics.h>
#import <Foundation/Foundation.h>
#import "FRPrefs.h"

%config(generator=internal)

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


%hook T1SettingsViewController
- (void)viewWillAppear:(BOOL)arg1
{
    %orig;
    
    
    if ([self.sections count] == 2) {
        
        
        // setup a new section
        
        
        
        TFNItemsDataViewControllerBackingStore *DataViewControllerBackingStore = self.backingStore;
        
        
        //Insert section at Top "TFNItemsDataViewSectionController"
        [DataViewControllerBackingStore insertSection:0 atIndex:0];
        
        
        
        //insert Row 0 in section 0 "TFNDataViewItem"
        [DataViewControllerBackingStore insertItem:@"Row 0 " atIndexPath:[NSIndexPath indexPathForRow:0 inSection:0]];
        
        
        
        //Insert Row1 in section 0 "TFNDataViewItem"
        [DataViewControllerBackingStore insertItem:@"Row1" atIndexPath:[NSIndexPath indexPathForRow:1 inSection:0]];
        
        
    }
    
    
    
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath



{
    
    if (indexPath.section == 0 && indexPath.row ==1 ) {
        
        TFNTextCell *Tweakcell = [[%c(TFNTextCell) alloc] init];
        
        
        [Tweakcell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
        
        // cell title
        [Tweakcell.textLabel setText:@"your tweak name"];
        
        
        
        
        
        return Tweakcell;
        
    } else if (indexPath.section == 0 && indexPath.row ==0 ) {
        
        TFNTextCell *Settingscell = [[%c(TFNTextCell) alloc] init];
        
        // setup title section
        [Settingscell setBackgroundColor:[UIColor clearColor]];
        
        Settingscell.textLabel.font = [UIFont fontWithName:@".SFUIText-Heavy" size:18];
        
        
        Settingscell.textLabel.textColor = [UIColor colorWithRed:0.40 green:0.47 blue:0.53 alpha:1.0];
        
        [Settingscell.textLabel setText:@"Settings"];
        
        
        
        
        
        return Settingscell;
    }
    
    
    return %orig;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([indexPath section]== 0 && [indexPath row]== 1) {
        
        // do anything when cell is clicked
        
        // for example i want show a setting with FRPreferences
        FRPSection *HeaderSection = [FRPSection sectionWithTitle:@"Preferences" footer:nil];
        
        FRPSwitchCell *EXSwitch = [FRPSwitchCell cellWithTitle:@"Enable" setting:[FRPSettings settingsWithKey:@"any key you want" defaultValue:@NO] postNotification:nil changeBlock:^(UISwitch *sender) {
            
            
            /*
             you can add this code
            if ([sender isOn]) {

             do something when switch is on
             
             
            } else {
             do something when switch is off
            }
             */
        }];
        
        
        // Developer section if you want :)
        FRPSection *DevSection = [FRPSection sectionWithTitle:@"Developer" footer:nil];
        
        FRPDeveloperCell *Developer = [FRPDeveloperCell cellWithTitle:@"BandarHelal" detail:@"BandarHL" image:[UIImage imageNamed:@""] url:@"https://twitter.com/BandarHL"];
        
        [HeaderSection addCell:EXSwitch];
        [DevSection addCell:Developer];
        
        FRPreferences *table = [FRPreferences tableWithSections:@[HeaderSection,DevSection] title:@"Preferences" tintColor:nil];
        
        /*
         this code if you want a heart button in corner
         UIBarButtonItem *Heart = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@""] style:UIBarButtonItemStylePlain target:self action:@selector(shareTwitterTapped:)];
         table.navigationItem.rightBarButtonItem = Heart;
         */
        
        
        [self.navigationController pushViewController:table animated:YES];
        
    }else {
        return %orig;
    }
}



%end
