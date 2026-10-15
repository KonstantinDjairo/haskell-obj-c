{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRBasicClusterStartUpEvent@.
module ObjC.Matter.MTRBasicClusterStartUpEvent
  ( MTRBasicClusterStartUpEvent
  , IsMTRBasicClusterStartUpEvent(..)
  , init_
  , copyWithZone
  , softwareVersion
  , setSoftwareVersion
  , copyWithZoneSelector
  , initSelector
  , setSoftwareVersionSelector
  , softwareVersionSelector


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
init_ :: IsMTRBasicClusterStartUpEvent mtrBasicClusterStartUpEvent => mtrBasicClusterStartUpEvent -> IO (Id MTRBasicClusterStartUpEvent)
init_ mtrBasicClusterStartUpEvent =
  sendOwnedMessage mtrBasicClusterStartUpEvent initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRBasicClusterStartUpEvent mtrBasicClusterStartUpEvent => mtrBasicClusterStartUpEvent -> Ptr () -> IO RawId
copyWithZone mtrBasicClusterStartUpEvent zone =
  sendOwnedMessage mtrBasicClusterStartUpEvent copyWithZoneSelector zone

-- | @- softwareVersion@
softwareVersion :: IsMTRBasicClusterStartUpEvent mtrBasicClusterStartUpEvent => mtrBasicClusterStartUpEvent -> IO (Id NSNumber)
softwareVersion mtrBasicClusterStartUpEvent =
  sendMessage mtrBasicClusterStartUpEvent softwareVersionSelector

-- | @- setSoftwareVersion:@
setSoftwareVersion :: (IsMTRBasicClusterStartUpEvent mtrBasicClusterStartUpEvent, IsNSNumber value) => mtrBasicClusterStartUpEvent -> value -> IO ()
setSoftwareVersion mtrBasicClusterStartUpEvent value =
  sendMessage mtrBasicClusterStartUpEvent setSoftwareVersionSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRBasicClusterStartUpEvent)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @softwareVersion@
softwareVersionSelector :: Selector '[] (Id NSNumber)
softwareVersionSelector = mkSelector "softwareVersion"

-- | @Selector@ for @setSoftwareVersion:@
setSoftwareVersionSelector :: Selector '[Id NSNumber] ()
setSoftwareVersionSelector = mkSelector "setSoftwareVersion:"

