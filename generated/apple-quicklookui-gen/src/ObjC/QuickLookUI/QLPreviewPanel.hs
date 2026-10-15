{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | The QLPreviewPanel class implements the Preview Panel - a user interface object that displays the preview of a list of items.
--
-- Each application has only one instance of QLPreviewPanel. You can not subclass QLPreviewPanel.
--
-- QLPreviewPanel follows the responder chain and adapts to the first responder willing to control it. It uses a data source to      gets its content. QLPreviewPanel can also have a delegate.
--
-- Generated bindings for @QLPreviewPanel@.
module ObjC.QuickLookUI.QLPreviewPanel
  ( QLPreviewPanel
  , IsQLPreviewPanel(..)
  , sharedPreviewPanel
  , sharedPreviewPanelExists
  , updateController
  , reloadData
  , refreshCurrentPreviewItem
  , enterFullScreenMode_withOptions
  , exitFullScreenModeWithOptions
  , currentController
  , dataSource
  , setDataSource
  , currentPreviewItemIndex
  , setCurrentPreviewItemIndex
  , currentPreviewItem
  , displayState
  , setDisplayState
  , delegate
  , setDelegate
  , inFullScreenMode
  , currentControllerSelector
  , currentPreviewItemIndexSelector
  , currentPreviewItemSelector
  , dataSourceSelector
  , delegateSelector
  , displayStateSelector
  , enterFullScreenMode_withOptionsSelector
  , exitFullScreenModeWithOptionsSelector
  , inFullScreenModeSelector
  , refreshCurrentPreviewItemSelector
  , reloadDataSelector
  , setCurrentPreviewItemIndexSelector
  , setDataSourceSelector
  , setDelegateSelector
  , setDisplayStateSelector
  , sharedPreviewPanelExistsSelector
  , sharedPreviewPanelSelector
  , updateControllerSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.QuickLookUI.Internal.Classes
import ObjC.AppKit.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | Returns the QLPreviewPanel instance, creating it if it doesn�t exist yet.
--
-- ObjC selector: @+ sharedPreviewPanel@
sharedPreviewPanel :: IO (Id QLPreviewPanel)
sharedPreviewPanel  =
  do
    cls' <- getRequiredClass "QLPreviewPanel"
    sendClassMessage cls' sharedPreviewPanelSelector

-- | Returns YES if the shared Preview Panel has been created, NO if it hasn�t..
--
-- ObjC selector: @+ sharedPreviewPanelExists@
sharedPreviewPanelExists :: IO Bool
sharedPreviewPanelExists  =
  do
    cls' <- getRequiredClass "QLPreviewPanel"
    sendClassMessage cls' sharedPreviewPanelExistsSelector

-- | Asks the Preview Panel to update its current controller.
--
-- The Preview Panel automatically updates its controller (by searching the responder chain) whenever the main or key window changes. Invoke updateController if the responder chain changes without explicit notice.
--
-- ObjC selector: @- updateController@
updateController :: IsQLPreviewPanel qlPreviewPanel => qlPreviewPanel -> IO ()
updateController qlPreviewPanel =
  sendMessage qlPreviewPanel updateControllerSelector

-- | Asks the Preview Panel to reload its data from its data source.
--
-- This method does not refresh the visible item if it has not changed.
--
-- ObjC selector: @- reloadData@
reloadData :: IsQLPreviewPanel qlPreviewPanel => qlPreviewPanel -> IO ()
reloadData qlPreviewPanel =
  sendMessage qlPreviewPanel reloadDataSelector

-- | Asks the Preview Panel to recompute the preview of the currently previewed item.
--
-- ObjC selector: @- refreshCurrentPreviewItem@
refreshCurrentPreviewItem :: IsQLPreviewPanel qlPreviewPanel => qlPreviewPanel -> IO ()
refreshCurrentPreviewItem qlPreviewPanel =
  sendMessage qlPreviewPanel refreshCurrentPreviewItemSelector

-- | Enters full screen mode.
--
-- If panel is not on-screen, the panel will go directly to full screen mode.
--
-- ObjC selector: @- enterFullScreenMode:withOptions:@
enterFullScreenMode_withOptions :: (IsQLPreviewPanel qlPreviewPanel, IsNSScreen screen, IsNSDictionary options) => qlPreviewPanel -> screen -> options -> IO Bool
enterFullScreenMode_withOptions qlPreviewPanel screen options =
  sendMessage qlPreviewPanel enterFullScreenMode_withOptionsSelector (toNSScreen screen) (toNSDictionary options)

-- | Exits full screen mode.
--
-- ObjC selector: @- exitFullScreenModeWithOptions:@
exitFullScreenModeWithOptions :: (IsQLPreviewPanel qlPreviewPanel, IsNSDictionary options) => qlPreviewPanel -> options -> IO ()
exitFullScreenModeWithOptions qlPreviewPanel options =
  sendMessage qlPreviewPanel exitFullScreenModeWithOptionsSelector (toNSDictionary options)

-- | The current first responder accepting to control the Preview Panel.
--
-- You should never change preview panel state (delegate, datasource, etc.) if you are not controlling it.
--
-- ObjC selector: @- currentController@
currentController :: IsQLPreviewPanel qlPreviewPanel => qlPreviewPanel -> IO RawId
currentController qlPreviewPanel =
  sendMessage qlPreviewPanel currentControllerSelector

-- | The Preview Panel data source.
--
-- ObjC selector: @- dataSource@
dataSource :: IsQLPreviewPanel qlPreviewPanel => qlPreviewPanel -> IO RawId
dataSource qlPreviewPanel =
  sendMessage qlPreviewPanel dataSourceSelector

-- | The Preview Panel data source.
--
-- ObjC selector: @- setDataSource:@
setDataSource :: IsQLPreviewPanel qlPreviewPanel => qlPreviewPanel -> RawId -> IO ()
setDataSource qlPreviewPanel value =
  sendMessage qlPreviewPanel setDataSourceSelector value

-- | The index of the currently previewed item in the preview panel or NSNotFound if there is none.
--
-- ObjC selector: @- currentPreviewItemIndex@
currentPreviewItemIndex :: IsQLPreviewPanel qlPreviewPanel => qlPreviewPanel -> IO CLong
currentPreviewItemIndex qlPreviewPanel =
  sendMessage qlPreviewPanel currentPreviewItemIndexSelector

-- | The index of the currently previewed item in the preview panel or NSNotFound if there is none.
--
-- ObjC selector: @- setCurrentPreviewItemIndex:@
setCurrentPreviewItemIndex :: IsQLPreviewPanel qlPreviewPanel => qlPreviewPanel -> CLong -> IO ()
setCurrentPreviewItemIndex qlPreviewPanel value =
  sendMessage qlPreviewPanel setCurrentPreviewItemIndexSelector value

-- | The currently previewed item in the preview panel or nil if there is none.
--
-- ObjC selector: @- currentPreviewItem@
currentPreviewItem :: IsQLPreviewPanel qlPreviewPanel => qlPreviewPanel -> IO RawId
currentPreviewItem qlPreviewPanel =
  sendMessage qlPreviewPanel currentPreviewItemSelector

-- | The current panel's display state.
--
-- ObjC selector: @- displayState@
displayState :: IsQLPreviewPanel qlPreviewPanel => qlPreviewPanel -> IO RawId
displayState qlPreviewPanel =
  sendMessage qlPreviewPanel displayStateSelector

-- | The current panel's display state.
--
-- ObjC selector: @- setDisplayState:@
setDisplayState :: IsQLPreviewPanel qlPreviewPanel => qlPreviewPanel -> RawId -> IO ()
setDisplayState qlPreviewPanel value =
  sendMessage qlPreviewPanel setDisplayStateSelector value

-- | The Preview Panel delegate.
--
-- ObjC selector: @- delegate@
delegate :: IsQLPreviewPanel qlPreviewPanel => qlPreviewPanel -> IO RawId
delegate qlPreviewPanel =
  sendMessage qlPreviewPanel delegateSelector

-- | The Preview Panel delegate.
--
-- ObjC selector: @- setDelegate:@
setDelegate :: IsQLPreviewPanel qlPreviewPanel => qlPreviewPanel -> RawId -> IO ()
setDelegate qlPreviewPanel value =
  sendMessage qlPreviewPanel setDelegateSelector value

-- | YES if the panel is currently open and in full screen mode.
--
-- ObjC selector: @- inFullScreenMode@
inFullScreenMode :: IsQLPreviewPanel qlPreviewPanel => qlPreviewPanel -> IO Bool
inFullScreenMode qlPreviewPanel =
  sendMessage qlPreviewPanel inFullScreenModeSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @sharedPreviewPanel@
sharedPreviewPanelSelector :: Selector '[] (Id QLPreviewPanel)
sharedPreviewPanelSelector = mkSelector "sharedPreviewPanel"

-- | @Selector@ for @sharedPreviewPanelExists@
sharedPreviewPanelExistsSelector :: Selector '[] Bool
sharedPreviewPanelExistsSelector = mkSelector "sharedPreviewPanelExists"

-- | @Selector@ for @updateController@
updateControllerSelector :: Selector '[] ()
updateControllerSelector = mkSelector "updateController"

-- | @Selector@ for @reloadData@
reloadDataSelector :: Selector '[] ()
reloadDataSelector = mkSelector "reloadData"

-- | @Selector@ for @refreshCurrentPreviewItem@
refreshCurrentPreviewItemSelector :: Selector '[] ()
refreshCurrentPreviewItemSelector = mkSelector "refreshCurrentPreviewItem"

-- | @Selector@ for @enterFullScreenMode:withOptions:@
enterFullScreenMode_withOptionsSelector :: Selector '[Id NSScreen, Id NSDictionary] Bool
enterFullScreenMode_withOptionsSelector = mkSelector "enterFullScreenMode:withOptions:"

-- | @Selector@ for @exitFullScreenModeWithOptions:@
exitFullScreenModeWithOptionsSelector :: Selector '[Id NSDictionary] ()
exitFullScreenModeWithOptionsSelector = mkSelector "exitFullScreenModeWithOptions:"

-- | @Selector@ for @currentController@
currentControllerSelector :: Selector '[] RawId
currentControllerSelector = mkSelector "currentController"

-- | @Selector@ for @dataSource@
dataSourceSelector :: Selector '[] RawId
dataSourceSelector = mkSelector "dataSource"

-- | @Selector@ for @setDataSource:@
setDataSourceSelector :: Selector '[RawId] ()
setDataSourceSelector = mkSelector "setDataSource:"

-- | @Selector@ for @currentPreviewItemIndex@
currentPreviewItemIndexSelector :: Selector '[] CLong
currentPreviewItemIndexSelector = mkSelector "currentPreviewItemIndex"

-- | @Selector@ for @setCurrentPreviewItemIndex:@
setCurrentPreviewItemIndexSelector :: Selector '[CLong] ()
setCurrentPreviewItemIndexSelector = mkSelector "setCurrentPreviewItemIndex:"

-- | @Selector@ for @currentPreviewItem@
currentPreviewItemSelector :: Selector '[] RawId
currentPreviewItemSelector = mkSelector "currentPreviewItem"

-- | @Selector@ for @displayState@
displayStateSelector :: Selector '[] RawId
displayStateSelector = mkSelector "displayState"

-- | @Selector@ for @setDisplayState:@
setDisplayStateSelector :: Selector '[RawId] ()
setDisplayStateSelector = mkSelector "setDisplayState:"

-- | @Selector@ for @delegate@
delegateSelector :: Selector '[] RawId
delegateSelector = mkSelector "delegate"

-- | @Selector@ for @setDelegate:@
setDelegateSelector :: Selector '[RawId] ()
setDelegateSelector = mkSelector "setDelegate:"

-- | @Selector@ for @inFullScreenMode@
inFullScreenModeSelector :: Selector '[] Bool
inFullScreenModeSelector = mkSelector "inFullScreenMode"

