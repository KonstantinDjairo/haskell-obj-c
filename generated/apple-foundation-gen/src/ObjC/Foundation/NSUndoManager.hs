{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @NSUndoManager@.
module ObjC.Foundation.NSUndoManager
  ( NSUndoManager
  , IsNSUndoManager(..)
  , beginUndoGrouping
  , endUndoGrouping
  , disableUndoRegistration
  , enableUndoRegistration
  , undo
  , redo
  , undoNestedGroup
  , removeAllActions
  , removeAllActionsWithTarget
  , registerUndoWithTarget_selector_object
  , prepareWithInvocationTarget
  , registerUndoWithTarget_handler
  , setActionIsDiscardable
  , setActionName
  , undoMenuTitleForUndoActionName
  , redoMenuTitleForUndoActionName
  , groupingLevel
  , undoRegistrationEnabled
  , groupsByEvent
  , setGroupsByEvent
  , levelsOfUndo
  , setLevelsOfUndo
  , runLoopModes
  , setRunLoopModes
  , canUndo
  , canRedo
  , undoing
  , redoing
  , undoActionIsDiscardable
  , redoActionIsDiscardable
  , undoActionName
  , redoActionName
  , undoMenuItemTitle
  , redoMenuItemTitle
  , beginUndoGroupingSelector
  , canRedoSelector
  , canUndoSelector
  , disableUndoRegistrationSelector
  , enableUndoRegistrationSelector
  , endUndoGroupingSelector
  , groupingLevelSelector
  , groupsByEventSelector
  , levelsOfUndoSelector
  , prepareWithInvocationTargetSelector
  , redoActionIsDiscardableSelector
  , redoActionNameSelector
  , redoMenuItemTitleSelector
  , redoMenuTitleForUndoActionNameSelector
  , redoSelector
  , redoingSelector
  , registerUndoWithTarget_handlerSelector
  , registerUndoWithTarget_selector_objectSelector
  , removeAllActionsSelector
  , removeAllActionsWithTargetSelector
  , runLoopModesSelector
  , setActionIsDiscardableSelector
  , setActionNameSelector
  , setGroupsByEventSelector
  , setLevelsOfUndoSelector
  , setRunLoopModesSelector
  , undoActionIsDiscardableSelector
  , undoActionNameSelector
  , undoMenuItemTitleSelector
  , undoMenuTitleForUndoActionNameSelector
  , undoNestedGroupSelector
  , undoRegistrationEnabledSelector
  , undoSelector
  , undoingSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.Foundation.Internal.Classes

-- | @- beginUndoGrouping@
beginUndoGrouping :: IsNSUndoManager nsUndoManager => nsUndoManager -> IO ()
beginUndoGrouping nsUndoManager =
  sendMessage nsUndoManager beginUndoGroupingSelector

-- | @- endUndoGrouping@
endUndoGrouping :: IsNSUndoManager nsUndoManager => nsUndoManager -> IO ()
endUndoGrouping nsUndoManager =
  sendMessage nsUndoManager endUndoGroupingSelector

-- | @- disableUndoRegistration@
disableUndoRegistration :: IsNSUndoManager nsUndoManager => nsUndoManager -> IO ()
disableUndoRegistration nsUndoManager =
  sendMessage nsUndoManager disableUndoRegistrationSelector

-- | @- enableUndoRegistration@
enableUndoRegistration :: IsNSUndoManager nsUndoManager => nsUndoManager -> IO ()
enableUndoRegistration nsUndoManager =
  sendMessage nsUndoManager enableUndoRegistrationSelector

-- | @- undo@
undo :: IsNSUndoManager nsUndoManager => nsUndoManager -> IO ()
undo nsUndoManager =
  sendMessage nsUndoManager undoSelector

-- | @- redo@
redo :: IsNSUndoManager nsUndoManager => nsUndoManager -> IO ()
redo nsUndoManager =
  sendMessage nsUndoManager redoSelector

-- | @- undoNestedGroup@
undoNestedGroup :: IsNSUndoManager nsUndoManager => nsUndoManager -> IO ()
undoNestedGroup nsUndoManager =
  sendMessage nsUndoManager undoNestedGroupSelector

-- | @- removeAllActions@
removeAllActions :: IsNSUndoManager nsUndoManager => nsUndoManager -> IO ()
removeAllActions nsUndoManager =
  sendMessage nsUndoManager removeAllActionsSelector

-- | @- removeAllActionsWithTarget:@
removeAllActionsWithTarget :: IsNSUndoManager nsUndoManager => nsUndoManager -> RawId -> IO ()
removeAllActionsWithTarget nsUndoManager target =
  sendMessage nsUndoManager removeAllActionsWithTargetSelector target

-- | @- registerUndoWithTarget:selector:object:@
registerUndoWithTarget_selector_object :: IsNSUndoManager nsUndoManager => nsUndoManager -> RawId -> Sel -> RawId -> IO ()
registerUndoWithTarget_selector_object nsUndoManager target selector anObject =
  sendMessage nsUndoManager registerUndoWithTarget_selector_objectSelector target selector anObject

-- | @- prepareWithInvocationTarget:@
prepareWithInvocationTarget :: IsNSUndoManager nsUndoManager => nsUndoManager -> RawId -> IO RawId
prepareWithInvocationTarget nsUndoManager target =
  sendMessage nsUndoManager prepareWithInvocationTargetSelector target

-- | records single undo operation for the specified target
--
-- @target@ — non-nil target of the undo operation
--
-- @undoHandler@ — non-nil block to be executed for the undo operation
--
-- As with other undo operations, this does not strongly retain target. Care should be taken to avoid introducing retain cycles by other references captured by the block.
--
-- ObjC selector: @- registerUndoWithTarget:handler:@
registerUndoWithTarget_handler :: IsNSUndoManager nsUndoManager => nsUndoManager -> RawId -> Ptr () -> IO ()
registerUndoWithTarget_handler nsUndoManager target undoHandler =
  sendMessage nsUndoManager registerUndoWithTarget_handlerSelector target undoHandler

-- | @- setActionIsDiscardable:@
setActionIsDiscardable :: IsNSUndoManager nsUndoManager => nsUndoManager -> Bool -> IO ()
setActionIsDiscardable nsUndoManager discardable =
  sendMessage nsUndoManager setActionIsDiscardableSelector discardable

-- | @- setActionName:@
setActionName :: (IsNSUndoManager nsUndoManager, IsNSString actionName) => nsUndoManager -> actionName -> IO ()
setActionName nsUndoManager actionName =
  sendMessage nsUndoManager setActionNameSelector (toNSString actionName)

-- | @- undoMenuTitleForUndoActionName:@
undoMenuTitleForUndoActionName :: (IsNSUndoManager nsUndoManager, IsNSString actionName) => nsUndoManager -> actionName -> IO (Id NSString)
undoMenuTitleForUndoActionName nsUndoManager actionName =
  sendMessage nsUndoManager undoMenuTitleForUndoActionNameSelector (toNSString actionName)

-- | @- redoMenuTitleForUndoActionName:@
redoMenuTitleForUndoActionName :: (IsNSUndoManager nsUndoManager, IsNSString actionName) => nsUndoManager -> actionName -> IO (Id NSString)
redoMenuTitleForUndoActionName nsUndoManager actionName =
  sendMessage nsUndoManager redoMenuTitleForUndoActionNameSelector (toNSString actionName)

-- | @- groupingLevel@
groupingLevel :: IsNSUndoManager nsUndoManager => nsUndoManager -> IO CLong
groupingLevel nsUndoManager =
  sendMessage nsUndoManager groupingLevelSelector

-- | @- undoRegistrationEnabled@
undoRegistrationEnabled :: IsNSUndoManager nsUndoManager => nsUndoManager -> IO Bool
undoRegistrationEnabled nsUndoManager =
  sendMessage nsUndoManager undoRegistrationEnabledSelector

-- | @- groupsByEvent@
groupsByEvent :: IsNSUndoManager nsUndoManager => nsUndoManager -> IO Bool
groupsByEvent nsUndoManager =
  sendMessage nsUndoManager groupsByEventSelector

-- | @- setGroupsByEvent:@
setGroupsByEvent :: IsNSUndoManager nsUndoManager => nsUndoManager -> Bool -> IO ()
setGroupsByEvent nsUndoManager value =
  sendMessage nsUndoManager setGroupsByEventSelector value

-- | @- levelsOfUndo@
levelsOfUndo :: IsNSUndoManager nsUndoManager => nsUndoManager -> IO CULong
levelsOfUndo nsUndoManager =
  sendMessage nsUndoManager levelsOfUndoSelector

-- | @- setLevelsOfUndo:@
setLevelsOfUndo :: IsNSUndoManager nsUndoManager => nsUndoManager -> CULong -> IO ()
setLevelsOfUndo nsUndoManager value =
  sendMessage nsUndoManager setLevelsOfUndoSelector value

-- | @- runLoopModes@
runLoopModes :: IsNSUndoManager nsUndoManager => nsUndoManager -> IO (Id NSArray)
runLoopModes nsUndoManager =
  sendMessage nsUndoManager runLoopModesSelector

-- | @- setRunLoopModes:@
setRunLoopModes :: (IsNSUndoManager nsUndoManager, IsNSArray value) => nsUndoManager -> value -> IO ()
setRunLoopModes nsUndoManager value =
  sendMessage nsUndoManager setRunLoopModesSelector (toNSArray value)

-- | @- canUndo@
canUndo :: IsNSUndoManager nsUndoManager => nsUndoManager -> IO Bool
canUndo nsUndoManager =
  sendMessage nsUndoManager canUndoSelector

-- | @- canRedo@
canRedo :: IsNSUndoManager nsUndoManager => nsUndoManager -> IO Bool
canRedo nsUndoManager =
  sendMessage nsUndoManager canRedoSelector

-- | @- undoing@
undoing :: IsNSUndoManager nsUndoManager => nsUndoManager -> IO Bool
undoing nsUndoManager =
  sendMessage nsUndoManager undoingSelector

-- | @- redoing@
redoing :: IsNSUndoManager nsUndoManager => nsUndoManager -> IO Bool
redoing nsUndoManager =
  sendMessage nsUndoManager redoingSelector

-- | @- undoActionIsDiscardable@
undoActionIsDiscardable :: IsNSUndoManager nsUndoManager => nsUndoManager -> IO Bool
undoActionIsDiscardable nsUndoManager =
  sendMessage nsUndoManager undoActionIsDiscardableSelector

-- | @- redoActionIsDiscardable@
redoActionIsDiscardable :: IsNSUndoManager nsUndoManager => nsUndoManager -> IO Bool
redoActionIsDiscardable nsUndoManager =
  sendMessage nsUndoManager redoActionIsDiscardableSelector

-- | @- undoActionName@
undoActionName :: IsNSUndoManager nsUndoManager => nsUndoManager -> IO (Id NSString)
undoActionName nsUndoManager =
  sendMessage nsUndoManager undoActionNameSelector

-- | @- redoActionName@
redoActionName :: IsNSUndoManager nsUndoManager => nsUndoManager -> IO (Id NSString)
redoActionName nsUndoManager =
  sendMessage nsUndoManager redoActionNameSelector

-- | @- undoMenuItemTitle@
undoMenuItemTitle :: IsNSUndoManager nsUndoManager => nsUndoManager -> IO (Id NSString)
undoMenuItemTitle nsUndoManager =
  sendMessage nsUndoManager undoMenuItemTitleSelector

-- | @- redoMenuItemTitle@
redoMenuItemTitle :: IsNSUndoManager nsUndoManager => nsUndoManager -> IO (Id NSString)
redoMenuItemTitle nsUndoManager =
  sendMessage nsUndoManager redoMenuItemTitleSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @beginUndoGrouping@
beginUndoGroupingSelector :: Selector '[] ()
beginUndoGroupingSelector = mkSelector "beginUndoGrouping"

-- | @Selector@ for @endUndoGrouping@
endUndoGroupingSelector :: Selector '[] ()
endUndoGroupingSelector = mkSelector "endUndoGrouping"

-- | @Selector@ for @disableUndoRegistration@
disableUndoRegistrationSelector :: Selector '[] ()
disableUndoRegistrationSelector = mkSelector "disableUndoRegistration"

-- | @Selector@ for @enableUndoRegistration@
enableUndoRegistrationSelector :: Selector '[] ()
enableUndoRegistrationSelector = mkSelector "enableUndoRegistration"

-- | @Selector@ for @undo@
undoSelector :: Selector '[] ()
undoSelector = mkSelector "undo"

-- | @Selector@ for @redo@
redoSelector :: Selector '[] ()
redoSelector = mkSelector "redo"

-- | @Selector@ for @undoNestedGroup@
undoNestedGroupSelector :: Selector '[] ()
undoNestedGroupSelector = mkSelector "undoNestedGroup"

-- | @Selector@ for @removeAllActions@
removeAllActionsSelector :: Selector '[] ()
removeAllActionsSelector = mkSelector "removeAllActions"

-- | @Selector@ for @removeAllActionsWithTarget:@
removeAllActionsWithTargetSelector :: Selector '[RawId] ()
removeAllActionsWithTargetSelector = mkSelector "removeAllActionsWithTarget:"

-- | @Selector@ for @registerUndoWithTarget:selector:object:@
registerUndoWithTarget_selector_objectSelector :: Selector '[RawId, Sel, RawId] ()
registerUndoWithTarget_selector_objectSelector = mkSelector "registerUndoWithTarget:selector:object:"

-- | @Selector@ for @prepareWithInvocationTarget:@
prepareWithInvocationTargetSelector :: Selector '[RawId] RawId
prepareWithInvocationTargetSelector = mkSelector "prepareWithInvocationTarget:"

-- | @Selector@ for @registerUndoWithTarget:handler:@
registerUndoWithTarget_handlerSelector :: Selector '[RawId, Ptr ()] ()
registerUndoWithTarget_handlerSelector = mkSelector "registerUndoWithTarget:handler:"

-- | @Selector@ for @setActionIsDiscardable:@
setActionIsDiscardableSelector :: Selector '[Bool] ()
setActionIsDiscardableSelector = mkSelector "setActionIsDiscardable:"

-- | @Selector@ for @setActionName:@
setActionNameSelector :: Selector '[Id NSString] ()
setActionNameSelector = mkSelector "setActionName:"

-- | @Selector@ for @undoMenuTitleForUndoActionName:@
undoMenuTitleForUndoActionNameSelector :: Selector '[Id NSString] (Id NSString)
undoMenuTitleForUndoActionNameSelector = mkSelector "undoMenuTitleForUndoActionName:"

-- | @Selector@ for @redoMenuTitleForUndoActionName:@
redoMenuTitleForUndoActionNameSelector :: Selector '[Id NSString] (Id NSString)
redoMenuTitleForUndoActionNameSelector = mkSelector "redoMenuTitleForUndoActionName:"

-- | @Selector@ for @groupingLevel@
groupingLevelSelector :: Selector '[] CLong
groupingLevelSelector = mkSelector "groupingLevel"

-- | @Selector@ for @undoRegistrationEnabled@
undoRegistrationEnabledSelector :: Selector '[] Bool
undoRegistrationEnabledSelector = mkSelector "undoRegistrationEnabled"

-- | @Selector@ for @groupsByEvent@
groupsByEventSelector :: Selector '[] Bool
groupsByEventSelector = mkSelector "groupsByEvent"

-- | @Selector@ for @setGroupsByEvent:@
setGroupsByEventSelector :: Selector '[Bool] ()
setGroupsByEventSelector = mkSelector "setGroupsByEvent:"

-- | @Selector@ for @levelsOfUndo@
levelsOfUndoSelector :: Selector '[] CULong
levelsOfUndoSelector = mkSelector "levelsOfUndo"

-- | @Selector@ for @setLevelsOfUndo:@
setLevelsOfUndoSelector :: Selector '[CULong] ()
setLevelsOfUndoSelector = mkSelector "setLevelsOfUndo:"

-- | @Selector@ for @runLoopModes@
runLoopModesSelector :: Selector '[] (Id NSArray)
runLoopModesSelector = mkSelector "runLoopModes"

-- | @Selector@ for @setRunLoopModes:@
setRunLoopModesSelector :: Selector '[Id NSArray] ()
setRunLoopModesSelector = mkSelector "setRunLoopModes:"

-- | @Selector@ for @canUndo@
canUndoSelector :: Selector '[] Bool
canUndoSelector = mkSelector "canUndo"

-- | @Selector@ for @canRedo@
canRedoSelector :: Selector '[] Bool
canRedoSelector = mkSelector "canRedo"

-- | @Selector@ for @undoing@
undoingSelector :: Selector '[] Bool
undoingSelector = mkSelector "undoing"

-- | @Selector@ for @redoing@
redoingSelector :: Selector '[] Bool
redoingSelector = mkSelector "redoing"

-- | @Selector@ for @undoActionIsDiscardable@
undoActionIsDiscardableSelector :: Selector '[] Bool
undoActionIsDiscardableSelector = mkSelector "undoActionIsDiscardable"

-- | @Selector@ for @redoActionIsDiscardable@
redoActionIsDiscardableSelector :: Selector '[] Bool
redoActionIsDiscardableSelector = mkSelector "redoActionIsDiscardable"

-- | @Selector@ for @undoActionName@
undoActionNameSelector :: Selector '[] (Id NSString)
undoActionNameSelector = mkSelector "undoActionName"

-- | @Selector@ for @redoActionName@
redoActionNameSelector :: Selector '[] (Id NSString)
redoActionNameSelector = mkSelector "redoActionName"

-- | @Selector@ for @undoMenuItemTitle@
undoMenuItemTitleSelector :: Selector '[] (Id NSString)
undoMenuItemTitleSelector = mkSelector "undoMenuItemTitle"

-- | @Selector@ for @redoMenuItemTitle@
redoMenuItemTitleSelector :: Selector '[] (Id NSString)
redoMenuItemTitleSelector = mkSelector "redoMenuItemTitle"

