{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @NSAlert@.
module ObjC.AppKit.NSAlert
  ( NSAlert
  , IsNSAlert(..)
  , alertWithError
  , addButtonWithTitle
  , layout
  , runModal
  , beginSheetModalForWindow_completionHandler
  , alertWithMessageText_defaultButton_alternateButton_otherButton_informativeTextWithFormat
  , beginSheetModalForWindow_modalDelegate_didEndSelector_contextInfo
  , messageText
  , setMessageText
  , informativeText
  , setInformativeText
  , icon
  , setIcon
  , buttons
  , showsHelp
  , setShowsHelp
  , helpAnchor
  , setHelpAnchor
  , alertStyle
  , setAlertStyle
  , delegate
  , setDelegate
  , showsSuppressionButton
  , setShowsSuppressionButton
  , suppressionButton
  , accessoryView
  , setAccessoryView
  , window
  , accessoryViewSelector
  , addButtonWithTitleSelector
  , alertStyleSelector
  , alertWithErrorSelector
  , alertWithMessageText_defaultButton_alternateButton_otherButton_informativeTextWithFormatSelector
  , beginSheetModalForWindow_completionHandlerSelector
  , beginSheetModalForWindow_modalDelegate_didEndSelector_contextInfoSelector
  , buttonsSelector
  , delegateSelector
  , helpAnchorSelector
  , iconSelector
  , informativeTextSelector
  , layoutSelector
  , messageTextSelector
  , runModalSelector
  , setAccessoryViewSelector
  , setAlertStyleSelector
  , setDelegateSelector
  , setHelpAnchorSelector
  , setIconSelector
  , setInformativeTextSelector
  , setMessageTextSelector
  , setShowsHelpSelector
  , setShowsSuppressionButtonSelector
  , showsHelpSelector
  , showsSuppressionButtonSelector
  , suppressionButtonSelector
  , windowSelector

  -- * Enum types
  , NSAlertStyle(NSAlertStyle)
  , pattern NSAlertStyleWarning
  , pattern NSAlertStyleInformational
  , pattern NSAlertStyleCritical

  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AppKit.Internal.Classes
import ObjC.AppKit.Internal.Enums
import ObjC.Foundation.Internal.Classes

-- | @+ alertWithError:@
alertWithError :: IsNSError error_ => error_ -> IO (Id NSAlert)
alertWithError error_ =
  do
    cls' <- getRequiredClass "NSAlert"
    sendClassMessage cls' alertWithErrorSelector (toNSError error_)

-- | @- addButtonWithTitle:@
addButtonWithTitle :: (IsNSAlert nsAlert, IsNSString title) => nsAlert -> title -> IO (Id NSButton)
addButtonWithTitle nsAlert title =
  sendMessage nsAlert addButtonWithTitleSelector (toNSString title)

-- | @- layout@
layout :: IsNSAlert nsAlert => nsAlert -> IO ()
layout nsAlert =
  sendMessage nsAlert layoutSelector

-- | @- runModal@
runModal :: IsNSAlert nsAlert => nsAlert -> IO CLong
runModal nsAlert =
  sendMessage nsAlert runModalSelector

-- | @- beginSheetModalForWindow:completionHandler:@
beginSheetModalForWindow_completionHandler :: (IsNSAlert nsAlert, IsNSWindow sheetWindow) => nsAlert -> sheetWindow -> Ptr () -> IO ()
beginSheetModalForWindow_completionHandler nsAlert sheetWindow handler =
  sendMessage nsAlert beginSheetModalForWindow_completionHandlerSelector (toNSWindow sheetWindow) handler

-- | @+ alertWithMessageText:defaultButton:alternateButton:otherButton:informativeTextWithFormat:@
alertWithMessageText_defaultButton_alternateButton_otherButton_informativeTextWithFormat :: (IsNSString message, IsNSString defaultButton, IsNSString alternateButton, IsNSString otherButton, IsNSString format) => message -> defaultButton -> alternateButton -> otherButton -> format -> IO (Id NSAlert)
alertWithMessageText_defaultButton_alternateButton_otherButton_informativeTextWithFormat message defaultButton alternateButton otherButton format =
  do
    cls' <- getRequiredClass "NSAlert"
    sendClassMessage cls' alertWithMessageText_defaultButton_alternateButton_otherButton_informativeTextWithFormatSelector (toNSString message) (toNSString defaultButton) (toNSString alternateButton) (toNSString otherButton) (toNSString format)

-- | @- beginSheetModalForWindow:modalDelegate:didEndSelector:contextInfo:@
beginSheetModalForWindow_modalDelegate_didEndSelector_contextInfo :: (IsNSAlert nsAlert, IsNSWindow window) => nsAlert -> window -> RawId -> Sel -> Ptr () -> IO ()
beginSheetModalForWindow_modalDelegate_didEndSelector_contextInfo nsAlert window delegate didEndSelector contextInfo =
  sendMessage nsAlert beginSheetModalForWindow_modalDelegate_didEndSelector_contextInfoSelector (toNSWindow window) delegate didEndSelector contextInfo

-- | @- messageText@
messageText :: IsNSAlert nsAlert => nsAlert -> IO (Id NSString)
messageText nsAlert =
  sendMessage nsAlert messageTextSelector

-- | @- setMessageText:@
setMessageText :: (IsNSAlert nsAlert, IsNSString value) => nsAlert -> value -> IO ()
setMessageText nsAlert value =
  sendMessage nsAlert setMessageTextSelector (toNSString value)

-- | @- informativeText@
informativeText :: IsNSAlert nsAlert => nsAlert -> IO (Id NSString)
informativeText nsAlert =
  sendMessage nsAlert informativeTextSelector

-- | @- setInformativeText:@
setInformativeText :: (IsNSAlert nsAlert, IsNSString value) => nsAlert -> value -> IO ()
setInformativeText nsAlert value =
  sendMessage nsAlert setInformativeTextSelector (toNSString value)

-- | @- icon@
icon :: IsNSAlert nsAlert => nsAlert -> IO (Id NSImage)
icon nsAlert =
  sendMessage nsAlert iconSelector

-- | @- setIcon:@
setIcon :: (IsNSAlert nsAlert, IsNSImage value) => nsAlert -> value -> IO ()
setIcon nsAlert value =
  sendMessage nsAlert setIconSelector (toNSImage value)

-- | @- buttons@
buttons :: IsNSAlert nsAlert => nsAlert -> IO (Id NSArray)
buttons nsAlert =
  sendMessage nsAlert buttonsSelector

-- | @- showsHelp@
showsHelp :: IsNSAlert nsAlert => nsAlert -> IO Bool
showsHelp nsAlert =
  sendMessage nsAlert showsHelpSelector

-- | @- setShowsHelp:@
setShowsHelp :: IsNSAlert nsAlert => nsAlert -> Bool -> IO ()
setShowsHelp nsAlert value =
  sendMessage nsAlert setShowsHelpSelector value

-- | @- helpAnchor@
helpAnchor :: IsNSAlert nsAlert => nsAlert -> IO (Id NSString)
helpAnchor nsAlert =
  sendMessage nsAlert helpAnchorSelector

-- | @- setHelpAnchor:@
setHelpAnchor :: (IsNSAlert nsAlert, IsNSString value) => nsAlert -> value -> IO ()
setHelpAnchor nsAlert value =
  sendMessage nsAlert setHelpAnchorSelector (toNSString value)

-- | @- alertStyle@
alertStyle :: IsNSAlert nsAlert => nsAlert -> IO NSAlertStyle
alertStyle nsAlert =
  sendMessage nsAlert alertStyleSelector

-- | @- setAlertStyle:@
setAlertStyle :: IsNSAlert nsAlert => nsAlert -> NSAlertStyle -> IO ()
setAlertStyle nsAlert value =
  sendMessage nsAlert setAlertStyleSelector value

-- | @- delegate@
delegate :: IsNSAlert nsAlert => nsAlert -> IO RawId
delegate nsAlert =
  sendMessage nsAlert delegateSelector

-- | @- setDelegate:@
setDelegate :: IsNSAlert nsAlert => nsAlert -> RawId -> IO ()
setDelegate nsAlert value =
  sendMessage nsAlert setDelegateSelector value

-- | @- showsSuppressionButton@
showsSuppressionButton :: IsNSAlert nsAlert => nsAlert -> IO Bool
showsSuppressionButton nsAlert =
  sendMessage nsAlert showsSuppressionButtonSelector

-- | @- setShowsSuppressionButton:@
setShowsSuppressionButton :: IsNSAlert nsAlert => nsAlert -> Bool -> IO ()
setShowsSuppressionButton nsAlert value =
  sendMessage nsAlert setShowsSuppressionButtonSelector value

-- | @- suppressionButton@
suppressionButton :: IsNSAlert nsAlert => nsAlert -> IO RawId
suppressionButton nsAlert =
  sendMessage nsAlert suppressionButtonSelector

-- | @- accessoryView@
accessoryView :: IsNSAlert nsAlert => nsAlert -> IO RawId
accessoryView nsAlert =
  sendMessage nsAlert accessoryViewSelector

-- | @- setAccessoryView:@
setAccessoryView :: IsNSAlert nsAlert => nsAlert -> RawId -> IO ()
setAccessoryView nsAlert value =
  sendMessage nsAlert setAccessoryViewSelector value

-- | @- window@
window :: IsNSAlert nsAlert => nsAlert -> IO (Id NSWindow)
window nsAlert =
  sendMessage nsAlert windowSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @alertWithError:@
alertWithErrorSelector :: Selector '[Id NSError] (Id NSAlert)
alertWithErrorSelector = mkSelector "alertWithError:"

-- | @Selector@ for @addButtonWithTitle:@
addButtonWithTitleSelector :: Selector '[Id NSString] (Id NSButton)
addButtonWithTitleSelector = mkSelector "addButtonWithTitle:"

-- | @Selector@ for @layout@
layoutSelector :: Selector '[] ()
layoutSelector = mkSelector "layout"

-- | @Selector@ for @runModal@
runModalSelector :: Selector '[] CLong
runModalSelector = mkSelector "runModal"

-- | @Selector@ for @beginSheetModalForWindow:completionHandler:@
beginSheetModalForWindow_completionHandlerSelector :: Selector '[Id NSWindow, Ptr ()] ()
beginSheetModalForWindow_completionHandlerSelector = mkSelector "beginSheetModalForWindow:completionHandler:"

-- | @Selector@ for @alertWithMessageText:defaultButton:alternateButton:otherButton:informativeTextWithFormat:@
alertWithMessageText_defaultButton_alternateButton_otherButton_informativeTextWithFormatSelector :: Selector '[Id NSString, Id NSString, Id NSString, Id NSString, Id NSString] (Id NSAlert)
alertWithMessageText_defaultButton_alternateButton_otherButton_informativeTextWithFormatSelector = mkSelector "alertWithMessageText:defaultButton:alternateButton:otherButton:informativeTextWithFormat:"

-- | @Selector@ for @beginSheetModalForWindow:modalDelegate:didEndSelector:contextInfo:@
beginSheetModalForWindow_modalDelegate_didEndSelector_contextInfoSelector :: Selector '[Id NSWindow, RawId, Sel, Ptr ()] ()
beginSheetModalForWindow_modalDelegate_didEndSelector_contextInfoSelector = mkSelector "beginSheetModalForWindow:modalDelegate:didEndSelector:contextInfo:"

-- | @Selector@ for @messageText@
messageTextSelector :: Selector '[] (Id NSString)
messageTextSelector = mkSelector "messageText"

-- | @Selector@ for @setMessageText:@
setMessageTextSelector :: Selector '[Id NSString] ()
setMessageTextSelector = mkSelector "setMessageText:"

-- | @Selector@ for @informativeText@
informativeTextSelector :: Selector '[] (Id NSString)
informativeTextSelector = mkSelector "informativeText"

-- | @Selector@ for @setInformativeText:@
setInformativeTextSelector :: Selector '[Id NSString] ()
setInformativeTextSelector = mkSelector "setInformativeText:"

-- | @Selector@ for @icon@
iconSelector :: Selector '[] (Id NSImage)
iconSelector = mkSelector "icon"

-- | @Selector@ for @setIcon:@
setIconSelector :: Selector '[Id NSImage] ()
setIconSelector = mkSelector "setIcon:"

-- | @Selector@ for @buttons@
buttonsSelector :: Selector '[] (Id NSArray)
buttonsSelector = mkSelector "buttons"

-- | @Selector@ for @showsHelp@
showsHelpSelector :: Selector '[] Bool
showsHelpSelector = mkSelector "showsHelp"

-- | @Selector@ for @setShowsHelp:@
setShowsHelpSelector :: Selector '[Bool] ()
setShowsHelpSelector = mkSelector "setShowsHelp:"

-- | @Selector@ for @helpAnchor@
helpAnchorSelector :: Selector '[] (Id NSString)
helpAnchorSelector = mkSelector "helpAnchor"

-- | @Selector@ for @setHelpAnchor:@
setHelpAnchorSelector :: Selector '[Id NSString] ()
setHelpAnchorSelector = mkSelector "setHelpAnchor:"

-- | @Selector@ for @alertStyle@
alertStyleSelector :: Selector '[] NSAlertStyle
alertStyleSelector = mkSelector "alertStyle"

-- | @Selector@ for @setAlertStyle:@
setAlertStyleSelector :: Selector '[NSAlertStyle] ()
setAlertStyleSelector = mkSelector "setAlertStyle:"

-- | @Selector@ for @delegate@
delegateSelector :: Selector '[] RawId
delegateSelector = mkSelector "delegate"

-- | @Selector@ for @setDelegate:@
setDelegateSelector :: Selector '[RawId] ()
setDelegateSelector = mkSelector "setDelegate:"

-- | @Selector@ for @showsSuppressionButton@
showsSuppressionButtonSelector :: Selector '[] Bool
showsSuppressionButtonSelector = mkSelector "showsSuppressionButton"

-- | @Selector@ for @setShowsSuppressionButton:@
setShowsSuppressionButtonSelector :: Selector '[Bool] ()
setShowsSuppressionButtonSelector = mkSelector "setShowsSuppressionButton:"

-- | @Selector@ for @suppressionButton@
suppressionButtonSelector :: Selector '[] RawId
suppressionButtonSelector = mkSelector "suppressionButton"

-- | @Selector@ for @accessoryView@
accessoryViewSelector :: Selector '[] RawId
accessoryViewSelector = mkSelector "accessoryView"

-- | @Selector@ for @setAccessoryView:@
setAccessoryViewSelector :: Selector '[RawId] ()
setAccessoryViewSelector = mkSelector "setAccessoryView:"

-- | @Selector@ for @window@
windowSelector :: Selector '[] (Id NSWindow)
windowSelector = mkSelector "window"

