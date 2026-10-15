{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRBasicClusterReachableChangedEvent@.
module ObjC.Matter.MTRBasicClusterReachableChangedEvent
  ( MTRBasicClusterReachableChangedEvent
  , IsMTRBasicClusterReachableChangedEvent(..)
  , init_
  , copyWithZone
  , reachableNewValue
  , setReachableNewValue
  , copyWithZoneSelector
  , initSelector
  , reachableNewValueSelector
  , setReachableNewValueSelector


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
init_ :: IsMTRBasicClusterReachableChangedEvent mtrBasicClusterReachableChangedEvent => mtrBasicClusterReachableChangedEvent -> IO (Id MTRBasicClusterReachableChangedEvent)
init_ mtrBasicClusterReachableChangedEvent =
  sendOwnedMessage mtrBasicClusterReachableChangedEvent initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRBasicClusterReachableChangedEvent mtrBasicClusterReachableChangedEvent => mtrBasicClusterReachableChangedEvent -> Ptr () -> IO RawId
copyWithZone mtrBasicClusterReachableChangedEvent zone =
  sendOwnedMessage mtrBasicClusterReachableChangedEvent copyWithZoneSelector zone

-- | @- reachableNewValue@
reachableNewValue :: IsMTRBasicClusterReachableChangedEvent mtrBasicClusterReachableChangedEvent => mtrBasicClusterReachableChangedEvent -> IO (Id NSNumber)
reachableNewValue mtrBasicClusterReachableChangedEvent =
  sendMessage mtrBasicClusterReachableChangedEvent reachableNewValueSelector

-- | @- setReachableNewValue:@
setReachableNewValue :: (IsMTRBasicClusterReachableChangedEvent mtrBasicClusterReachableChangedEvent, IsNSNumber value) => mtrBasicClusterReachableChangedEvent -> value -> IO ()
setReachableNewValue mtrBasicClusterReachableChangedEvent value =
  sendMessage mtrBasicClusterReachableChangedEvent setReachableNewValueSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRBasicClusterReachableChangedEvent)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @reachableNewValue@
reachableNewValueSelector :: Selector '[] (Id NSNumber)
reachableNewValueSelector = mkSelector "reachableNewValue"

-- | @Selector@ for @setReachableNewValue:@
setReachableNewValueSelector :: Selector '[Id NSNumber] ()
setReachableNewValueSelector = mkSelector "setReachableNewValue:"

