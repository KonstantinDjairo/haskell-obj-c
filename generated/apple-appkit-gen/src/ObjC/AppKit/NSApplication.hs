{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @NSApplication@.
module ObjC.AppKit.NSApplication
  ( NSApplication
  , IsNSApplication(..)
  , hide
  , unhide
  , unhideWithoutActivation
  , windowWithWindowNumber
  , deactivate
  , activateIgnoringOtherApps
  , hideOtherApplications
  , unhideAllApplications
  , finishLaunching
  , run
  , runModalForWindow
  , stop
  , stopModal
  , stopModalWithCode
  , abortModal
  , beginModalSessionForWindow
  , runModalSession
  , endModalSession
  , terminate
  , requestUserAttention
  , cancelUserAttentionRequest
  , enumerateWindowsWithOptions_usingBlock
  , preventWindowOrdering
  , setWindowsNeedUpdate
  , updateWindows
  , activationPolicy
  , setActivationPolicy
  , reportException
  , detachDrawingThread_toTarget_withObject
  , replyToApplicationShouldTerminate
  , replyToOpenOrPrint
  , orderFrontCharacterPalette
  , extendStateRestoration
  , completeStateRestoration
  , restoreWindowWithIdentifier_state_completionHandler
  , registerUserInterfaceItemSearchHandler
  , unregisterUserInterfaceItemSearchHandler
  , searchString_inUserInterfaceItemString_searchRange_foundRange
  , runPageLayout
  , orderFrontColorPanel
  , toggleTouchBarCustomizationPalette
  , activateContextHelpMode
  , showHelp
  , runModalForWindow_relativeToWindow
  , beginModalSessionForWindow_relativeToWindow
  , application_printFiles
  , beginSheet_modalForWindow_modalDelegate_didEndSelector_contextInfo
  , endSheet
  , endSheet_returnCode
  , makeWindowsPerform_inOrder
  , registerForRemoteNotifications
  , unregisterForRemoteNotifications
  , registerForRemoteNotificationTypes
  , disableRelaunchOnLogin
  , enableRelaunchOnLogin
  , orderFrontStandardAboutPanel
  , orderFrontStandardAboutPanelWithOptions
  , registerServicesMenuSendTypes_returnTypes
  , arrangeInFront
  , removeWindowsItem
  , addWindowsItem_title_filename
  , changeWindowsItem_title_filename
  , updateWindowsItem
  , miniaturizeAll
  , sendAction_to_from
  , targetForAction
  , targetForAction_to_from
  , tryToPerform_with
  , validRequestorForSendType_returnType
  , sendEvent
  , postEvent_atStart
  , nextEventMatchingMask_untilDate_inMode_dequeue
  , discardEventsMatchingMask_beforeEvent
  , sharedApplication
  , delegate
  , setDelegate
  , mainWindow
  , keyWindow
  , active
  , hidden
  , running
  , modalWindow
  , windows
  , mainMenu
  , setMainMenu
  , helpMenu
  , setHelpMenu
  , applicationIconImage
  , setApplicationIconImage
  , dockTile
  , presentationOptions
  , setPresentationOptions
  , currentSystemPresentationOptions
  , occlusionState
  , protectedDataAvailable
  , orderedDocuments
  , orderedWindows
  , automaticCustomizeTouchBarMenuItemEnabled
  , setAutomaticCustomizeTouchBarMenuItemEnabled
  , context
  , registeredForRemoteNotifications
  , enabledRemoteNotificationTypes
  , userInterfaceLayoutDirection
  , servicesProvider
  , setServicesProvider
  , servicesMenu
  , setServicesMenu
  , fullKeyboardAccessEnabled
  , windowsMenu
  , setWindowsMenu
  , currentEvent
  , appearance
  , setAppearance
  , effectiveAppearance
  , abortModalSelector
  , activateContextHelpModeSelector
  , activateIgnoringOtherAppsSelector
  , activationPolicySelector
  , activeSelector
  , addWindowsItem_title_filenameSelector
  , appearanceSelector
  , applicationIconImageSelector
  , application_printFilesSelector
  , arrangeInFrontSelector
  , automaticCustomizeTouchBarMenuItemEnabledSelector
  , beginModalSessionForWindowSelector
  , beginModalSessionForWindow_relativeToWindowSelector
  , beginSheet_modalForWindow_modalDelegate_didEndSelector_contextInfoSelector
  , cancelUserAttentionRequestSelector
  , changeWindowsItem_title_filenameSelector
  , completeStateRestorationSelector
  , contextSelector
  , currentEventSelector
  , currentSystemPresentationOptionsSelector
  , deactivateSelector
  , delegateSelector
  , detachDrawingThread_toTarget_withObjectSelector
  , disableRelaunchOnLoginSelector
  , discardEventsMatchingMask_beforeEventSelector
  , dockTileSelector
  , effectiveAppearanceSelector
  , enableRelaunchOnLoginSelector
  , enabledRemoteNotificationTypesSelector
  , endModalSessionSelector
  , endSheetSelector
  , endSheet_returnCodeSelector
  , enumerateWindowsWithOptions_usingBlockSelector
  , extendStateRestorationSelector
  , finishLaunchingSelector
  , fullKeyboardAccessEnabledSelector
  , helpMenuSelector
  , hiddenSelector
  , hideOtherApplicationsSelector
  , hideSelector
  , keyWindowSelector
  , mainMenuSelector
  , mainWindowSelector
  , makeWindowsPerform_inOrderSelector
  , miniaturizeAllSelector
  , modalWindowSelector
  , nextEventMatchingMask_untilDate_inMode_dequeueSelector
  , occlusionStateSelector
  , orderFrontCharacterPaletteSelector
  , orderFrontColorPanelSelector
  , orderFrontStandardAboutPanelSelector
  , orderFrontStandardAboutPanelWithOptionsSelector
  , orderedDocumentsSelector
  , orderedWindowsSelector
  , postEvent_atStartSelector
  , presentationOptionsSelector
  , preventWindowOrderingSelector
  , protectedDataAvailableSelector
  , registerForRemoteNotificationTypesSelector
  , registerForRemoteNotificationsSelector
  , registerServicesMenuSendTypes_returnTypesSelector
  , registerUserInterfaceItemSearchHandlerSelector
  , registeredForRemoteNotificationsSelector
  , removeWindowsItemSelector
  , replyToApplicationShouldTerminateSelector
  , replyToOpenOrPrintSelector
  , reportExceptionSelector
  , requestUserAttentionSelector
  , restoreWindowWithIdentifier_state_completionHandlerSelector
  , runModalForWindowSelector
  , runModalForWindow_relativeToWindowSelector
  , runModalSessionSelector
  , runPageLayoutSelector
  , runSelector
  , runningSelector
  , searchString_inUserInterfaceItemString_searchRange_foundRangeSelector
  , sendAction_to_fromSelector
  , sendEventSelector
  , servicesMenuSelector
  , servicesProviderSelector
  , setActivationPolicySelector
  , setAppearanceSelector
  , setApplicationIconImageSelector
  , setAutomaticCustomizeTouchBarMenuItemEnabledSelector
  , setDelegateSelector
  , setHelpMenuSelector
  , setMainMenuSelector
  , setPresentationOptionsSelector
  , setServicesMenuSelector
  , setServicesProviderSelector
  , setWindowsMenuSelector
  , setWindowsNeedUpdateSelector
  , sharedApplicationSelector
  , showHelpSelector
  , stopModalSelector
  , stopModalWithCodeSelector
  , stopSelector
  , targetForActionSelector
  , targetForAction_to_fromSelector
  , terminateSelector
  , toggleTouchBarCustomizationPaletteSelector
  , tryToPerform_withSelector
  , unhideAllApplicationsSelector
  , unhideSelector
  , unhideWithoutActivationSelector
  , unregisterForRemoteNotificationsSelector
  , unregisterUserInterfaceItemSearchHandlerSelector
  , updateWindowsItemSelector
  , updateWindowsSelector
  , userInterfaceLayoutDirectionSelector
  , validRequestorForSendType_returnTypeSelector
  , windowWithWindowNumberSelector
  , windowsMenuSelector
  , windowsSelector

  -- * Enum types
  , NSApplicationActivationPolicy(NSApplicationActivationPolicy)
  , pattern NSApplicationActivationPolicyRegular
  , pattern NSApplicationActivationPolicyAccessory
  , pattern NSApplicationActivationPolicyProhibited
  , NSApplicationDelegateReply(NSApplicationDelegateReply)
  , pattern NSApplicationDelegateReplySuccess
  , pattern NSApplicationDelegateReplyCancel
  , pattern NSApplicationDelegateReplyFailure
  , NSApplicationOcclusionState(NSApplicationOcclusionState)
  , pattern NSApplicationOcclusionStateVisible
  , NSApplicationPresentationOptions(NSApplicationPresentationOptions)
  , pattern NSApplicationPresentationDefault
  , pattern NSApplicationPresentationAutoHideDock
  , pattern NSApplicationPresentationHideDock
  , pattern NSApplicationPresentationAutoHideMenuBar
  , pattern NSApplicationPresentationHideMenuBar
  , pattern NSApplicationPresentationDisableAppleMenu
  , pattern NSApplicationPresentationDisableProcessSwitching
  , pattern NSApplicationPresentationDisableForceQuit
  , pattern NSApplicationPresentationDisableSessionTermination
  , pattern NSApplicationPresentationDisableHideApplication
  , pattern NSApplicationPresentationDisableMenuBarTransparency
  , pattern NSApplicationPresentationFullScreen
  , pattern NSApplicationPresentationAutoHideToolbar
  , pattern NSApplicationPresentationDisableCursorLocationAssistance
  , NSEventMask(NSEventMask)
  , pattern NSEventMaskLeftMouseDown
  , pattern NSEventMaskLeftMouseUp
  , pattern NSEventMaskRightMouseDown
  , pattern NSEventMaskRightMouseUp
  , pattern NSEventMaskMouseMoved
  , pattern NSEventMaskLeftMouseDragged
  , pattern NSEventMaskRightMouseDragged
  , pattern NSEventMaskMouseEntered
  , pattern NSEventMaskMouseExited
  , pattern NSEventMaskKeyDown
  , pattern NSEventMaskKeyUp
  , pattern NSEventMaskFlagsChanged
  , pattern NSEventMaskAppKitDefined
  , pattern NSEventMaskSystemDefined
  , pattern NSEventMaskApplicationDefined
  , pattern NSEventMaskPeriodic
  , pattern NSEventMaskCursorUpdate
  , pattern NSEventMaskScrollWheel
  , pattern NSEventMaskTabletPoint
  , pattern NSEventMaskTabletProximity
  , pattern NSEventMaskOtherMouseDown
  , pattern NSEventMaskOtherMouseUp
  , pattern NSEventMaskOtherMouseDragged
  , pattern NSEventMaskGesture
  , pattern NSEventMaskMagnify
  , pattern NSEventMaskSwipe
  , pattern NSEventMaskRotate
  , pattern NSEventMaskBeginGesture
  , pattern NSEventMaskEndGesture
  , pattern NSEventMaskSmartMagnify
  , pattern NSEventMaskPressure
  , pattern NSEventMaskDirectTouch
  , pattern NSEventMaskChangeMode
  , pattern NSEventMaskAny
  , NSRemoteNotificationType(NSRemoteNotificationType)
  , pattern NSRemoteNotificationTypeNone
  , pattern NSRemoteNotificationTypeBadge
  , pattern NSRemoteNotificationTypeSound
  , pattern NSRemoteNotificationTypeAlert
  , NSRequestUserAttentionType(NSRequestUserAttentionType)
  , pattern NSCriticalRequest
  , pattern NSInformationalRequest
  , NSUserInterfaceLayoutDirection(NSUserInterfaceLayoutDirection)
  , pattern NSUserInterfaceLayoutDirectionLeftToRight
  , pattern NSUserInterfaceLayoutDirectionRightToLeft
  , NSWindowListOptions(NSWindowListOptions)
  , pattern NSWindowListOrderedFrontToBack

  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AppKit.Internal.Classes
import ObjC.Foundation.Internal.Structs
import ObjC.AppKit.Internal.Enums
import ObjC.Foundation.Internal.Classes

-- | @- hide:@
hide :: IsNSApplication nsApplication => nsApplication -> RawId -> IO ()
hide nsApplication sender =
  sendMessage nsApplication hideSelector sender

-- | @- unhide:@
unhide :: IsNSApplication nsApplication => nsApplication -> RawId -> IO ()
unhide nsApplication sender =
  sendMessage nsApplication unhideSelector sender

-- | @- unhideWithoutActivation@
unhideWithoutActivation :: IsNSApplication nsApplication => nsApplication -> IO ()
unhideWithoutActivation nsApplication =
  sendMessage nsApplication unhideWithoutActivationSelector

-- | @- windowWithWindowNumber:@
windowWithWindowNumber :: IsNSApplication nsApplication => nsApplication -> CLong -> IO (Id NSWindow)
windowWithWindowNumber nsApplication windowNum =
  sendMessage nsApplication windowWithWindowNumberSelector windowNum

-- | @- deactivate@
deactivate :: IsNSApplication nsApplication => nsApplication -> IO ()
deactivate nsApplication =
  sendMessage nsApplication deactivateSelector

-- | @- activateIgnoringOtherApps:@
activateIgnoringOtherApps :: IsNSApplication nsApplication => nsApplication -> Bool -> IO ()
activateIgnoringOtherApps nsApplication flag =
  sendMessage nsApplication activateIgnoringOtherAppsSelector flag

-- | @- hideOtherApplications:@
hideOtherApplications :: IsNSApplication nsApplication => nsApplication -> RawId -> IO ()
hideOtherApplications nsApplication sender =
  sendMessage nsApplication hideOtherApplicationsSelector sender

-- | @- unhideAllApplications:@
unhideAllApplications :: IsNSApplication nsApplication => nsApplication -> RawId -> IO ()
unhideAllApplications nsApplication sender =
  sendMessage nsApplication unhideAllApplicationsSelector sender

-- | @- finishLaunching@
finishLaunching :: IsNSApplication nsApplication => nsApplication -> IO ()
finishLaunching nsApplication =
  sendMessage nsApplication finishLaunchingSelector

-- | @- run@
run :: IsNSApplication nsApplication => nsApplication -> IO ()
run nsApplication =
  sendMessage nsApplication runSelector

-- | @- runModalForWindow:@
runModalForWindow :: (IsNSApplication nsApplication, IsNSWindow window) => nsApplication -> window -> IO CLong
runModalForWindow nsApplication window =
  sendMessage nsApplication runModalForWindowSelector (toNSWindow window)

-- | @- stop:@
stop :: IsNSApplication nsApplication => nsApplication -> RawId -> IO ()
stop nsApplication sender =
  sendMessage nsApplication stopSelector sender

-- | @- stopModal@
stopModal :: IsNSApplication nsApplication => nsApplication -> IO ()
stopModal nsApplication =
  sendMessage nsApplication stopModalSelector

-- | @- stopModalWithCode:@
stopModalWithCode :: IsNSApplication nsApplication => nsApplication -> CLong -> IO ()
stopModalWithCode nsApplication returnCode =
  sendMessage nsApplication stopModalWithCodeSelector returnCode

-- | @- abortModal@
abortModal :: IsNSApplication nsApplication => nsApplication -> IO ()
abortModal nsApplication =
  sendMessage nsApplication abortModalSelector

-- | @- beginModalSessionForWindow:@
beginModalSessionForWindow :: (IsNSApplication nsApplication, IsNSWindow window) => nsApplication -> window -> IO (Ptr ())
beginModalSessionForWindow nsApplication window =
  sendMessage nsApplication beginModalSessionForWindowSelector (toNSWindow window)

-- | @- runModalSession:@
runModalSession :: IsNSApplication nsApplication => nsApplication -> Ptr () -> IO CLong
runModalSession nsApplication session =
  sendMessage nsApplication runModalSessionSelector session

-- | @- endModalSession:@
endModalSession :: IsNSApplication nsApplication => nsApplication -> Ptr () -> IO ()
endModalSession nsApplication session =
  sendMessage nsApplication endModalSessionSelector session

-- | @- terminate:@
terminate :: IsNSApplication nsApplication => nsApplication -> RawId -> IO ()
terminate nsApplication sender =
  sendMessage nsApplication terminateSelector sender

-- | @- requestUserAttention:@
requestUserAttention :: IsNSApplication nsApplication => nsApplication -> NSRequestUserAttentionType -> IO CLong
requestUserAttention nsApplication requestType =
  sendMessage nsApplication requestUserAttentionSelector requestType

-- | @- cancelUserAttentionRequest:@
cancelUserAttentionRequest :: IsNSApplication nsApplication => nsApplication -> CLong -> IO ()
cancelUserAttentionRequest nsApplication request =
  sendMessage nsApplication cancelUserAttentionRequestSelector request

-- | @- enumerateWindowsWithOptions:usingBlock:@
enumerateWindowsWithOptions_usingBlock :: IsNSApplication nsApplication => nsApplication -> NSWindowListOptions -> Ptr () -> IO ()
enumerateWindowsWithOptions_usingBlock nsApplication options block =
  sendMessage nsApplication enumerateWindowsWithOptions_usingBlockSelector options block

-- | @- preventWindowOrdering@
preventWindowOrdering :: IsNSApplication nsApplication => nsApplication -> IO ()
preventWindowOrdering nsApplication =
  sendMessage nsApplication preventWindowOrderingSelector

-- | @- setWindowsNeedUpdate:@
setWindowsNeedUpdate :: IsNSApplication nsApplication => nsApplication -> Bool -> IO ()
setWindowsNeedUpdate nsApplication needUpdate =
  sendMessage nsApplication setWindowsNeedUpdateSelector needUpdate

-- | @- updateWindows@
updateWindows :: IsNSApplication nsApplication => nsApplication -> IO ()
updateWindows nsApplication =
  sendMessage nsApplication updateWindowsSelector

-- | @- activationPolicy@
activationPolicy :: IsNSApplication nsApplication => nsApplication -> IO NSApplicationActivationPolicy
activationPolicy nsApplication =
  sendMessage nsApplication activationPolicySelector

-- | @- setActivationPolicy:@
setActivationPolicy :: IsNSApplication nsApplication => nsApplication -> NSApplicationActivationPolicy -> IO Bool
setActivationPolicy nsApplication activationPolicy =
  sendMessage nsApplication setActivationPolicySelector activationPolicy

-- | @- reportException:@
reportException :: (IsNSApplication nsApplication, IsNSException exception) => nsApplication -> exception -> IO ()
reportException nsApplication exception =
  sendMessage nsApplication reportExceptionSelector (toNSException exception)

-- | @+ detachDrawingThread:toTarget:withObject:@
detachDrawingThread_toTarget_withObject :: Sel -> RawId -> RawId -> IO ()
detachDrawingThread_toTarget_withObject selector target argument =
  do
    cls' <- getRequiredClass "NSApplication"
    sendClassMessage cls' detachDrawingThread_toTarget_withObjectSelector selector target argument

-- | @- replyToApplicationShouldTerminate:@
replyToApplicationShouldTerminate :: IsNSApplication nsApplication => nsApplication -> Bool -> IO ()
replyToApplicationShouldTerminate nsApplication shouldTerminate =
  sendMessage nsApplication replyToApplicationShouldTerminateSelector shouldTerminate

-- | @- replyToOpenOrPrint:@
replyToOpenOrPrint :: IsNSApplication nsApplication => nsApplication -> NSApplicationDelegateReply -> IO ()
replyToOpenOrPrint nsApplication reply =
  sendMessage nsApplication replyToOpenOrPrintSelector reply

-- | @- orderFrontCharacterPalette:@
orderFrontCharacterPalette :: IsNSApplication nsApplication => nsApplication -> RawId -> IO ()
orderFrontCharacterPalette nsApplication sender =
  sendMessage nsApplication orderFrontCharacterPaletteSelector sender

-- | @- extendStateRestoration@
extendStateRestoration :: IsNSApplication nsApplication => nsApplication -> IO ()
extendStateRestoration nsApplication =
  sendMessage nsApplication extendStateRestorationSelector

-- | @- completeStateRestoration@
completeStateRestoration :: IsNSApplication nsApplication => nsApplication -> IO ()
completeStateRestoration nsApplication =
  sendMessage nsApplication completeStateRestorationSelector

-- | @- restoreWindowWithIdentifier:state:completionHandler:@
restoreWindowWithIdentifier_state_completionHandler :: (IsNSApplication nsApplication, IsNSString identifier, IsNSCoder state) => nsApplication -> identifier -> state -> Ptr () -> IO Bool
restoreWindowWithIdentifier_state_completionHandler nsApplication identifier state completionHandler =
  sendMessage nsApplication restoreWindowWithIdentifier_state_completionHandlerSelector (toNSString identifier) (toNSCoder state) completionHandler

-- | @- registerUserInterfaceItemSearchHandler:@
registerUserInterfaceItemSearchHandler :: IsNSApplication nsApplication => nsApplication -> RawId -> IO ()
registerUserInterfaceItemSearchHandler nsApplication handler =
  sendMessage nsApplication registerUserInterfaceItemSearchHandlerSelector handler

-- | @- unregisterUserInterfaceItemSearchHandler:@
unregisterUserInterfaceItemSearchHandler :: IsNSApplication nsApplication => nsApplication -> RawId -> IO ()
unregisterUserInterfaceItemSearchHandler nsApplication handler =
  sendMessage nsApplication unregisterUserInterfaceItemSearchHandlerSelector handler

-- | @- searchString:inUserInterfaceItemString:searchRange:foundRange:@
searchString_inUserInterfaceItemString_searchRange_foundRange :: (IsNSApplication nsApplication, IsNSString searchString, IsNSString stringToSearch) => nsApplication -> searchString -> stringToSearch -> NSRange -> Ptr NSRange -> IO Bool
searchString_inUserInterfaceItemString_searchRange_foundRange nsApplication searchString stringToSearch searchRange foundRange =
  sendMessage nsApplication searchString_inUserInterfaceItemString_searchRange_foundRangeSelector (toNSString searchString) (toNSString stringToSearch) searchRange foundRange

-- | @- runPageLayout:@
runPageLayout :: IsNSApplication nsApplication => nsApplication -> RawId -> IO ()
runPageLayout nsApplication sender =
  sendMessage nsApplication runPageLayoutSelector sender

-- | @- orderFrontColorPanel:@
orderFrontColorPanel :: IsNSApplication nsApplication => nsApplication -> RawId -> IO ()
orderFrontColorPanel nsApplication sender =
  sendMessage nsApplication orderFrontColorPanelSelector sender

-- | Show or dismiss the customization palette for the currently displayed NSTouchBars. NSApplication validates this selector against whether the current NSTouchBars are customizable and, if configured on a menu item, will standardize and localize the title. If the current system does not have Touch Bar support, the menu item will be automatically hidden.
--
-- ObjC selector: @- toggleTouchBarCustomizationPalette:@
toggleTouchBarCustomizationPalette :: IsNSApplication nsApplication => nsApplication -> RawId -> IO ()
toggleTouchBarCustomizationPalette nsApplication sender =
  sendMessage nsApplication toggleTouchBarCustomizationPaletteSelector sender

-- | @- activateContextHelpMode:@
activateContextHelpMode :: IsNSApplication nsApplication => nsApplication -> RawId -> IO ()
activateContextHelpMode nsApplication sender =
  sendMessage nsApplication activateContextHelpModeSelector sender

-- | @- showHelp:@
showHelp :: IsNSApplication nsApplication => nsApplication -> RawId -> IO ()
showHelp nsApplication sender =
  sendMessage nsApplication showHelpSelector sender

-- | @- runModalForWindow:relativeToWindow:@
runModalForWindow_relativeToWindow :: (IsNSApplication nsApplication, IsNSWindow window, IsNSWindow docWindow) => nsApplication -> window -> docWindow -> IO CLong
runModalForWindow_relativeToWindow nsApplication window docWindow =
  sendMessage nsApplication runModalForWindow_relativeToWindowSelector (toNSWindow window) (toNSWindow docWindow)

-- | @- beginModalSessionForWindow:relativeToWindow:@
beginModalSessionForWindow_relativeToWindow :: (IsNSApplication nsApplication, IsNSWindow window, IsNSWindow docWindow) => nsApplication -> window -> docWindow -> IO (Ptr ())
beginModalSessionForWindow_relativeToWindow nsApplication window docWindow =
  sendMessage nsApplication beginModalSessionForWindow_relativeToWindowSelector (toNSWindow window) (toNSWindow docWindow)

-- | @- application:printFiles:@
application_printFiles :: (IsNSApplication nsApplication, IsNSApplication sender, IsNSArray filenames) => nsApplication -> sender -> filenames -> IO ()
application_printFiles nsApplication sender filenames =
  sendMessage nsApplication application_printFilesSelector (toNSApplication sender) (toNSArray filenames)

-- | @- beginSheet:modalForWindow:modalDelegate:didEndSelector:contextInfo:@
beginSheet_modalForWindow_modalDelegate_didEndSelector_contextInfo :: (IsNSApplication nsApplication, IsNSWindow sheet, IsNSWindow docWindow) => nsApplication -> sheet -> docWindow -> RawId -> Sel -> Ptr () -> IO ()
beginSheet_modalForWindow_modalDelegate_didEndSelector_contextInfo nsApplication sheet docWindow modalDelegate didEndSelector contextInfo =
  sendMessage nsApplication beginSheet_modalForWindow_modalDelegate_didEndSelector_contextInfoSelector (toNSWindow sheet) (toNSWindow docWindow) modalDelegate didEndSelector contextInfo

-- | @- endSheet:@
endSheet :: (IsNSApplication nsApplication, IsNSWindow sheet) => nsApplication -> sheet -> IO ()
endSheet nsApplication sheet =
  sendMessage nsApplication endSheetSelector (toNSWindow sheet)

-- | @- endSheet:returnCode:@
endSheet_returnCode :: (IsNSApplication nsApplication, IsNSWindow sheet) => nsApplication -> sheet -> CLong -> IO ()
endSheet_returnCode nsApplication sheet returnCode =
  sendMessage nsApplication endSheet_returnCodeSelector (toNSWindow sheet) returnCode

-- | @- makeWindowsPerform:inOrder:@
makeWindowsPerform_inOrder :: IsNSApplication nsApplication => nsApplication -> Sel -> Bool -> IO (Id NSWindow)
makeWindowsPerform_inOrder nsApplication selector flag =
  sendMessage nsApplication makeWindowsPerform_inOrderSelector selector flag

-- | @- registerForRemoteNotifications@
registerForRemoteNotifications :: IsNSApplication nsApplication => nsApplication -> IO ()
registerForRemoteNotifications nsApplication =
  sendMessage nsApplication registerForRemoteNotificationsSelector

-- | @- unregisterForRemoteNotifications@
unregisterForRemoteNotifications :: IsNSApplication nsApplication => nsApplication -> IO ()
unregisterForRemoteNotifications nsApplication =
  sendMessage nsApplication unregisterForRemoteNotificationsSelector

-- | @- registerForRemoteNotificationTypes:@
registerForRemoteNotificationTypes :: IsNSApplication nsApplication => nsApplication -> NSRemoteNotificationType -> IO ()
registerForRemoteNotificationTypes nsApplication types =
  sendMessage nsApplication registerForRemoteNotificationTypesSelector types

-- | @- disableRelaunchOnLogin@
disableRelaunchOnLogin :: IsNSApplication nsApplication => nsApplication -> IO ()
disableRelaunchOnLogin nsApplication =
  sendMessage nsApplication disableRelaunchOnLoginSelector

-- | @- enableRelaunchOnLogin@
enableRelaunchOnLogin :: IsNSApplication nsApplication => nsApplication -> IO ()
enableRelaunchOnLogin nsApplication =
  sendMessage nsApplication enableRelaunchOnLoginSelector

-- | @- orderFrontStandardAboutPanel:@
orderFrontStandardAboutPanel :: IsNSApplication nsApplication => nsApplication -> RawId -> IO ()
orderFrontStandardAboutPanel nsApplication sender =
  sendMessage nsApplication orderFrontStandardAboutPanelSelector sender

-- | @- orderFrontStandardAboutPanelWithOptions:@
orderFrontStandardAboutPanelWithOptions :: (IsNSApplication nsApplication, IsNSDictionary optionsDictionary) => nsApplication -> optionsDictionary -> IO ()
orderFrontStandardAboutPanelWithOptions nsApplication optionsDictionary =
  sendMessage nsApplication orderFrontStandardAboutPanelWithOptionsSelector (toNSDictionary optionsDictionary)

-- | @- registerServicesMenuSendTypes:returnTypes:@
registerServicesMenuSendTypes_returnTypes :: (IsNSApplication nsApplication, IsNSArray sendTypes, IsNSArray returnTypes) => nsApplication -> sendTypes -> returnTypes -> IO ()
registerServicesMenuSendTypes_returnTypes nsApplication sendTypes returnTypes =
  sendMessage nsApplication registerServicesMenuSendTypes_returnTypesSelector (toNSArray sendTypes) (toNSArray returnTypes)

-- | @- arrangeInFront:@
arrangeInFront :: IsNSApplication nsApplication => nsApplication -> RawId -> IO ()
arrangeInFront nsApplication sender =
  sendMessage nsApplication arrangeInFrontSelector sender

-- | @- removeWindowsItem:@
removeWindowsItem :: (IsNSApplication nsApplication, IsNSWindow win) => nsApplication -> win -> IO ()
removeWindowsItem nsApplication win =
  sendMessage nsApplication removeWindowsItemSelector (toNSWindow win)

-- | @- addWindowsItem:title:filename:@
addWindowsItem_title_filename :: (IsNSApplication nsApplication, IsNSWindow win, IsNSString string) => nsApplication -> win -> string -> Bool -> IO ()
addWindowsItem_title_filename nsApplication win string isFilename =
  sendMessage nsApplication addWindowsItem_title_filenameSelector (toNSWindow win) (toNSString string) isFilename

-- | @- changeWindowsItem:title:filename:@
changeWindowsItem_title_filename :: (IsNSApplication nsApplication, IsNSWindow win, IsNSString string) => nsApplication -> win -> string -> Bool -> IO ()
changeWindowsItem_title_filename nsApplication win string isFilename =
  sendMessage nsApplication changeWindowsItem_title_filenameSelector (toNSWindow win) (toNSString string) isFilename

-- | @- updateWindowsItem:@
updateWindowsItem :: (IsNSApplication nsApplication, IsNSWindow win) => nsApplication -> win -> IO ()
updateWindowsItem nsApplication win =
  sendMessage nsApplication updateWindowsItemSelector (toNSWindow win)

-- | @- miniaturizeAll:@
miniaturizeAll :: IsNSApplication nsApplication => nsApplication -> RawId -> IO ()
miniaturizeAll nsApplication sender =
  sendMessage nsApplication miniaturizeAllSelector sender

-- | @- sendAction:to:from:@
sendAction_to_from :: IsNSApplication nsApplication => nsApplication -> Sel -> RawId -> RawId -> IO Bool
sendAction_to_from nsApplication action target sender =
  sendMessage nsApplication sendAction_to_fromSelector action target sender

-- | @- targetForAction:@
targetForAction :: IsNSApplication nsApplication => nsApplication -> Sel -> IO RawId
targetForAction nsApplication action =
  sendMessage nsApplication targetForActionSelector action

-- | @- targetForAction:to:from:@
targetForAction_to_from :: IsNSApplication nsApplication => nsApplication -> Sel -> RawId -> RawId -> IO RawId
targetForAction_to_from nsApplication action target sender =
  sendMessage nsApplication targetForAction_to_fromSelector action target sender

-- | @- tryToPerform:with:@
tryToPerform_with :: IsNSApplication nsApplication => nsApplication -> Sel -> RawId -> IO Bool
tryToPerform_with nsApplication action object =
  sendMessage nsApplication tryToPerform_withSelector action object

-- | @- validRequestorForSendType:returnType:@
validRequestorForSendType_returnType :: (IsNSApplication nsApplication, IsNSString sendType, IsNSString returnType) => nsApplication -> sendType -> returnType -> IO RawId
validRequestorForSendType_returnType nsApplication sendType returnType =
  sendMessage nsApplication validRequestorForSendType_returnTypeSelector (toNSString sendType) (toNSString returnType)

-- | @- sendEvent:@
sendEvent :: (IsNSApplication nsApplication, IsNSEvent event) => nsApplication -> event -> IO ()
sendEvent nsApplication event =
  sendMessage nsApplication sendEventSelector (toNSEvent event)

-- | @- postEvent:atStart:@
postEvent_atStart :: (IsNSApplication nsApplication, IsNSEvent event) => nsApplication -> event -> Bool -> IO ()
postEvent_atStart nsApplication event flag =
  sendMessage nsApplication postEvent_atStartSelector (toNSEvent event) flag

-- | @- nextEventMatchingMask:untilDate:inMode:dequeue:@
nextEventMatchingMask_untilDate_inMode_dequeue :: (IsNSApplication nsApplication, IsNSDate expiration, IsNSString mode) => nsApplication -> NSEventMask -> expiration -> mode -> Bool -> IO (Id NSEvent)
nextEventMatchingMask_untilDate_inMode_dequeue nsApplication mask expiration mode deqFlag =
  sendMessage nsApplication nextEventMatchingMask_untilDate_inMode_dequeueSelector mask (toNSDate expiration) (toNSString mode) deqFlag

-- | @- discardEventsMatchingMask:beforeEvent:@
discardEventsMatchingMask_beforeEvent :: (IsNSApplication nsApplication, IsNSEvent lastEvent) => nsApplication -> NSEventMask -> lastEvent -> IO ()
discardEventsMatchingMask_beforeEvent nsApplication mask lastEvent =
  sendMessage nsApplication discardEventsMatchingMask_beforeEventSelector mask (toNSEvent lastEvent)

-- | @+ sharedApplication@
sharedApplication :: IO (Id NSApplication)
sharedApplication  =
  do
    cls' <- getRequiredClass "NSApplication"
    sendClassMessage cls' sharedApplicationSelector

-- | @- delegate@
delegate :: IsNSApplication nsApplication => nsApplication -> IO RawId
delegate nsApplication =
  sendMessage nsApplication delegateSelector

-- | @- setDelegate:@
setDelegate :: IsNSApplication nsApplication => nsApplication -> RawId -> IO ()
setDelegate nsApplication value =
  sendMessage nsApplication setDelegateSelector value

-- | @- mainWindow@
mainWindow :: IsNSApplication nsApplication => nsApplication -> IO (Id NSWindow)
mainWindow nsApplication =
  sendMessage nsApplication mainWindowSelector

-- | @- keyWindow@
keyWindow :: IsNSApplication nsApplication => nsApplication -> IO (Id NSWindow)
keyWindow nsApplication =
  sendMessage nsApplication keyWindowSelector

-- | @- active@
active :: IsNSApplication nsApplication => nsApplication -> IO Bool
active nsApplication =
  sendMessage nsApplication activeSelector

-- | @- hidden@
hidden :: IsNSApplication nsApplication => nsApplication -> IO Bool
hidden nsApplication =
  sendMessage nsApplication hiddenSelector

-- | @- running@
running :: IsNSApplication nsApplication => nsApplication -> IO Bool
running nsApplication =
  sendMessage nsApplication runningSelector

-- | @- modalWindow@
modalWindow :: IsNSApplication nsApplication => nsApplication -> IO (Id NSWindow)
modalWindow nsApplication =
  sendMessage nsApplication modalWindowSelector

-- | @- windows@
windows :: IsNSApplication nsApplication => nsApplication -> IO (Id NSArray)
windows nsApplication =
  sendMessage nsApplication windowsSelector

-- | @- mainMenu@
mainMenu :: IsNSApplication nsApplication => nsApplication -> IO (Id NSMenu)
mainMenu nsApplication =
  sendMessage nsApplication mainMenuSelector

-- | @- setMainMenu:@
setMainMenu :: (IsNSApplication nsApplication, IsNSMenu value) => nsApplication -> value -> IO ()
setMainMenu nsApplication value =
  sendMessage nsApplication setMainMenuSelector (toNSMenu value)

-- | @- helpMenu@
helpMenu :: IsNSApplication nsApplication => nsApplication -> IO RawId
helpMenu nsApplication =
  sendMessage nsApplication helpMenuSelector

-- | @- setHelpMenu:@
setHelpMenu :: IsNSApplication nsApplication => nsApplication -> RawId -> IO ()
setHelpMenu nsApplication value =
  sendMessage nsApplication setHelpMenuSelector value

-- | @- applicationIconImage@
applicationIconImage :: IsNSApplication nsApplication => nsApplication -> IO (Id NSImage)
applicationIconImage nsApplication =
  sendMessage nsApplication applicationIconImageSelector

-- | @- setApplicationIconImage:@
setApplicationIconImage :: (IsNSApplication nsApplication, IsNSImage value) => nsApplication -> value -> IO ()
setApplicationIconImage nsApplication value =
  sendMessage nsApplication setApplicationIconImageSelector (toNSImage value)

-- | @- dockTile@
dockTile :: IsNSApplication nsApplication => nsApplication -> IO RawId
dockTile nsApplication =
  sendMessage nsApplication dockTileSelector

-- | @- presentationOptions@
presentationOptions :: IsNSApplication nsApplication => nsApplication -> IO NSApplicationPresentationOptions
presentationOptions nsApplication =
  sendMessage nsApplication presentationOptionsSelector

-- | @- setPresentationOptions:@
setPresentationOptions :: IsNSApplication nsApplication => nsApplication -> NSApplicationPresentationOptions -> IO ()
setPresentationOptions nsApplication value =
  sendMessage nsApplication setPresentationOptionsSelector value

-- | @- currentSystemPresentationOptions@
currentSystemPresentationOptions :: IsNSApplication nsApplication => nsApplication -> IO NSApplicationPresentationOptions
currentSystemPresentationOptions nsApplication =
  sendMessage nsApplication currentSystemPresentationOptionsSelector

-- | @- occlusionState@
occlusionState :: IsNSApplication nsApplication => nsApplication -> IO NSApplicationOcclusionState
occlusionState nsApplication =
  sendMessage nsApplication occlusionStateSelector

-- | @- protectedDataAvailable@
protectedDataAvailable :: IsNSApplication nsApplication => nsApplication -> IO Bool
protectedDataAvailable nsApplication =
  sendMessage nsApplication protectedDataAvailableSelector

-- | @- orderedDocuments@
orderedDocuments :: IsNSApplication nsApplication => nsApplication -> IO (Id NSArray)
orderedDocuments nsApplication =
  sendMessage nsApplication orderedDocumentsSelector

-- | @- orderedWindows@
orderedWindows :: IsNSApplication nsApplication => nsApplication -> IO (Id NSArray)
orderedWindows nsApplication =
  sendMessage nsApplication orderedWindowsSelector

-- | Whether or not a menu item to customize the NSTouchBar can be automatically added to the main menu. It will only actually be added when Touch Bar hardware or simulator is present. Defaults to NO. Setting this property to YES is the recommended way to add the customization menu item. But if non-standard placement of the menu item is needed, creating a menu item with an action of @toggleTouchBarCustomizationPalette:@ can be used instead.
--
-- ObjC selector: @- automaticCustomizeTouchBarMenuItemEnabled@
automaticCustomizeTouchBarMenuItemEnabled :: IsNSApplication nsApplication => nsApplication -> IO Bool
automaticCustomizeTouchBarMenuItemEnabled nsApplication =
  sendMessage nsApplication automaticCustomizeTouchBarMenuItemEnabledSelector

-- | Whether or not a menu item to customize the NSTouchBar can be automatically added to the main menu. It will only actually be added when Touch Bar hardware or simulator is present. Defaults to NO. Setting this property to YES is the recommended way to add the customization menu item. But if non-standard placement of the menu item is needed, creating a menu item with an action of @toggleTouchBarCustomizationPalette:@ can be used instead.
--
-- ObjC selector: @- setAutomaticCustomizeTouchBarMenuItemEnabled:@
setAutomaticCustomizeTouchBarMenuItemEnabled :: IsNSApplication nsApplication => nsApplication -> Bool -> IO ()
setAutomaticCustomizeTouchBarMenuItemEnabled nsApplication value =
  sendMessage nsApplication setAutomaticCustomizeTouchBarMenuItemEnabledSelector value

-- | @- context@
context :: IsNSApplication nsApplication => nsApplication -> IO RawId
context nsApplication =
  sendMessage nsApplication contextSelector

-- | @- registeredForRemoteNotifications@
registeredForRemoteNotifications :: IsNSApplication nsApplication => nsApplication -> IO Bool
registeredForRemoteNotifications nsApplication =
  sendMessage nsApplication registeredForRemoteNotificationsSelector

-- | @- enabledRemoteNotificationTypes@
enabledRemoteNotificationTypes :: IsNSApplication nsApplication => nsApplication -> IO NSRemoteNotificationType
enabledRemoteNotificationTypes nsApplication =
  sendMessage nsApplication enabledRemoteNotificationTypesSelector

-- | @- userInterfaceLayoutDirection@
userInterfaceLayoutDirection :: IsNSApplication nsApplication => nsApplication -> IO NSUserInterfaceLayoutDirection
userInterfaceLayoutDirection nsApplication =
  sendMessage nsApplication userInterfaceLayoutDirectionSelector

-- | @- servicesProvider@
servicesProvider :: IsNSApplication nsApplication => nsApplication -> IO RawId
servicesProvider nsApplication =
  sendMessage nsApplication servicesProviderSelector

-- | @- setServicesProvider:@
setServicesProvider :: IsNSApplication nsApplication => nsApplication -> RawId -> IO ()
setServicesProvider nsApplication value =
  sendMessage nsApplication setServicesProviderSelector value

-- | @- servicesMenu@
servicesMenu :: IsNSApplication nsApplication => nsApplication -> IO (Id NSMenu)
servicesMenu nsApplication =
  sendMessage nsApplication servicesMenuSelector

-- | @- setServicesMenu:@
setServicesMenu :: (IsNSApplication nsApplication, IsNSMenu value) => nsApplication -> value -> IO ()
setServicesMenu nsApplication value =
  sendMessage nsApplication setServicesMenuSelector (toNSMenu value)

-- | @- fullKeyboardAccessEnabled@
fullKeyboardAccessEnabled :: IsNSApplication nsApplication => nsApplication -> IO Bool
fullKeyboardAccessEnabled nsApplication =
  sendMessage nsApplication fullKeyboardAccessEnabledSelector

-- | @- windowsMenu@
windowsMenu :: IsNSApplication nsApplication => nsApplication -> IO (Id NSMenu)
windowsMenu nsApplication =
  sendMessage nsApplication windowsMenuSelector

-- | @- setWindowsMenu:@
setWindowsMenu :: (IsNSApplication nsApplication, IsNSMenu value) => nsApplication -> value -> IO ()
setWindowsMenu nsApplication value =
  sendMessage nsApplication setWindowsMenuSelector (toNSMenu value)

-- | @- currentEvent@
currentEvent :: IsNSApplication nsApplication => nsApplication -> IO (Id NSEvent)
currentEvent nsApplication =
  sendMessage nsApplication currentEventSelector

-- | @- appearance@
appearance :: IsNSApplication nsApplication => nsApplication -> IO RawId
appearance nsApplication =
  sendMessage nsApplication appearanceSelector

-- | @- setAppearance:@
setAppearance :: IsNSApplication nsApplication => nsApplication -> RawId -> IO ()
setAppearance nsApplication value =
  sendMessage nsApplication setAppearanceSelector value

-- | @- effectiveAppearance@
effectiveAppearance :: IsNSApplication nsApplication => nsApplication -> IO RawId
effectiveAppearance nsApplication =
  sendMessage nsApplication effectiveAppearanceSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @hide:@
hideSelector :: Selector '[RawId] ()
hideSelector = mkSelector "hide:"

-- | @Selector@ for @unhide:@
unhideSelector :: Selector '[RawId] ()
unhideSelector = mkSelector "unhide:"

-- | @Selector@ for @unhideWithoutActivation@
unhideWithoutActivationSelector :: Selector '[] ()
unhideWithoutActivationSelector = mkSelector "unhideWithoutActivation"

-- | @Selector@ for @windowWithWindowNumber:@
windowWithWindowNumberSelector :: Selector '[CLong] (Id NSWindow)
windowWithWindowNumberSelector = mkSelector "windowWithWindowNumber:"

-- | @Selector@ for @deactivate@
deactivateSelector :: Selector '[] ()
deactivateSelector = mkSelector "deactivate"

-- | @Selector@ for @activateIgnoringOtherApps:@
activateIgnoringOtherAppsSelector :: Selector '[Bool] ()
activateIgnoringOtherAppsSelector = mkSelector "activateIgnoringOtherApps:"

-- | @Selector@ for @hideOtherApplications:@
hideOtherApplicationsSelector :: Selector '[RawId] ()
hideOtherApplicationsSelector = mkSelector "hideOtherApplications:"

-- | @Selector@ for @unhideAllApplications:@
unhideAllApplicationsSelector :: Selector '[RawId] ()
unhideAllApplicationsSelector = mkSelector "unhideAllApplications:"

-- | @Selector@ for @finishLaunching@
finishLaunchingSelector :: Selector '[] ()
finishLaunchingSelector = mkSelector "finishLaunching"

-- | @Selector@ for @run@
runSelector :: Selector '[] ()
runSelector = mkSelector "run"

-- | @Selector@ for @runModalForWindow:@
runModalForWindowSelector :: Selector '[Id NSWindow] CLong
runModalForWindowSelector = mkSelector "runModalForWindow:"

-- | @Selector@ for @stop:@
stopSelector :: Selector '[RawId] ()
stopSelector = mkSelector "stop:"

-- | @Selector@ for @stopModal@
stopModalSelector :: Selector '[] ()
stopModalSelector = mkSelector "stopModal"

-- | @Selector@ for @stopModalWithCode:@
stopModalWithCodeSelector :: Selector '[CLong] ()
stopModalWithCodeSelector = mkSelector "stopModalWithCode:"

-- | @Selector@ for @abortModal@
abortModalSelector :: Selector '[] ()
abortModalSelector = mkSelector "abortModal"

-- | @Selector@ for @beginModalSessionForWindow:@
beginModalSessionForWindowSelector :: Selector '[Id NSWindow] (Ptr ())
beginModalSessionForWindowSelector = mkSelector "beginModalSessionForWindow:"

-- | @Selector@ for @runModalSession:@
runModalSessionSelector :: Selector '[Ptr ()] CLong
runModalSessionSelector = mkSelector "runModalSession:"

-- | @Selector@ for @endModalSession:@
endModalSessionSelector :: Selector '[Ptr ()] ()
endModalSessionSelector = mkSelector "endModalSession:"

-- | @Selector@ for @terminate:@
terminateSelector :: Selector '[RawId] ()
terminateSelector = mkSelector "terminate:"

-- | @Selector@ for @requestUserAttention:@
requestUserAttentionSelector :: Selector '[NSRequestUserAttentionType] CLong
requestUserAttentionSelector = mkSelector "requestUserAttention:"

-- | @Selector@ for @cancelUserAttentionRequest:@
cancelUserAttentionRequestSelector :: Selector '[CLong] ()
cancelUserAttentionRequestSelector = mkSelector "cancelUserAttentionRequest:"

-- | @Selector@ for @enumerateWindowsWithOptions:usingBlock:@
enumerateWindowsWithOptions_usingBlockSelector :: Selector '[NSWindowListOptions, Ptr ()] ()
enumerateWindowsWithOptions_usingBlockSelector = mkSelector "enumerateWindowsWithOptions:usingBlock:"

-- | @Selector@ for @preventWindowOrdering@
preventWindowOrderingSelector :: Selector '[] ()
preventWindowOrderingSelector = mkSelector "preventWindowOrdering"

-- | @Selector@ for @setWindowsNeedUpdate:@
setWindowsNeedUpdateSelector :: Selector '[Bool] ()
setWindowsNeedUpdateSelector = mkSelector "setWindowsNeedUpdate:"

-- | @Selector@ for @updateWindows@
updateWindowsSelector :: Selector '[] ()
updateWindowsSelector = mkSelector "updateWindows"

-- | @Selector@ for @activationPolicy@
activationPolicySelector :: Selector '[] NSApplicationActivationPolicy
activationPolicySelector = mkSelector "activationPolicy"

-- | @Selector@ for @setActivationPolicy:@
setActivationPolicySelector :: Selector '[NSApplicationActivationPolicy] Bool
setActivationPolicySelector = mkSelector "setActivationPolicy:"

-- | @Selector@ for @reportException:@
reportExceptionSelector :: Selector '[Id NSException] ()
reportExceptionSelector = mkSelector "reportException:"

-- | @Selector@ for @detachDrawingThread:toTarget:withObject:@
detachDrawingThread_toTarget_withObjectSelector :: Selector '[Sel, RawId, RawId] ()
detachDrawingThread_toTarget_withObjectSelector = mkSelector "detachDrawingThread:toTarget:withObject:"

-- | @Selector@ for @replyToApplicationShouldTerminate:@
replyToApplicationShouldTerminateSelector :: Selector '[Bool] ()
replyToApplicationShouldTerminateSelector = mkSelector "replyToApplicationShouldTerminate:"

-- | @Selector@ for @replyToOpenOrPrint:@
replyToOpenOrPrintSelector :: Selector '[NSApplicationDelegateReply] ()
replyToOpenOrPrintSelector = mkSelector "replyToOpenOrPrint:"

-- | @Selector@ for @orderFrontCharacterPalette:@
orderFrontCharacterPaletteSelector :: Selector '[RawId] ()
orderFrontCharacterPaletteSelector = mkSelector "orderFrontCharacterPalette:"

-- | @Selector@ for @extendStateRestoration@
extendStateRestorationSelector :: Selector '[] ()
extendStateRestorationSelector = mkSelector "extendStateRestoration"

-- | @Selector@ for @completeStateRestoration@
completeStateRestorationSelector :: Selector '[] ()
completeStateRestorationSelector = mkSelector "completeStateRestoration"

-- | @Selector@ for @restoreWindowWithIdentifier:state:completionHandler:@
restoreWindowWithIdentifier_state_completionHandlerSelector :: Selector '[Id NSString, Id NSCoder, Ptr ()] Bool
restoreWindowWithIdentifier_state_completionHandlerSelector = mkSelector "restoreWindowWithIdentifier:state:completionHandler:"

-- | @Selector@ for @registerUserInterfaceItemSearchHandler:@
registerUserInterfaceItemSearchHandlerSelector :: Selector '[RawId] ()
registerUserInterfaceItemSearchHandlerSelector = mkSelector "registerUserInterfaceItemSearchHandler:"

-- | @Selector@ for @unregisterUserInterfaceItemSearchHandler:@
unregisterUserInterfaceItemSearchHandlerSelector :: Selector '[RawId] ()
unregisterUserInterfaceItemSearchHandlerSelector = mkSelector "unregisterUserInterfaceItemSearchHandler:"

-- | @Selector@ for @searchString:inUserInterfaceItemString:searchRange:foundRange:@
searchString_inUserInterfaceItemString_searchRange_foundRangeSelector :: Selector '[Id NSString, Id NSString, NSRange, Ptr NSRange] Bool
searchString_inUserInterfaceItemString_searchRange_foundRangeSelector = mkSelector "searchString:inUserInterfaceItemString:searchRange:foundRange:"

-- | @Selector@ for @runPageLayout:@
runPageLayoutSelector :: Selector '[RawId] ()
runPageLayoutSelector = mkSelector "runPageLayout:"

-- | @Selector@ for @orderFrontColorPanel:@
orderFrontColorPanelSelector :: Selector '[RawId] ()
orderFrontColorPanelSelector = mkSelector "orderFrontColorPanel:"

-- | @Selector@ for @toggleTouchBarCustomizationPalette:@
toggleTouchBarCustomizationPaletteSelector :: Selector '[RawId] ()
toggleTouchBarCustomizationPaletteSelector = mkSelector "toggleTouchBarCustomizationPalette:"

-- | @Selector@ for @activateContextHelpMode:@
activateContextHelpModeSelector :: Selector '[RawId] ()
activateContextHelpModeSelector = mkSelector "activateContextHelpMode:"

-- | @Selector@ for @showHelp:@
showHelpSelector :: Selector '[RawId] ()
showHelpSelector = mkSelector "showHelp:"

-- | @Selector@ for @runModalForWindow:relativeToWindow:@
runModalForWindow_relativeToWindowSelector :: Selector '[Id NSWindow, Id NSWindow] CLong
runModalForWindow_relativeToWindowSelector = mkSelector "runModalForWindow:relativeToWindow:"

-- | @Selector@ for @beginModalSessionForWindow:relativeToWindow:@
beginModalSessionForWindow_relativeToWindowSelector :: Selector '[Id NSWindow, Id NSWindow] (Ptr ())
beginModalSessionForWindow_relativeToWindowSelector = mkSelector "beginModalSessionForWindow:relativeToWindow:"

-- | @Selector@ for @application:printFiles:@
application_printFilesSelector :: Selector '[Id NSApplication, Id NSArray] ()
application_printFilesSelector = mkSelector "application:printFiles:"

-- | @Selector@ for @beginSheet:modalForWindow:modalDelegate:didEndSelector:contextInfo:@
beginSheet_modalForWindow_modalDelegate_didEndSelector_contextInfoSelector :: Selector '[Id NSWindow, Id NSWindow, RawId, Sel, Ptr ()] ()
beginSheet_modalForWindow_modalDelegate_didEndSelector_contextInfoSelector = mkSelector "beginSheet:modalForWindow:modalDelegate:didEndSelector:contextInfo:"

-- | @Selector@ for @endSheet:@
endSheetSelector :: Selector '[Id NSWindow] ()
endSheetSelector = mkSelector "endSheet:"

-- | @Selector@ for @endSheet:returnCode:@
endSheet_returnCodeSelector :: Selector '[Id NSWindow, CLong] ()
endSheet_returnCodeSelector = mkSelector "endSheet:returnCode:"

-- | @Selector@ for @makeWindowsPerform:inOrder:@
makeWindowsPerform_inOrderSelector :: Selector '[Sel, Bool] (Id NSWindow)
makeWindowsPerform_inOrderSelector = mkSelector "makeWindowsPerform:inOrder:"

-- | @Selector@ for @registerForRemoteNotifications@
registerForRemoteNotificationsSelector :: Selector '[] ()
registerForRemoteNotificationsSelector = mkSelector "registerForRemoteNotifications"

-- | @Selector@ for @unregisterForRemoteNotifications@
unregisterForRemoteNotificationsSelector :: Selector '[] ()
unregisterForRemoteNotificationsSelector = mkSelector "unregisterForRemoteNotifications"

-- | @Selector@ for @registerForRemoteNotificationTypes:@
registerForRemoteNotificationTypesSelector :: Selector '[NSRemoteNotificationType] ()
registerForRemoteNotificationTypesSelector = mkSelector "registerForRemoteNotificationTypes:"

-- | @Selector@ for @disableRelaunchOnLogin@
disableRelaunchOnLoginSelector :: Selector '[] ()
disableRelaunchOnLoginSelector = mkSelector "disableRelaunchOnLogin"

-- | @Selector@ for @enableRelaunchOnLogin@
enableRelaunchOnLoginSelector :: Selector '[] ()
enableRelaunchOnLoginSelector = mkSelector "enableRelaunchOnLogin"

-- | @Selector@ for @orderFrontStandardAboutPanel:@
orderFrontStandardAboutPanelSelector :: Selector '[RawId] ()
orderFrontStandardAboutPanelSelector = mkSelector "orderFrontStandardAboutPanel:"

-- | @Selector@ for @orderFrontStandardAboutPanelWithOptions:@
orderFrontStandardAboutPanelWithOptionsSelector :: Selector '[Id NSDictionary] ()
orderFrontStandardAboutPanelWithOptionsSelector = mkSelector "orderFrontStandardAboutPanelWithOptions:"

-- | @Selector@ for @registerServicesMenuSendTypes:returnTypes:@
registerServicesMenuSendTypes_returnTypesSelector :: Selector '[Id NSArray, Id NSArray] ()
registerServicesMenuSendTypes_returnTypesSelector = mkSelector "registerServicesMenuSendTypes:returnTypes:"

-- | @Selector@ for @arrangeInFront:@
arrangeInFrontSelector :: Selector '[RawId] ()
arrangeInFrontSelector = mkSelector "arrangeInFront:"

-- | @Selector@ for @removeWindowsItem:@
removeWindowsItemSelector :: Selector '[Id NSWindow] ()
removeWindowsItemSelector = mkSelector "removeWindowsItem:"

-- | @Selector@ for @addWindowsItem:title:filename:@
addWindowsItem_title_filenameSelector :: Selector '[Id NSWindow, Id NSString, Bool] ()
addWindowsItem_title_filenameSelector = mkSelector "addWindowsItem:title:filename:"

-- | @Selector@ for @changeWindowsItem:title:filename:@
changeWindowsItem_title_filenameSelector :: Selector '[Id NSWindow, Id NSString, Bool] ()
changeWindowsItem_title_filenameSelector = mkSelector "changeWindowsItem:title:filename:"

-- | @Selector@ for @updateWindowsItem:@
updateWindowsItemSelector :: Selector '[Id NSWindow] ()
updateWindowsItemSelector = mkSelector "updateWindowsItem:"

-- | @Selector@ for @miniaturizeAll:@
miniaturizeAllSelector :: Selector '[RawId] ()
miniaturizeAllSelector = mkSelector "miniaturizeAll:"

-- | @Selector@ for @sendAction:to:from:@
sendAction_to_fromSelector :: Selector '[Sel, RawId, RawId] Bool
sendAction_to_fromSelector = mkSelector "sendAction:to:from:"

-- | @Selector@ for @targetForAction:@
targetForActionSelector :: Selector '[Sel] RawId
targetForActionSelector = mkSelector "targetForAction:"

-- | @Selector@ for @targetForAction:to:from:@
targetForAction_to_fromSelector :: Selector '[Sel, RawId, RawId] RawId
targetForAction_to_fromSelector = mkSelector "targetForAction:to:from:"

-- | @Selector@ for @tryToPerform:with:@
tryToPerform_withSelector :: Selector '[Sel, RawId] Bool
tryToPerform_withSelector = mkSelector "tryToPerform:with:"

-- | @Selector@ for @validRequestorForSendType:returnType:@
validRequestorForSendType_returnTypeSelector :: Selector '[Id NSString, Id NSString] RawId
validRequestorForSendType_returnTypeSelector = mkSelector "validRequestorForSendType:returnType:"

-- | @Selector@ for @sendEvent:@
sendEventSelector :: Selector '[Id NSEvent] ()
sendEventSelector = mkSelector "sendEvent:"

-- | @Selector@ for @postEvent:atStart:@
postEvent_atStartSelector :: Selector '[Id NSEvent, Bool] ()
postEvent_atStartSelector = mkSelector "postEvent:atStart:"

-- | @Selector@ for @nextEventMatchingMask:untilDate:inMode:dequeue:@
nextEventMatchingMask_untilDate_inMode_dequeueSelector :: Selector '[NSEventMask, Id NSDate, Id NSString, Bool] (Id NSEvent)
nextEventMatchingMask_untilDate_inMode_dequeueSelector = mkSelector "nextEventMatchingMask:untilDate:inMode:dequeue:"

-- | @Selector@ for @discardEventsMatchingMask:beforeEvent:@
discardEventsMatchingMask_beforeEventSelector :: Selector '[NSEventMask, Id NSEvent] ()
discardEventsMatchingMask_beforeEventSelector = mkSelector "discardEventsMatchingMask:beforeEvent:"

-- | @Selector@ for @sharedApplication@
sharedApplicationSelector :: Selector '[] (Id NSApplication)
sharedApplicationSelector = mkSelector "sharedApplication"

-- | @Selector@ for @delegate@
delegateSelector :: Selector '[] RawId
delegateSelector = mkSelector "delegate"

-- | @Selector@ for @setDelegate:@
setDelegateSelector :: Selector '[RawId] ()
setDelegateSelector = mkSelector "setDelegate:"

-- | @Selector@ for @mainWindow@
mainWindowSelector :: Selector '[] (Id NSWindow)
mainWindowSelector = mkSelector "mainWindow"

-- | @Selector@ for @keyWindow@
keyWindowSelector :: Selector '[] (Id NSWindow)
keyWindowSelector = mkSelector "keyWindow"

-- | @Selector@ for @active@
activeSelector :: Selector '[] Bool
activeSelector = mkSelector "active"

-- | @Selector@ for @hidden@
hiddenSelector :: Selector '[] Bool
hiddenSelector = mkSelector "hidden"

-- | @Selector@ for @running@
runningSelector :: Selector '[] Bool
runningSelector = mkSelector "running"

-- | @Selector@ for @modalWindow@
modalWindowSelector :: Selector '[] (Id NSWindow)
modalWindowSelector = mkSelector "modalWindow"

-- | @Selector@ for @windows@
windowsSelector :: Selector '[] (Id NSArray)
windowsSelector = mkSelector "windows"

-- | @Selector@ for @mainMenu@
mainMenuSelector :: Selector '[] (Id NSMenu)
mainMenuSelector = mkSelector "mainMenu"

-- | @Selector@ for @setMainMenu:@
setMainMenuSelector :: Selector '[Id NSMenu] ()
setMainMenuSelector = mkSelector "setMainMenu:"

-- | @Selector@ for @helpMenu@
helpMenuSelector :: Selector '[] RawId
helpMenuSelector = mkSelector "helpMenu"

-- | @Selector@ for @setHelpMenu:@
setHelpMenuSelector :: Selector '[RawId] ()
setHelpMenuSelector = mkSelector "setHelpMenu:"

-- | @Selector@ for @applicationIconImage@
applicationIconImageSelector :: Selector '[] (Id NSImage)
applicationIconImageSelector = mkSelector "applicationIconImage"

-- | @Selector@ for @setApplicationIconImage:@
setApplicationIconImageSelector :: Selector '[Id NSImage] ()
setApplicationIconImageSelector = mkSelector "setApplicationIconImage:"

-- | @Selector@ for @dockTile@
dockTileSelector :: Selector '[] RawId
dockTileSelector = mkSelector "dockTile"

-- | @Selector@ for @presentationOptions@
presentationOptionsSelector :: Selector '[] NSApplicationPresentationOptions
presentationOptionsSelector = mkSelector "presentationOptions"

-- | @Selector@ for @setPresentationOptions:@
setPresentationOptionsSelector :: Selector '[NSApplicationPresentationOptions] ()
setPresentationOptionsSelector = mkSelector "setPresentationOptions:"

-- | @Selector@ for @currentSystemPresentationOptions@
currentSystemPresentationOptionsSelector :: Selector '[] NSApplicationPresentationOptions
currentSystemPresentationOptionsSelector = mkSelector "currentSystemPresentationOptions"

-- | @Selector@ for @occlusionState@
occlusionStateSelector :: Selector '[] NSApplicationOcclusionState
occlusionStateSelector = mkSelector "occlusionState"

-- | @Selector@ for @protectedDataAvailable@
protectedDataAvailableSelector :: Selector '[] Bool
protectedDataAvailableSelector = mkSelector "protectedDataAvailable"

-- | @Selector@ for @orderedDocuments@
orderedDocumentsSelector :: Selector '[] (Id NSArray)
orderedDocumentsSelector = mkSelector "orderedDocuments"

-- | @Selector@ for @orderedWindows@
orderedWindowsSelector :: Selector '[] (Id NSArray)
orderedWindowsSelector = mkSelector "orderedWindows"

-- | @Selector@ for @automaticCustomizeTouchBarMenuItemEnabled@
automaticCustomizeTouchBarMenuItemEnabledSelector :: Selector '[] Bool
automaticCustomizeTouchBarMenuItemEnabledSelector = mkSelector "automaticCustomizeTouchBarMenuItemEnabled"

-- | @Selector@ for @setAutomaticCustomizeTouchBarMenuItemEnabled:@
setAutomaticCustomizeTouchBarMenuItemEnabledSelector :: Selector '[Bool] ()
setAutomaticCustomizeTouchBarMenuItemEnabledSelector = mkSelector "setAutomaticCustomizeTouchBarMenuItemEnabled:"

-- | @Selector@ for @context@
contextSelector :: Selector '[] RawId
contextSelector = mkSelector "context"

-- | @Selector@ for @registeredForRemoteNotifications@
registeredForRemoteNotificationsSelector :: Selector '[] Bool
registeredForRemoteNotificationsSelector = mkSelector "registeredForRemoteNotifications"

-- | @Selector@ for @enabledRemoteNotificationTypes@
enabledRemoteNotificationTypesSelector :: Selector '[] NSRemoteNotificationType
enabledRemoteNotificationTypesSelector = mkSelector "enabledRemoteNotificationTypes"

-- | @Selector@ for @userInterfaceLayoutDirection@
userInterfaceLayoutDirectionSelector :: Selector '[] NSUserInterfaceLayoutDirection
userInterfaceLayoutDirectionSelector = mkSelector "userInterfaceLayoutDirection"

-- | @Selector@ for @servicesProvider@
servicesProviderSelector :: Selector '[] RawId
servicesProviderSelector = mkSelector "servicesProvider"

-- | @Selector@ for @setServicesProvider:@
setServicesProviderSelector :: Selector '[RawId] ()
setServicesProviderSelector = mkSelector "setServicesProvider:"

-- | @Selector@ for @servicesMenu@
servicesMenuSelector :: Selector '[] (Id NSMenu)
servicesMenuSelector = mkSelector "servicesMenu"

-- | @Selector@ for @setServicesMenu:@
setServicesMenuSelector :: Selector '[Id NSMenu] ()
setServicesMenuSelector = mkSelector "setServicesMenu:"

-- | @Selector@ for @fullKeyboardAccessEnabled@
fullKeyboardAccessEnabledSelector :: Selector '[] Bool
fullKeyboardAccessEnabledSelector = mkSelector "fullKeyboardAccessEnabled"

-- | @Selector@ for @windowsMenu@
windowsMenuSelector :: Selector '[] (Id NSMenu)
windowsMenuSelector = mkSelector "windowsMenu"

-- | @Selector@ for @setWindowsMenu:@
setWindowsMenuSelector :: Selector '[Id NSMenu] ()
setWindowsMenuSelector = mkSelector "setWindowsMenu:"

-- | @Selector@ for @currentEvent@
currentEventSelector :: Selector '[] (Id NSEvent)
currentEventSelector = mkSelector "currentEvent"

-- | @Selector@ for @appearance@
appearanceSelector :: Selector '[] RawId
appearanceSelector = mkSelector "appearance"

-- | @Selector@ for @setAppearance:@
setAppearanceSelector :: Selector '[RawId] ()
setAppearanceSelector = mkSelector "setAppearance:"

-- | @Selector@ for @effectiveAppearance@
effectiveAppearanceSelector :: Selector '[] RawId
effectiveAppearanceSelector = mkSelector "effectiveAppearance"

