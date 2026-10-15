{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTROtaSoftwareUpdateRequestorClusterVersionAppliedEvent@.
module ObjC.Matter.MTROtaSoftwareUpdateRequestorClusterVersionAppliedEvent
  ( MTROtaSoftwareUpdateRequestorClusterVersionAppliedEvent
  , IsMTROtaSoftwareUpdateRequestorClusterVersionAppliedEvent(..)
  , init_
  , copyWithZone
  , softwareVersion
  , setSoftwareVersion
  , productID
  , setProductID
  , copyWithZoneSelector
  , initSelector
  , productIDSelector
  , setProductIDSelector
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
init_ :: IsMTROtaSoftwareUpdateRequestorClusterVersionAppliedEvent mtrOtaSoftwareUpdateRequestorClusterVersionAppliedEvent => mtrOtaSoftwareUpdateRequestorClusterVersionAppliedEvent -> IO (Id MTROtaSoftwareUpdateRequestorClusterVersionAppliedEvent)
init_ mtrOtaSoftwareUpdateRequestorClusterVersionAppliedEvent =
  sendOwnedMessage mtrOtaSoftwareUpdateRequestorClusterVersionAppliedEvent initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTROtaSoftwareUpdateRequestorClusterVersionAppliedEvent mtrOtaSoftwareUpdateRequestorClusterVersionAppliedEvent => mtrOtaSoftwareUpdateRequestorClusterVersionAppliedEvent -> Ptr () -> IO RawId
copyWithZone mtrOtaSoftwareUpdateRequestorClusterVersionAppliedEvent zone =
  sendOwnedMessage mtrOtaSoftwareUpdateRequestorClusterVersionAppliedEvent copyWithZoneSelector zone

-- | @- softwareVersion@
softwareVersion :: IsMTROtaSoftwareUpdateRequestorClusterVersionAppliedEvent mtrOtaSoftwareUpdateRequestorClusterVersionAppliedEvent => mtrOtaSoftwareUpdateRequestorClusterVersionAppliedEvent -> IO (Id NSNumber)
softwareVersion mtrOtaSoftwareUpdateRequestorClusterVersionAppliedEvent =
  sendMessage mtrOtaSoftwareUpdateRequestorClusterVersionAppliedEvent softwareVersionSelector

-- | @- setSoftwareVersion:@
setSoftwareVersion :: (IsMTROtaSoftwareUpdateRequestorClusterVersionAppliedEvent mtrOtaSoftwareUpdateRequestorClusterVersionAppliedEvent, IsNSNumber value) => mtrOtaSoftwareUpdateRequestorClusterVersionAppliedEvent -> value -> IO ()
setSoftwareVersion mtrOtaSoftwareUpdateRequestorClusterVersionAppliedEvent value =
  sendMessage mtrOtaSoftwareUpdateRequestorClusterVersionAppliedEvent setSoftwareVersionSelector (toNSNumber value)

-- | @- productID@
productID :: IsMTROtaSoftwareUpdateRequestorClusterVersionAppliedEvent mtrOtaSoftwareUpdateRequestorClusterVersionAppliedEvent => mtrOtaSoftwareUpdateRequestorClusterVersionAppliedEvent -> IO (Id NSNumber)
productID mtrOtaSoftwareUpdateRequestorClusterVersionAppliedEvent =
  sendMessage mtrOtaSoftwareUpdateRequestorClusterVersionAppliedEvent productIDSelector

-- | @- setProductID:@
setProductID :: (IsMTROtaSoftwareUpdateRequestorClusterVersionAppliedEvent mtrOtaSoftwareUpdateRequestorClusterVersionAppliedEvent, IsNSNumber value) => mtrOtaSoftwareUpdateRequestorClusterVersionAppliedEvent -> value -> IO ()
setProductID mtrOtaSoftwareUpdateRequestorClusterVersionAppliedEvent value =
  sendMessage mtrOtaSoftwareUpdateRequestorClusterVersionAppliedEvent setProductIDSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTROtaSoftwareUpdateRequestorClusterVersionAppliedEvent)
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

-- | @Selector@ for @productID@
productIDSelector :: Selector '[] (Id NSNumber)
productIDSelector = mkSelector "productID"

-- | @Selector@ for @setProductID:@
setProductIDSelector :: Selector '[Id NSNumber] ()
setProductIDSelector = mkSelector "setProductID:"

