{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Represents pool of SmartCard reader slots.
--
-- Generated bindings for @TKSmartCardSlotManager@.
module ObjC.CryptoTokenKit.TKSmartCardSlotManager
  ( TKSmartCardSlotManager
  , IsTKSmartCardSlotManager(..)
  , getSlotWithName_reply
  , slotNamed
  , defaultManager
  , slotNames
  , defaultManagerSelector
  , getSlotWithName_replySelector
  , slotNamedSelector
  , slotNamesSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.CryptoTokenKit.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | Instantiates smartcard reader slot of specified name.  If specified name is not registered, reports nil.
--
-- ObjC selector: @- getSlotWithName:reply:@
getSlotWithName_reply :: (IsTKSmartCardSlotManager tkSmartCardSlotManager, IsNSString name) => tkSmartCardSlotManager -> name -> Ptr () -> IO ()
getSlotWithName_reply tkSmartCardSlotManager name reply =
  sendMessage tkSmartCardSlotManager getSlotWithName_replySelector (toNSString name) reply

-- | Gets SmartCard reader slot with specified name.  If reader slot with this name does not exist, returns nil.
--
-- ObjC selector: @- slotNamed:@
slotNamed :: (IsTKSmartCardSlotManager tkSmartCardSlotManager, IsNSString name) => tkSmartCardSlotManager -> name -> IO (Id TKSmartCardSlot)
slotNamed tkSmartCardSlotManager name =
  sendMessage tkSmartCardSlotManager slotNamedSelector (toNSString name)

-- | Global pool of SmartCard reader slots. macOS: Note that defaultManager instance is accessible only if the calling application has 'com.apple.security.smartcard' entitlement set to Boolean:YES.  If the calling application does not have this entitlement, defaultManager is always set to nil. iOS: The defaultManager instance is always accessible.
--
-- ObjC selector: @+ defaultManager@
defaultManager :: IO (Id TKSmartCardSlotManager)
defaultManager  =
  do
    cls' <- getRequiredClass "TKSmartCardSlotManager"
    sendClassMessage cls' defaultManagerSelector

-- | Array of currently known slots in the system.  Slots are identified by NSString name instances.  Use KVO to be notified about slots arrivals and removals.
--
-- ObjC selector: @- slotNames@
slotNames :: IsTKSmartCardSlotManager tkSmartCardSlotManager => tkSmartCardSlotManager -> IO (Id NSArray)
slotNames tkSmartCardSlotManager =
  sendMessage tkSmartCardSlotManager slotNamesSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @getSlotWithName:reply:@
getSlotWithName_replySelector :: Selector '[Id NSString, Ptr ()] ()
getSlotWithName_replySelector = mkSelector "getSlotWithName:reply:"

-- | @Selector@ for @slotNamed:@
slotNamedSelector :: Selector '[Id NSString] (Id TKSmartCardSlot)
slotNamedSelector = mkSelector "slotNamed:"

-- | @Selector@ for @defaultManager@
defaultManagerSelector :: Selector '[] (Id TKSmartCardSlotManager)
defaultManagerSelector = mkSelector "defaultManager"

-- | @Selector@ for @slotNames@
slotNamesSelector :: Selector '[] (Id NSArray)
slotNamesSelector = mkSelector "slotNames"

