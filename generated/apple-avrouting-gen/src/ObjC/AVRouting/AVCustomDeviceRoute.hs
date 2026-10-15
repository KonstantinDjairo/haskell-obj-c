{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | AVCustomDeviceRoute
--
-- This class represents a custom device route.
--
-- Clients can use the receiver's networkEndpoint or bluetoothIdentifier to establish a connection to the device.                Usually, either the network endpoint or the Bluetooth identifier will be nil, depending on what type of device it is.                In certain scenarios both can be non-nil, in which case the client can decide which one to use.
--
-- Generated bindings for @AVCustomDeviceRoute@.
module ObjC.AVRouting.AVCustomDeviceRoute
  ( AVCustomDeviceRoute
  , IsAVCustomDeviceRoute(..)
  , networkEndpoint
  , bluetoothIdentifier
  , bluetoothIdentifierSelector
  , networkEndpointSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AVRouting.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | networkEndpoint
--
-- An @nw_endpoint_t@ to which clients can establish a connection.
--
-- Use Network.opaque() to convert an @nw_endpoint_t@ to an NWEndpoint in Swift.
--
-- ObjC selector: @- networkEndpoint@
networkEndpoint :: IsAVCustomDeviceRoute avCustomDeviceRoute => avCustomDeviceRoute -> IO (Id NSObject)
networkEndpoint avCustomDeviceRoute =
  sendMessage avCustomDeviceRoute networkEndpointSelector

-- | bluetoothIdentifier
--
-- A bluetooth identifier which clients can use to establish a connection to a bluetooth device.
--
-- ObjC selector: @- bluetoothIdentifier@
bluetoothIdentifier :: IsAVCustomDeviceRoute avCustomDeviceRoute => avCustomDeviceRoute -> IO RawId
bluetoothIdentifier avCustomDeviceRoute =
  sendMessage avCustomDeviceRoute bluetoothIdentifierSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @networkEndpoint@
networkEndpointSelector :: Selector '[] (Id NSObject)
networkEndpointSelector = mkSelector "networkEndpoint"

-- | @Selector@ for @bluetoothIdentifier@
bluetoothIdentifierSelector :: Selector '[] RawId
bluetoothIdentifierSelector = mkSelector "bluetoothIdentifier"

