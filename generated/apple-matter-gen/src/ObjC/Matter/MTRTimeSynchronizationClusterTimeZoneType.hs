{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRTimeSynchronizationClusterTimeZoneType@.
module ObjC.Matter.MTRTimeSynchronizationClusterTimeZoneType
  ( MTRTimeSynchronizationClusterTimeZoneType
  , IsMTRTimeSynchronizationClusterTimeZoneType(..)
  , init_
  , copyWithZone
  , offset
  , setOffset
  , validAt
  , setValidAt
  , name
  , setName
  , copyWithZoneSelector
  , initSelector
  , nameSelector
  , offsetSelector
  , setNameSelector
  , setOffsetSelector
  , setValidAtSelector
  , validAtSelector


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
init_ :: IsMTRTimeSynchronizationClusterTimeZoneType mtrTimeSynchronizationClusterTimeZoneType => mtrTimeSynchronizationClusterTimeZoneType -> IO (Id MTRTimeSynchronizationClusterTimeZoneType)
init_ mtrTimeSynchronizationClusterTimeZoneType =
  sendOwnedMessage mtrTimeSynchronizationClusterTimeZoneType initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRTimeSynchronizationClusterTimeZoneType mtrTimeSynchronizationClusterTimeZoneType => mtrTimeSynchronizationClusterTimeZoneType -> Ptr () -> IO RawId
copyWithZone mtrTimeSynchronizationClusterTimeZoneType zone =
  sendOwnedMessage mtrTimeSynchronizationClusterTimeZoneType copyWithZoneSelector zone

-- | @- offset@
offset :: IsMTRTimeSynchronizationClusterTimeZoneType mtrTimeSynchronizationClusterTimeZoneType => mtrTimeSynchronizationClusterTimeZoneType -> IO (Id NSNumber)
offset mtrTimeSynchronizationClusterTimeZoneType =
  sendMessage mtrTimeSynchronizationClusterTimeZoneType offsetSelector

-- | @- setOffset:@
setOffset :: (IsMTRTimeSynchronizationClusterTimeZoneType mtrTimeSynchronizationClusterTimeZoneType, IsNSNumber value) => mtrTimeSynchronizationClusterTimeZoneType -> value -> IO ()
setOffset mtrTimeSynchronizationClusterTimeZoneType value =
  sendMessage mtrTimeSynchronizationClusterTimeZoneType setOffsetSelector (toNSNumber value)

-- | @- validAt@
validAt :: IsMTRTimeSynchronizationClusterTimeZoneType mtrTimeSynchronizationClusterTimeZoneType => mtrTimeSynchronizationClusterTimeZoneType -> IO (Id NSNumber)
validAt mtrTimeSynchronizationClusterTimeZoneType =
  sendMessage mtrTimeSynchronizationClusterTimeZoneType validAtSelector

-- | @- setValidAt:@
setValidAt :: (IsMTRTimeSynchronizationClusterTimeZoneType mtrTimeSynchronizationClusterTimeZoneType, IsNSNumber value) => mtrTimeSynchronizationClusterTimeZoneType -> value -> IO ()
setValidAt mtrTimeSynchronizationClusterTimeZoneType value =
  sendMessage mtrTimeSynchronizationClusterTimeZoneType setValidAtSelector (toNSNumber value)

-- | @- name@
name :: IsMTRTimeSynchronizationClusterTimeZoneType mtrTimeSynchronizationClusterTimeZoneType => mtrTimeSynchronizationClusterTimeZoneType -> IO (Id NSString)
name mtrTimeSynchronizationClusterTimeZoneType =
  sendMessage mtrTimeSynchronizationClusterTimeZoneType nameSelector

-- | @- setName:@
setName :: (IsMTRTimeSynchronizationClusterTimeZoneType mtrTimeSynchronizationClusterTimeZoneType, IsNSString value) => mtrTimeSynchronizationClusterTimeZoneType -> value -> IO ()
setName mtrTimeSynchronizationClusterTimeZoneType value =
  sendMessage mtrTimeSynchronizationClusterTimeZoneType setNameSelector (toNSString value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRTimeSynchronizationClusterTimeZoneType)
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

-- | @Selector@ for @validAt@
validAtSelector :: Selector '[] (Id NSNumber)
validAtSelector = mkSelector "validAt"

-- | @Selector@ for @setValidAt:@
setValidAtSelector :: Selector '[Id NSNumber] ()
setValidAtSelector = mkSelector "setValidAt:"

-- | @Selector@ for @name@
nameSelector :: Selector '[] (Id NSString)
nameSelector = mkSelector "name"

-- | @Selector@ for @setName:@
setNameSelector :: Selector '[Id NSString] ()
setNameSelector = mkSelector "setName:"

