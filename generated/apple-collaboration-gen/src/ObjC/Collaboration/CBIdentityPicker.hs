{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @CBIdentityPicker@.
module ObjC.Collaboration.CBIdentityPicker
  ( CBIdentityPicker
  , IsCBIdentityPicker(..)
  , runModal
  , runModalForWindow_modalDelegate_didEndSelector_contextInfo
  , runModalForWindow_completionHandler
  , title
  , setTitle
  , allowsMultipleSelection
  , setAllowsMultipleSelection
  , identities
  , allowsMultipleSelectionSelector
  , identitiesSelector
  , runModalForWindow_completionHandlerSelector
  , runModalForWindow_modalDelegate_didEndSelector_contextInfoSelector
  , runModalSelector
  , setAllowsMultipleSelectionSelector
  , setTitleSelector
  , titleSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.Collaboration.Internal.Classes
import ObjC.AppKit.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- runModal@
runModal :: IsCBIdentityPicker cbIdentityPicker => cbIdentityPicker -> IO CLong
runModal cbIdentityPicker =
  sendMessage cbIdentityPicker runModalSelector

-- | @- runModalForWindow:modalDelegate:didEndSelector:contextInfo:@
runModalForWindow_modalDelegate_didEndSelector_contextInfo :: (IsCBIdentityPicker cbIdentityPicker, IsNSWindow window) => cbIdentityPicker -> window -> RawId -> Sel -> Ptr () -> IO ()
runModalForWindow_modalDelegate_didEndSelector_contextInfo cbIdentityPicker window delegate didEndSelector contextInfo =
  sendMessage cbIdentityPicker runModalForWindow_modalDelegate_didEndSelector_contextInfoSelector (toNSWindow window) delegate didEndSelector contextInfo

-- | @- runModalForWindow:completionHandler:@
runModalForWindow_completionHandler :: (IsCBIdentityPicker cbIdentityPicker, IsNSWindow window) => cbIdentityPicker -> window -> Ptr () -> IO ()
runModalForWindow_completionHandler cbIdentityPicker window completionHandler =
  sendMessage cbIdentityPicker runModalForWindow_completionHandlerSelector (toNSWindow window) completionHandler

-- | @- title@
title :: IsCBIdentityPicker cbIdentityPicker => cbIdentityPicker -> IO (Id NSString)
title cbIdentityPicker =
  sendMessage cbIdentityPicker titleSelector

-- | @- setTitle:@
setTitle :: (IsCBIdentityPicker cbIdentityPicker, IsNSString value) => cbIdentityPicker -> value -> IO ()
setTitle cbIdentityPicker value =
  sendMessage cbIdentityPicker setTitleSelector (toNSString value)

-- | @- allowsMultipleSelection@
allowsMultipleSelection :: IsCBIdentityPicker cbIdentityPicker => cbIdentityPicker -> IO Bool
allowsMultipleSelection cbIdentityPicker =
  sendMessage cbIdentityPicker allowsMultipleSelectionSelector

-- | @- setAllowsMultipleSelection:@
setAllowsMultipleSelection :: IsCBIdentityPicker cbIdentityPicker => cbIdentityPicker -> Bool -> IO ()
setAllowsMultipleSelection cbIdentityPicker value =
  sendMessage cbIdentityPicker setAllowsMultipleSelectionSelector value

-- | @- identities@
identities :: IsCBIdentityPicker cbIdentityPicker => cbIdentityPicker -> IO (Id NSArray)
identities cbIdentityPicker =
  sendMessage cbIdentityPicker identitiesSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @runModal@
runModalSelector :: Selector '[] CLong
runModalSelector = mkSelector "runModal"

-- | @Selector@ for @runModalForWindow:modalDelegate:didEndSelector:contextInfo:@
runModalForWindow_modalDelegate_didEndSelector_contextInfoSelector :: Selector '[Id NSWindow, RawId, Sel, Ptr ()] ()
runModalForWindow_modalDelegate_didEndSelector_contextInfoSelector = mkSelector "runModalForWindow:modalDelegate:didEndSelector:contextInfo:"

-- | @Selector@ for @runModalForWindow:completionHandler:@
runModalForWindow_completionHandlerSelector :: Selector '[Id NSWindow, Ptr ()] ()
runModalForWindow_completionHandlerSelector = mkSelector "runModalForWindow:completionHandler:"

-- | @Selector@ for @title@
titleSelector :: Selector '[] (Id NSString)
titleSelector = mkSelector "title"

-- | @Selector@ for @setTitle:@
setTitleSelector :: Selector '[Id NSString] ()
setTitleSelector = mkSelector "setTitle:"

-- | @Selector@ for @allowsMultipleSelection@
allowsMultipleSelectionSelector :: Selector '[] Bool
allowsMultipleSelectionSelector = mkSelector "allowsMultipleSelection"

-- | @Selector@ for @setAllowsMultipleSelection:@
setAllowsMultipleSelectionSelector :: Selector '[Bool] ()
setAllowsMultipleSelectionSelector = mkSelector "setAllowsMultipleSelection:"

-- | @Selector@ for @identities@
identitiesSelector :: Selector '[] (Id NSArray)
identitiesSelector = mkSelector "identities"

