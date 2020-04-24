@interface NCNotificationListCell
-(void)cellViewButtonPressed:(id)arg1;
@end

// %hook NCNotificationGroupList
// - (BOOL)notificationViewControllerShouldAllowLongPressGesture:(id)arg1{
//     return YES;
// }
// %end

// %hook PLClickPresentationInteractionManager
// -(BOOL)_delegateShouldAllowLongPressGesture {
//     return YES;
// }
// %end

// %hook NCNotificationShortLookViewController
// -(BOOL)clickPresentationInteractionManagerShouldAllowLongPressGesture:(id)arg1 {
//     return YES;
// }
// -(BOOL)_shouldUseHapticTouch {
//     return YES;
// }
// %end

// %hook NCUserNotificationsUIKitDefaults
// -(BOOL)shouldForceHapticTouchForPreview {
//     return YES;
// }
// %end

// %hook NCNotificationStructuredListViewController
// -(BOOL)notificationListComponentShouldAllowLongPressGesture:(id)arg1 {
//     return YES;
// }
// %end

// %hook PLClickPresentationInteractionManagerDelegate 
// -(BOOL)clickPresentationInteractionManagerShouldAllowLongPressGesture:(id)arg1 {
//     return YES;
// }
// %end 

%hook NCNotificationListCell
-(void)hintSideSwipeForDefaultAction {
    [self cellViewButtonPressed: self];
}
%end