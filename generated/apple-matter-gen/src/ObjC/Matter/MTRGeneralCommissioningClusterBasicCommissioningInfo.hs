{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRGeneralCommissioningClusterBasicCommissioningInfo@.
module ObjC.Matter.MTRGeneralCommissioningClusterBasicCommissioningInfo
  ( MTRGeneralCommissioningClusterBasicCommissioningInfo
  , IsMTRGeneralCommissioningClusterBasicCommissioningInfo(..)
  , init_
  , copyWithZone
  , failSafeExpiryLengthSeconds
  , setFailSafeExpiryLengthSeconds
  , maxCumulativeFailsafeSeconds
  , setMaxCumulativeFailsafeSeconds
  , copyWithZoneSelector
  , failSafeExpiryLengthSecondsSelector
  , initSelector
  , maxCumulativeFailsafeSecondsSelector
  , setFailSafeExpiryLengthSecondsSelector
  , setMaxCumulativeFailsafeSecondsSelector


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
init_ :: IsMTRGeneralCommissioningClusterBasicCommissioningInfo mtrGeneralCommissioningClusterBasicCommissioningInfo => mtrGeneralCommissioningClusterBasicCommissioningInfo -> IO (Id MTRGeneralCommissioningClusterBasicCommissioningInfo)
init_ mtrGeneralCommissioningClusterBasicCommissioningInfo =
  sendOwnedMessage mtrGeneralCommissioningClusterBasicCommissioningInfo initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRGeneralCommissioningClusterBasicCommissioningInfo mtrGeneralCommissioningClusterBasicCommissioningInfo => mtrGeneralCommissioningClusterBasicCommissioningInfo -> Ptr () -> IO RawId
copyWithZone mtrGeneralCommissioningClusterBasicCommissioningInfo zone =
  sendOwnedMessage mtrGeneralCommissioningClusterBasicCommissioningInfo copyWithZoneSelector zone

-- | @- failSafeExpiryLengthSeconds@
failSafeExpiryLengthSeconds :: IsMTRGeneralCommissioningClusterBasicCommissioningInfo mtrGeneralCommissioningClusterBasicCommissioningInfo => mtrGeneralCommissioningClusterBasicCommissioningInfo -> IO (Id NSNumber)
failSafeExpiryLengthSeconds mtrGeneralCommissioningClusterBasicCommissioningInfo =
  sendMessage mtrGeneralCommissioningClusterBasicCommissioningInfo failSafeExpiryLengthSecondsSelector

-- | @- setFailSafeExpiryLengthSeconds:@
setFailSafeExpiryLengthSeconds :: (IsMTRGeneralCommissioningClusterBasicCommissioningInfo mtrGeneralCommissioningClusterBasicCommissioningInfo, IsNSNumber value) => mtrGeneralCommissioningClusterBasicCommissioningInfo -> value -> IO ()
setFailSafeExpiryLengthSeconds mtrGeneralCommissioningClusterBasicCommissioningInfo value =
  sendMessage mtrGeneralCommissioningClusterBasicCommissioningInfo setFailSafeExpiryLengthSecondsSelector (toNSNumber value)

-- | @- maxCumulativeFailsafeSeconds@
maxCumulativeFailsafeSeconds :: IsMTRGeneralCommissioningClusterBasicCommissioningInfo mtrGeneralCommissioningClusterBasicCommissioningInfo => mtrGeneralCommissioningClusterBasicCommissioningInfo -> IO (Id NSNumber)
maxCumulativeFailsafeSeconds mtrGeneralCommissioningClusterBasicCommissioningInfo =
  sendMessage mtrGeneralCommissioningClusterBasicCommissioningInfo maxCumulativeFailsafeSecondsSelector

-- | @- setMaxCumulativeFailsafeSeconds:@
setMaxCumulativeFailsafeSeconds :: (IsMTRGeneralCommissioningClusterBasicCommissioningInfo mtrGeneralCommissioningClusterBasicCommissioningInfo, IsNSNumber value) => mtrGeneralCommissioningClusterBasicCommissioningInfo -> value -> IO ()
setMaxCumulativeFailsafeSeconds mtrGeneralCommissioningClusterBasicCommissioningInfo value =
  sendMessage mtrGeneralCommissioningClusterBasicCommissioningInfo setMaxCumulativeFailsafeSecondsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRGeneralCommissioningClusterBasicCommissioningInfo)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @failSafeExpiryLengthSeconds@
failSafeExpiryLengthSecondsSelector :: Selector '[] (Id NSNumber)
failSafeExpiryLengthSecondsSelector = mkSelector "failSafeExpiryLengthSeconds"

-- | @Selector@ for @setFailSafeExpiryLengthSeconds:@
setFailSafeExpiryLengthSecondsSelector :: Selector '[Id NSNumber] ()
setFailSafeExpiryLengthSecondsSelector = mkSelector "setFailSafeExpiryLengthSeconds:"

-- | @Selector@ for @maxCumulativeFailsafeSeconds@
maxCumulativeFailsafeSecondsSelector :: Selector '[] (Id NSNumber)
maxCumulativeFailsafeSecondsSelector = mkSelector "maxCumulativeFailsafeSeconds"

-- | @Selector@ for @setMaxCumulativeFailsafeSeconds:@
setMaxCumulativeFailsafeSecondsSelector :: Selector '[Id NSNumber] ()
setMaxCumulativeFailsafeSecondsSelector = mkSelector "setMaxCumulativeFailsafeSeconds:"

