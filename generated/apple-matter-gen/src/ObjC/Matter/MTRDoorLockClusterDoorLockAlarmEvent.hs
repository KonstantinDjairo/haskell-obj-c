{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRDoorLockClusterDoorLockAlarmEvent@.
module ObjC.Matter.MTRDoorLockClusterDoorLockAlarmEvent
  ( MTRDoorLockClusterDoorLockAlarmEvent
  , IsMTRDoorLockClusterDoorLockAlarmEvent(..)
  , init_
  , copyWithZone
  , alarmCode
  , setAlarmCode
  , alarmCodeSelector
  , copyWithZoneSelector
  , initSelector
  , setAlarmCodeSelector


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
init_ :: IsMTRDoorLockClusterDoorLockAlarmEvent mtrDoorLockClusterDoorLockAlarmEvent => mtrDoorLockClusterDoorLockAlarmEvent -> IO (Id MTRDoorLockClusterDoorLockAlarmEvent)
init_ mtrDoorLockClusterDoorLockAlarmEvent =
  sendOwnedMessage mtrDoorLockClusterDoorLockAlarmEvent initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRDoorLockClusterDoorLockAlarmEvent mtrDoorLockClusterDoorLockAlarmEvent => mtrDoorLockClusterDoorLockAlarmEvent -> Ptr () -> IO RawId
copyWithZone mtrDoorLockClusterDoorLockAlarmEvent zone =
  sendOwnedMessage mtrDoorLockClusterDoorLockAlarmEvent copyWithZoneSelector zone

-- | @- alarmCode@
alarmCode :: IsMTRDoorLockClusterDoorLockAlarmEvent mtrDoorLockClusterDoorLockAlarmEvent => mtrDoorLockClusterDoorLockAlarmEvent -> IO (Id NSNumber)
alarmCode mtrDoorLockClusterDoorLockAlarmEvent =
  sendMessage mtrDoorLockClusterDoorLockAlarmEvent alarmCodeSelector

-- | @- setAlarmCode:@
setAlarmCode :: (IsMTRDoorLockClusterDoorLockAlarmEvent mtrDoorLockClusterDoorLockAlarmEvent, IsNSNumber value) => mtrDoorLockClusterDoorLockAlarmEvent -> value -> IO ()
setAlarmCode mtrDoorLockClusterDoorLockAlarmEvent value =
  sendMessage mtrDoorLockClusterDoorLockAlarmEvent setAlarmCodeSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRDoorLockClusterDoorLockAlarmEvent)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @alarmCode@
alarmCodeSelector :: Selector '[] (Id NSNumber)
alarmCodeSelector = mkSelector "alarmCode"

-- | @Selector@ for @setAlarmCode:@
setAlarmCodeSelector :: Selector '[Id NSNumber] ()
setAlarmCodeSelector = mkSelector "setAlarmCode:"

