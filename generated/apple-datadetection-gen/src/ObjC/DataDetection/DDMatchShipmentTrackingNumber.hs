{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @DDMatchShipmentTrackingNumber@.
module ObjC.DataDetection.DDMatchShipmentTrackingNumber
  ( DDMatchShipmentTrackingNumber
  , IsDDMatchShipmentTrackingNumber(..)
  , carrier
  , trackingNumber
  , carrierSelector
  , trackingNumberSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.DataDetection.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- carrier@
carrier :: IsDDMatchShipmentTrackingNumber ddMatchShipmentTrackingNumber => ddMatchShipmentTrackingNumber -> IO (Id NSString)
carrier ddMatchShipmentTrackingNumber =
  sendMessage ddMatchShipmentTrackingNumber carrierSelector

-- | @- trackingNumber@
trackingNumber :: IsDDMatchShipmentTrackingNumber ddMatchShipmentTrackingNumber => ddMatchShipmentTrackingNumber -> IO (Id NSString)
trackingNumber ddMatchShipmentTrackingNumber =
  sendMessage ddMatchShipmentTrackingNumber trackingNumberSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @carrier@
carrierSelector :: Selector '[] (Id NSString)
carrierSelector = mkSelector "carrier"

-- | @Selector@ for @trackingNumber@
trackingNumberSelector :: Selector '[] (Id NSString)
trackingNumberSelector = mkSelector "trackingNumber"

