{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRNetworkCommissioningClusterScanNetworksParams@.
module ObjC.Matter.MTRNetworkCommissioningClusterScanNetworksParams
  ( MTRNetworkCommissioningClusterScanNetworksParams
  , IsMTRNetworkCommissioningClusterScanNetworksParams(..)
  , init_
  , copyWithZone
  , ssid
  , setSsid
  , breadcrumb
  , setBreadcrumb
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , breadcrumbSelector
  , copyWithZoneSelector
  , initSelector
  , setBreadcrumbSelector
  , setSsidSelector
  , setTimedInvokeTimeoutMsSelector
  , ssidSelector
  , timedInvokeTimeoutMsSelector


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
init_ :: IsMTRNetworkCommissioningClusterScanNetworksParams mtrNetworkCommissioningClusterScanNetworksParams => mtrNetworkCommissioningClusterScanNetworksParams -> IO (Id MTRNetworkCommissioningClusterScanNetworksParams)
init_ mtrNetworkCommissioningClusterScanNetworksParams =
  sendOwnedMessage mtrNetworkCommissioningClusterScanNetworksParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRNetworkCommissioningClusterScanNetworksParams mtrNetworkCommissioningClusterScanNetworksParams => mtrNetworkCommissioningClusterScanNetworksParams -> Ptr () -> IO RawId
copyWithZone mtrNetworkCommissioningClusterScanNetworksParams zone =
  sendOwnedMessage mtrNetworkCommissioningClusterScanNetworksParams copyWithZoneSelector zone

-- | @- ssid@
ssid :: IsMTRNetworkCommissioningClusterScanNetworksParams mtrNetworkCommissioningClusterScanNetworksParams => mtrNetworkCommissioningClusterScanNetworksParams -> IO (Id NSData)
ssid mtrNetworkCommissioningClusterScanNetworksParams =
  sendMessage mtrNetworkCommissioningClusterScanNetworksParams ssidSelector

-- | @- setSsid:@
setSsid :: (IsMTRNetworkCommissioningClusterScanNetworksParams mtrNetworkCommissioningClusterScanNetworksParams, IsNSData value) => mtrNetworkCommissioningClusterScanNetworksParams -> value -> IO ()
setSsid mtrNetworkCommissioningClusterScanNetworksParams value =
  sendMessage mtrNetworkCommissioningClusterScanNetworksParams setSsidSelector (toNSData value)

-- | @- breadcrumb@
breadcrumb :: IsMTRNetworkCommissioningClusterScanNetworksParams mtrNetworkCommissioningClusterScanNetworksParams => mtrNetworkCommissioningClusterScanNetworksParams -> IO (Id NSNumber)
breadcrumb mtrNetworkCommissioningClusterScanNetworksParams =
  sendMessage mtrNetworkCommissioningClusterScanNetworksParams breadcrumbSelector

-- | @- setBreadcrumb:@
setBreadcrumb :: (IsMTRNetworkCommissioningClusterScanNetworksParams mtrNetworkCommissioningClusterScanNetworksParams, IsNSNumber value) => mtrNetworkCommissioningClusterScanNetworksParams -> value -> IO ()
setBreadcrumb mtrNetworkCommissioningClusterScanNetworksParams value =
  sendMessage mtrNetworkCommissioningClusterScanNetworksParams setBreadcrumbSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRNetworkCommissioningClusterScanNetworksParams mtrNetworkCommissioningClusterScanNetworksParams => mtrNetworkCommissioningClusterScanNetworksParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrNetworkCommissioningClusterScanNetworksParams =
  sendMessage mtrNetworkCommissioningClusterScanNetworksParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRNetworkCommissioningClusterScanNetworksParams mtrNetworkCommissioningClusterScanNetworksParams, IsNSNumber value) => mtrNetworkCommissioningClusterScanNetworksParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrNetworkCommissioningClusterScanNetworksParams value =
  sendMessage mtrNetworkCommissioningClusterScanNetworksParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRNetworkCommissioningClusterScanNetworksParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @ssid@
ssidSelector :: Selector '[] (Id NSData)
ssidSelector = mkSelector "ssid"

-- | @Selector@ for @setSsid:@
setSsidSelector :: Selector '[Id NSData] ()
setSsidSelector = mkSelector "setSsid:"

-- | @Selector@ for @breadcrumb@
breadcrumbSelector :: Selector '[] (Id NSNumber)
breadcrumbSelector = mkSelector "breadcrumb"

-- | @Selector@ for @setBreadcrumb:@
setBreadcrumbSelector :: Selector '[Id NSNumber] ()
setBreadcrumbSelector = mkSelector "setBreadcrumb:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

