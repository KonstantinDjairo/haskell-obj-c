{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRDoorLockClusterDoorStateChangeEvent@.
module ObjC.Matter.MTRDoorLockClusterDoorStateChangeEvent
  ( MTRDoorLockClusterDoorStateChangeEvent
  , IsMTRDoorLockClusterDoorStateChangeEvent(..)
  , init_
  , copyWithZone
  , doorState
  , setDoorState
  , copyWithZoneSelector
  , doorStateSelector
  , initSelector
  , setDoorStateSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.Matter.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- init@
init_ :: IsMTRDoorLockClusterDoorStateChangeEvent mtrDoorLockClusterDoorStateChangeEvent => mtrDoorLockClusterDoorStateChangeEvent -> IO (Id MTRDoorLockClusterDoorStateChangeEvent)
init_ mtrDoorLockClusterDoorStateChangeEvent =
  sendOwnedMessage mtrDoorLockClusterDoorStateChangeEvent initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRDoorLockClusterDoorStateChangeEvent mtrDoorLockClusterDoorStateChangeEvent => mtrDoorLockClusterDoorStateChangeEvent -> Ptr () -> IO RawId
copyWithZone mtrDoorLockClusterDoorStateChangeEvent zone =
  sendOwnedMessage mtrDoorLockClusterDoorStateChangeEvent copyWithZoneSelector zone

-- | @- doorState@
doorState :: IsMTRDoorLockClusterDoorStateChangeEvent mtrDoorLockClusterDoorStateChangeEvent => mtrDoorLockClusterDoorStateChangeEvent -> IO (Id NSNumber)
doorState mtrDoorLockClusterDoorStateChangeEvent =
  sendMessage mtrDoorLockClusterDoorStateChangeEvent doorStateSelector

-- | @- setDoorState:@
setDoorState :: (IsMTRDoorLockClusterDoorStateChangeEvent mtrDoorLockClusterDoorStateChangeEvent, IsNSNumber value) => mtrDoorLockClusterDoorStateChangeEvent -> value -> IO ()
setDoorState mtrDoorLockClusterDoorStateChangeEvent value =
  sendMessage mtrDoorLockClusterDoorStateChangeEvent setDoorStateSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRDoorLockClusterDoorStateChangeEvent)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @doorState@
doorStateSelector :: Selector '[] (Id NSNumber)
doorStateSelector = mkSelector "doorState"

-- | @Selector@ for @setDoorState:@
setDoorStateSelector :: Selector '[Id NSNumber] ()
setDoorStateSelector = mkSelector "setDoorState:"

