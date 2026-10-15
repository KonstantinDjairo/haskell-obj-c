{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRTimeSynchronizationClusterDstOffsetType@.
module ObjC.Matter.MTRTimeSynchronizationClusterDstOffsetType
  ( MTRTimeSynchronizationClusterDstOffsetType
  , IsMTRTimeSynchronizationClusterDstOffsetType(..)
  , init_
  , copyWithZone
  , offset
  , setOffset
  , validStarting
  , setValidStarting
  , validUntil
  , setValidUntil
  , copyWithZoneSelector
  , initSelector
  , offsetSelector
  , setOffsetSelector
  , setValidStartingSelector
  , setValidUntilSelector
  , validStartingSelector
  , validUntilSelector


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
init_ :: IsMTRTimeSynchronizationClusterDstOffsetType mtrTimeSynchronizationClusterDstOffsetType => mtrTimeSynchronizationClusterDstOffsetType -> IO (Id MTRTimeSynchronizationClusterDstOffsetType)
init_ mtrTimeSynchronizationClusterDstOffsetType =
  sendOwnedMessage mtrTimeSynchronizationClusterDstOffsetType initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRTimeSynchronizationClusterDstOffsetType mtrTimeSynchronizationClusterDstOffsetType => mtrTimeSynchronizationClusterDstOffsetType -> Ptr () -> IO RawId
copyWithZone mtrTimeSynchronizationClusterDstOffsetType zone =
  sendOwnedMessage mtrTimeSynchronizationClusterDstOffsetType copyWithZoneSelector zone

-- | @- offset@
offset :: IsMTRTimeSynchronizationClusterDstOffsetType mtrTimeSynchronizationClusterDstOffsetType => mtrTimeSynchronizationClusterDstOffsetType -> IO (Id NSNumber)
offset mtrTimeSynchronizationClusterDstOffsetType =
  sendMessage mtrTimeSynchronizationClusterDstOffsetType offsetSelector

-- | @- setOffset:@
setOffset :: (IsMTRTimeSynchronizationClusterDstOffsetType mtrTimeSynchronizationClusterDstOffsetType, IsNSNumber value) => mtrTimeSynchronizationClusterDstOffsetType -> value -> IO ()
setOffset mtrTimeSynchronizationClusterDstOffsetType value =
  sendMessage mtrTimeSynchronizationClusterDstOffsetType setOffsetSelector (toNSNumber value)

-- | @- validStarting@
validStarting :: IsMTRTimeSynchronizationClusterDstOffsetType mtrTimeSynchronizationClusterDstOffsetType => mtrTimeSynchronizationClusterDstOffsetType -> IO (Id NSNumber)
validStarting mtrTimeSynchronizationClusterDstOffsetType =
  sendMessage mtrTimeSynchronizationClusterDstOffsetType validStartingSelector

-- | @- setValidStarting:@
setValidStarting :: (IsMTRTimeSynchronizationClusterDstOffsetType mtrTimeSynchronizationClusterDstOffsetType, IsNSNumber value) => mtrTimeSynchronizationClusterDstOffsetType -> value -> IO ()
setValidStarting mtrTimeSynchronizationClusterDstOffsetType value =
  sendMessage mtrTimeSynchronizationClusterDstOffsetType setValidStartingSelector (toNSNumber value)

-- | @- validUntil@
validUntil :: IsMTRTimeSynchronizationClusterDstOffsetType mtrTimeSynchronizationClusterDstOffsetType => mtrTimeSynchronizationClusterDstOffsetType -> IO (Id NSNumber)
validUntil mtrTimeSynchronizationClusterDstOffsetType =
  sendMessage mtrTimeSynchronizationClusterDstOffsetType validUntilSelector

-- | @- setValidUntil:@
setValidUntil :: (IsMTRTimeSynchronizationClusterDstOffsetType mtrTimeSynchronizationClusterDstOffsetType, IsNSNumber value) => mtrTimeSynchronizationClusterDstOffsetType -> value -> IO ()
setValidUntil mtrTimeSynchronizationClusterDstOffsetType value =
  sendMessage mtrTimeSynchronizationClusterDstOffsetType setValidUntilSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRTimeSynchronizationClusterDstOffsetType)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @offset@
offsetSelector :: Selector '[] (Id NSNumber)
offsetSelector = mkSelector "offset"

-- | @Selector@ for @setOffset:@
setOffsetSelector :: Selector '[Id NSNumber] ()
setOffsetSelector = mkSelector "setOffset:"

-- | @Selector@ for @validStarting@
validStartingSelector :: Selector '[] (Id NSNumber)
validStartingSelector = mkSelector "validStarting"

-- | @Selector@ for @setValidStarting:@
setValidStartingSelector :: Selector '[Id NSNumber] ()
setValidStartingSelector = mkSelector "setValidStarting:"

-- | @Selector@ for @validUntil@
validUntilSelector :: Selector '[] (Id NSNumber)
validUntilSelector = mkSelector "validUntil"

-- | @Selector@ for @setValidUntil:@
setValidUntilSelector :: Selector '[Id NSNumber] ()
setValidUntilSelector = mkSelector "setValidUntil:"

