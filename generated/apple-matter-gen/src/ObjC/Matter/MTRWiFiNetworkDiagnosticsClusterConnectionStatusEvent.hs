{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRWiFiNetworkDiagnosticsClusterConnectionStatusEvent@.
module ObjC.Matter.MTRWiFiNetworkDiagnosticsClusterConnectionStatusEvent
  ( MTRWiFiNetworkDiagnosticsClusterConnectionStatusEvent
  , IsMTRWiFiNetworkDiagnosticsClusterConnectionStatusEvent(..)
  , init_
  , copyWithZone
  , connectionStatus
  , setConnectionStatus
  , connectionStatusSelector
  , copyWithZoneSelector
  , initSelector
  , setConnectionStatusSelector


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
init_ :: IsMTRWiFiNetworkDiagnosticsClusterConnectionStatusEvent mtrWiFiNetworkDiagnosticsClusterConnectionStatusEvent => mtrWiFiNetworkDiagnosticsClusterConnectionStatusEvent -> IO (Id MTRWiFiNetworkDiagnosticsClusterConnectionStatusEvent)
init_ mtrWiFiNetworkDiagnosticsClusterConnectionStatusEvent =
  sendOwnedMessage mtrWiFiNetworkDiagnosticsClusterConnectionStatusEvent initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRWiFiNetworkDiagnosticsClusterConnectionStatusEvent mtrWiFiNetworkDiagnosticsClusterConnectionStatusEvent => mtrWiFiNetworkDiagnosticsClusterConnectionStatusEvent -> Ptr () -> IO RawId
copyWithZone mtrWiFiNetworkDiagnosticsClusterConnectionStatusEvent zone =
  sendOwnedMessage mtrWiFiNetworkDiagnosticsClusterConnectionStatusEvent copyWithZoneSelector zone

-- | @- connectionStatus@
connectionStatus :: IsMTRWiFiNetworkDiagnosticsClusterConnectionStatusEvent mtrWiFiNetworkDiagnosticsClusterConnectionStatusEvent => mtrWiFiNetworkDiagnosticsClusterConnectionStatusEvent -> IO (Id NSNumber)
connectionStatus mtrWiFiNetworkDiagnosticsClusterConnectionStatusEvent =
  sendMessage mtrWiFiNetworkDiagnosticsClusterConnectionStatusEvent connectionStatusSelector

-- | @- setConnectionStatus:@
setConnectionStatus :: (IsMTRWiFiNetworkDiagnosticsClusterConnectionStatusEvent mtrWiFiNetworkDiagnosticsClusterConnectionStatusEvent, IsNSNumber value) => mtrWiFiNetworkDiagnosticsClusterConnectionStatusEvent -> value -> IO ()
setConnectionStatus mtrWiFiNetworkDiagnosticsClusterConnectionStatusEvent value =
  sendMessage mtrWiFiNetworkDiagnosticsClusterConnectionStatusEvent setConnectionStatusSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRWiFiNetworkDiagnosticsClusterConnectionStatusEvent)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @connectionStatus@
connectionStatusSelector :: Selector '[] (Id NSNumber)
connectionStatusSelector = mkSelector "connectionStatus"

-- | @Selector@ for @setConnectionStatus:@
setConnectionStatusSelector :: Selector '[Id NSNumber] ()
setConnectionStatusSelector = mkSelector "setConnectionStatus:"

