{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRThreadNetworkDiagnosticsClusterConnectionStatusEvent@.
module ObjC.Matter.MTRThreadNetworkDiagnosticsClusterConnectionStatusEvent
  ( MTRThreadNetworkDiagnosticsClusterConnectionStatusEvent
  , IsMTRThreadNetworkDiagnosticsClusterConnectionStatusEvent(..)
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
init_ :: IsMTRThreadNetworkDiagnosticsClusterConnectionStatusEvent mtrThreadNetworkDiagnosticsClusterConnectionStatusEvent => mtrThreadNetworkDiagnosticsClusterConnectionStatusEvent -> IO (Id MTRThreadNetworkDiagnosticsClusterConnectionStatusEvent)
init_ mtrThreadNetworkDiagnosticsClusterConnectionStatusEvent =
  sendOwnedMessage mtrThreadNetworkDiagnosticsClusterConnectionStatusEvent initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRThreadNetworkDiagnosticsClusterConnectionStatusEvent mtrThreadNetworkDiagnosticsClusterConnectionStatusEvent => mtrThreadNetworkDiagnosticsClusterConnectionStatusEvent -> Ptr () -> IO RawId
copyWithZone mtrThreadNetworkDiagnosticsClusterConnectionStatusEvent zone =
  sendOwnedMessage mtrThreadNetworkDiagnosticsClusterConnectionStatusEvent copyWithZoneSelector zone

-- | @- connectionStatus@
connectionStatus :: IsMTRThreadNetworkDiagnosticsClusterConnectionStatusEvent mtrThreadNetworkDiagnosticsClusterConnectionStatusEvent => mtrThreadNetworkDiagnosticsClusterConnectionStatusEvent -> IO (Id NSNumber)
connectionStatus mtrThreadNetworkDiagnosticsClusterConnectionStatusEvent =
  sendMessage mtrThreadNetworkDiagnosticsClusterConnectionStatusEvent connectionStatusSelector

-- | @- setConnectionStatus:@
setConnectionStatus :: (IsMTRThreadNetworkDiagnosticsClusterConnectionStatusEvent mtrThreadNetworkDiagnosticsClusterConnectionStatusEvent, IsNSNumber value) => mtrThreadNetworkDiagnosticsClusterConnectionStatusEvent -> value -> IO ()
setConnectionStatus mtrThreadNetworkDiagnosticsClusterConnectionStatusEvent value =
  sendMessage mtrThreadNetworkDiagnosticsClusterConnectionStatusEvent setConnectionStatusSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRThreadNetworkDiagnosticsClusterConnectionStatusEvent)
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

