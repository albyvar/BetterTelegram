/*
HIDE TAB BAR BADGE
*/

%hook TGTabBarBadge
- (void)setCount:(int)arg1 {
	arg1 = 0;
	%orig;
} 
%end

/*
HIDE STATUS BAR
*/

%hook TGViewController
- (bool)prefersStatusBarHidden {
	return 1;
} 
%end

/*
COMPLETELY DISABLE MICROPHONE FUNCTIONALITY
*/

%hook TGModernConversationInputMicButton
- (bool)beginTrackingWithTouch:(id)arg1 withEvent:(id)arg2 {
	return 0;
} 
%end

%hook TGModernConversationInputMicButton
- (bool)continueTrackingWithTouch:(id)arg1 withEvent:(id)arg2 {
	return 1;
} 
%end

/*
HIDE PROFILES PICS IN CHAT
*/


%hook TGLetteredAvatarView
- (void)loadImage:(id)arg1 filter:(id)arg2 placeholder:(id)arg3 forceFade:(bool)arg4 {
	arg4 = 1;
	%orig;
} 
%end

/*
HIDE TYPING
*/

%hook TGDialogListCell
- (void)startTypingAnimation:(bool)arg1 {
	arg1 = 0;
	%orig;
} 
%end

%hook TGDialogListTextView
- (bool)showTyping {
	return 0;
} 
%end

%hook TGDialogListTextView
- (void)setShowTyping:(bool)arg1 {
	arg1 = 0;
	%orig;
} 
%end

/*
ALL CHATS ENCRYPTED
*/

%hook TGDialogListTextView
- (void)setIsEncrypted:(bool)arg1 {
	arg1 = 1;
	%orig;
} 
%end

%hook TGDialogListCell
- (bool)isEncrypted {
	return 1;
} 
%end

%hook TGDialogListCell
- (void)setIsEncrypted:(bool)arg1 {
	arg1 = 1;
	%orig;
} 
%end

%hook TGDialogListSearchCell
- (void)setIsEncrypted:(bool)arg1 {
	arg1 = 1;
	%orig;
} 
%end

%hook TGDialogListTextView
- (bool)isEncrypted {
	return 1;
} 
%end

%hook TGDialogListSearchCell
- (bool)isEncrypted {
	return 1;
} 
%end

%hook TGConversation
- (bool)isEncrypted {
	return 1;
} 
%end

%hook TGDatabase
- (bool)isEncryptionEnabled {
	return 1;
} 
%end

/*
DISABLE SCREENSHOT ALERT IN SECRET CHAT
*/

%hook TGModernConversationViewContext
- (bool)isSecretMessageScreenshotted:(int)arg1 {
	return 0;
} 
%end

%hook TGModernConversationCompanion
- (bool)_isSecretMessageScreenshotted:(int)arg1 {
	return 0;
} 
%end

%hook TGModernViewContext
- (bool)isSecretMessageScreenshotted:(int)arg1 {
	return 0;
} 
%end

%hook Secret20_DecryptedMessageAction_decryptedMessageActionScreenshotMessages
- (id)init {
	return nil;
} 
%end

%hook Secret46_DecryptedMessageAction_decryptedMessageActionScreenshotMessages
- (id)init {
	return nil;
} 
%end

%hook Secret17_DecryptedMessageAction_decryptedMessageActionScreenshotMessages
- (id)init {
	return nil;
} 
%end

%hook Secret1_DecryptedMessageAction_decryptedMessageActionScreenshotMessages
- (id)init {
	return nil;
} 
%end

%hook Secret23_DecryptedMessageAction_decryptedMessageActionScreenshotMessages
- (id)init {
	return nil;
} 
%end

/*
PIN ALL CHATS
*/

%hook TGDialogListCell
- (void)setPinnedToTop:(bool)arg1 {
	arg1 = 1;
	%orig;
} 
%end

%hook TGConversation
- (bool)pinnedToTop {
	return 1;
} 
%end

%hook TGDialogListCell
- (bool)pinnedToTop {
	return 1;
} 
%end

/*
HIDE MESSAGES BUBBLES
*/

%hook TGModernImageViewModel
- (void)setImage:(id)arg1 {
	arg1 = nil;
	%orig;
} 
%end

%hook TGModernImageViewModel
- (id)initWithImage:(id)arg1 {
	arg1 = nil;
	return %orig;
} 
%end

%hook TGModernImageViewModel
- (id)image {
	return nil;
} 
%end

/*
FAKE ADMIN (ONLY UI)
*/

%hook TGGroupInfoUserCollectionItemView
- (void)setStatus:(id)arg1 active:(bool)arg2 {
	arg2 = 1;
	%orig;
} 
%end

%hook TGGroupInfoUserCollectionItemViewContent
- (bool)editing {
	return 1;
} 
%end

%hook TGGroupInfoUserCollectionItemViewContent
- (void)setEditing:(bool)arg1 {
	arg1 = 1;
	%orig;
} 
%end

%hook TGGroupInfoUserCollectionItemViewContent
- (bool)statusIsActive {
	return 1;
} 
%end

%hook TGGroupInfoUserCollectionItemViewContent
- (void)setStatusIsActive:(bool)arg1 {
	arg1 = 1;
	%orig;
} 
%end

%hook TGGroupInfoUserCollectionItem
- (void)setCanEdit:(bool)arg1 animated:(bool)arg2 {
	arg1 = 1;
	%orig;
} 
%end

%hook TGGroupInfoUserCollectionItem
- (void)setCanEdit:(bool)arg1 {
	arg1 = 1;
	%orig;
} 
%end

%hook TLUpdate$updateChatAdmins
- (bool)enabled {
	return %orig;
} 
%end

%hook TLUpdate$updateChatAdmins
- (void)setEnabled:(bool)arg1 {
	%orig;
} 
%end

%hook TGGroupAdminsController
- (void)toggleUserIsAdmin:(id)arg1 isAdmin:(bool)arg2 {
	arg2 = 1;
	%orig;
} 
%end

%hook TGGroupAdminsController
- (void)setSearchHidden:(bool)arg1 animated:(bool)arg2 {
	%orig;
} 
%end

%hook TLRPCmessages_editChatAdmin
- (bool)is_admin {
	return 1;
} 
%end

%hook TLRPCmessages_editChatAdmin
- (void)setIs_admin:(bool)arg1 {
	%orig;
} 
%end

%hook TLRPCmessages_toggleChatAdmins
- (bool)enabled {
	return 1;
} 
%end

%hook TLRPCmessages_toggleChatAdmins
- (void)setEnabled:(bool)arg1 {
	arg1 = 1;
	%orig;
} 
%end

%hook TGConversation
- (bool)isAdmin {
	return 1;
} 
%end

%hook TGConversation
- (void)setIsAdmin:(bool)arg1 {
	arg1 = 1;
	%orig;
} 
%end

%hook TGConversation
- (bool)chatIsAdmin {
	return 1;
} 
%end

%hook TGConversation
- (void)setChatIsAdmin:(bool)arg1 {
	arg1 = 1;
	%orig;
} 
%end

%hook TGGroupManagementSignals
+ (id)toggleUserIsAdmin:(long long)arg1 user:(id)arg2 isAdmin:(bool)arg3 {
	arg3 = 1;
	return %orig;
} 
%end

/*
CUSTOM TAB BAR 
*/

%hook TGTabBarButton
- (bool)isSelected {
	return 1;
} 
%end

%hook TGTabBarButton
- (void)setSelected:(bool)arg1 {
	arg1 = 1;
	%orig;
} 
%end

%hook TGTabBarButton
- (id)initWithImage:(id)arg1 highlightedImage:(id)arg2 title:(id)arg3 {
	arg3 = nil;
	return %orig;
} 
%end