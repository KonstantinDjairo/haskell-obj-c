{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | MTRReadParams    This is used to control the behavior of attribute reads and subscribes.    If not provided (i.e. nil passed for the MTRReadParams argument), will be    treated as if a default-initialized object was passed in.
--
-- Generated bindings for @MTRReadParams@.
module ObjC.Matter.MTRReadParams
  ( MTRReadParams
  , IsMTRReadParams(..)
  , init_
  , copyWithZone
  , fabricFiltered
  , setFabricFiltered
  , copyWithZoneSelector
  , fabricFilteredSelector
  , initSelector
  , setFabricFilteredSelector


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
init_ :: IsMTRReadParams mtrReadParams => mtrReadParams -> IO (Id MTRReadParams)
init_ mtrReadParams =
  sendOwnedMessage mtrReadParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRReadParams mtrReadParams => mtrReadParams -> Ptr () -> IO RawId
copyWithZone mtrReadParams zone =
  sendOwnedMessage mtrReadParams copyWithZoneSelector zone

-- | Whether the read/subscribe is fabric-filtered. nil (the default value) is treated as YES.
--
-- If YES, the read/subscribe is fabric-filtered and will only see things associated with the fabric of the reader/subscriber.
--
-- If NO, the read/subscribe is not fabric-filtered and will see all non-fabric-sensitive data for the given attribute path.
--
-- ObjC selector: @- fabricFiltered@
fabricFiltered :: IsMTRReadParams mtrReadParams => mtrReadParams -> IO (Id NSNumber)
fabricFiltered mtrReadParams =
  sendMessage mtrReadParams fabricFilteredSelector

-- | Whether the read/subscribe is fabric-filtered. nil (the default value) is treated as YES.
--
-- If YES, the read/subscribe is fabric-filtered and will only see things associated with the fabric of the reader/subscriber.
--
-- If NO, the read/subscribe is not fabric-filtered and will see all non-fabric-sensitive data for the given attribute path.
--
-- ObjC selector: @- setFabricFiltered:@
setFabricFiltered :: (IsMTRReadParams mtrReadParams, IsNSNumber value) => mtrReadParams -> value -> IO ()
setFabricFiltered mtrReadParams value =
  sendMessage mtrReadParams setFabricFilteredSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRReadParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @fabricFiltered@
fabricFilteredSelector :: Selector '[] (Id NSNumber)
fabricFilteredSelector = mkSelector "fabricFiltered"

-- | @Selector@ for @setFabricFiltered:@
setFabricFilteredSelector :: Selector '[Id NSNumber] ()
setFabricFilteredSelector = mkSelector "setFabricFiltered:"

