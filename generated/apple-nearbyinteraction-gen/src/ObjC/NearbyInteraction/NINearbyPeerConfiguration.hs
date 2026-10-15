{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | An object to describe and configure parameters to be used in a nearby interaction session for mutual relative positional measurements.
--
-- Devices engaged in a session run with an NINearbyPeerConfiguration are able to continuously generate positional measurements relative to one another.
--
-- Generated bindings for @NINearbyPeerConfiguration@.
module ObjC.NearbyInteraction.NINearbyPeerConfiguration
  ( NINearbyPeerConfiguration
  , IsNINearbyPeerConfiguration(..)
  , initWithPeerToken
  , init_
  , new
  , peerDiscoveryToken
  , cameraAssistanceEnabled
  , setCameraAssistanceEnabled
  , cameraAssistanceEnabledSelector
  , initSelector
  , initWithPeerTokenSelector
  , newSelector
  , peerDiscoveryTokenSelector
  , setCameraAssistanceEnabledSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.NearbyInteraction.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | Initializes a new configuration with the provided peer token.
--
-- @peerToken@ — A discovery token received from the peer for this session.
--
-- ObjC selector: @- initWithPeerToken:@
initWithPeerToken :: (IsNINearbyPeerConfiguration niNearbyPeerConfiguration, IsNIDiscoveryToken peerToken) => niNearbyPeerConfiguration -> peerToken -> IO (Id NINearbyPeerConfiguration)
initWithPeerToken niNearbyPeerConfiguration peerToken =
  sendOwnedMessage niNearbyPeerConfiguration initWithPeerTokenSelector (toNIDiscoveryToken peerToken)

-- | Unavailable
--
-- ObjC selector: @- init@
init_ :: IsNINearbyPeerConfiguration niNearbyPeerConfiguration => niNearbyPeerConfiguration -> IO (Id NINearbyPeerConfiguration)
init_ niNearbyPeerConfiguration =
  sendOwnedMessage niNearbyPeerConfiguration initSelector

-- | @+ new@
new :: IO (Id NINearbyPeerConfiguration)
new  =
  do
    cls' <- getRequiredClass "NINearbyPeerConfiguration"
    sendOwnedClassMessage cls' newSelector

-- | The discovery token identifying the peer device for this session configuration.
--
-- ObjC selector: @- peerDiscoveryToken@
peerDiscoveryToken :: IsNINearbyPeerConfiguration niNearbyPeerConfiguration => niNearbyPeerConfiguration -> IO (Id NIDiscoveryToken)
peerDiscoveryToken niNearbyPeerConfiguration =
  sendMessage niNearbyPeerConfiguration peerDiscoveryTokenSelector

-- | Enables camera assistance during the NISession run with this configuration
--
-- : If true, optionally call setARSession: on the NISession before calling runWithConfiguration: If true and setARSession: is not called, an ARSession will automatically be created If true and the platform does not support camera assistance, the NISession will generate an error when runWithConfiguration: is called
--
-- Note: : Check supportsCameraAssistance property in NIDeviceCapability returned from deviceCapabilities properties on NISession
--
-- ObjC selector: @- cameraAssistanceEnabled@
cameraAssistanceEnabled :: IsNINearbyPeerConfiguration niNearbyPeerConfiguration => niNearbyPeerConfiguration -> IO Bool
cameraAssistanceEnabled niNearbyPeerConfiguration =
  sendMessage niNearbyPeerConfiguration cameraAssistanceEnabledSelector

-- | Enables camera assistance during the NISession run with this configuration
--
-- : If true, optionally call setARSession: on the NISession before calling runWithConfiguration: If true and setARSession: is not called, an ARSession will automatically be created If true and the platform does not support camera assistance, the NISession will generate an error when runWithConfiguration: is called
--
-- Note: : Check supportsCameraAssistance property in NIDeviceCapability returned from deviceCapabilities properties on NISession
--
-- ObjC selector: @- setCameraAssistanceEnabled:@
setCameraAssistanceEnabled :: IsNINearbyPeerConfiguration niNearbyPeerConfiguration => niNearbyPeerConfiguration -> Bool -> IO ()
setCameraAssistanceEnabled niNearbyPeerConfiguration value =
  sendMessage niNearbyPeerConfiguration setCameraAssistanceEnabledSelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithPeerToken:@
initWithPeerTokenSelector :: Selector '[Id NIDiscoveryToken] (Id NINearbyPeerConfiguration)
initWithPeerTokenSelector = mkSelector "initWithPeerToken:"

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id NINearbyPeerConfiguration)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id NINearbyPeerConfiguration)
newSelector = mkSelector "new"

-- | @Selector@ for @peerDiscoveryToken@
peerDiscoveryTokenSelector :: Selector '[] (Id NIDiscoveryToken)
peerDiscoveryTokenSelector = mkSelector "peerDiscoveryToken"

-- | @Selector@ for @cameraAssistanceEnabled@
cameraAssistanceEnabledSelector :: Selector '[] Bool
cameraAssistanceEnabledSelector = mkSelector "cameraAssistanceEnabled"

-- | @Selector@ for @setCameraAssistanceEnabled:@
setCameraAssistanceEnabledSelector :: Selector '[Bool] ()
setCameraAssistanceEnabledSelector = mkSelector "setCameraAssistanceEnabled:"

