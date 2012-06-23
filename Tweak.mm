#import <SpringBoard/SpringBoard.h>
%hook SBBulletinListController
-(void)_clearSection:(id)section
{
	%orig;
	SBIcon *currentIcon = [[%c(SBIconModel) sharedInstance] applicationIconForDisplayIdentifier:section];
	[currentIcon setBadge:[NSNumber numberWithInt:0]];
}
%end