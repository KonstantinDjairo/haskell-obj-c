{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams@.
module ObjC.Matter.MTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams
  ( MTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams
  , IsMTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams(..)
  , init_
  , copyWithZone
  , ssid
  , setSsid
  , credentials
  , setCredentials
  , breadcrumb
  , setBreadcrumb
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , breadcrumbSelector
  , copyWithZoneSelector
  , credentialsSelector
  , initSelector
  , setBreadcrumbSelector
  , setCredentialsSelector
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
init_ :: IsMTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams mtrNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams => mtrNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams -> IO (Id MTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams)
init_ mtrNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams =
  sendOwnedMessage mtrNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams mtrNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams => mtrNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams -> Ptr () -> IO RawId
copyWithZone mtrNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams zone =
  sendOwnedMessage mtrNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams copyWithZoneSelector zone

-- | @- ssid@
ssid :: IsMTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams mtrNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams => mtrNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams -> IO (Id NSData)
ssid mtrNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams =
  sendMessage mtrNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams ssidSelector

-- | @- setSsid:@
setSsid :: (IsMTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams mtrNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams, IsNSData value) => mtrNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams -> value -> IO ()
setSsid mtrNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams value =
  sendMessage mtrNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams setSsidSelector (toNSData value)

-- | @- credentials@
credentials :: IsMTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams mtrNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams => mtrNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams -> IO (Id NSData)
credentials mtrNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams =
  sendMessage mtrNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams credentialsSelector

-- | @- setCredentials:@
setCredentials :: (IsMTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams mtrNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams, IsNSData value) => mtrNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams -> value -> IO ()
setCredentials mtrNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams value =
  sendMessage mtrNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams setCredentialsSelector (toNSData value)

-- | @- breadcrumb@
breadcrumb :: IsMTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams mtrNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams => mtrNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams -> IO (Id NSNumber)
breadcrumb mtrNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams =
  sendMessage mtrNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams breadcrumbSelector

-- | @- setBreadcrumb:@
setBreadcrumb :: (IsMTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams mtrNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams, IsNSNumber value) => mtrNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams -> value -> IO ()
setBreadcrumb mtrNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams value =
  sendMessage mtrNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams setBreadcrumbSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams mtrNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams => mtrNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams =
  sendMessage mtrNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams mtrNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams, IsNSNumber value) => mtrNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams value =
  sendMessage mtrNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRNetworkCommissioningClusterAddOrUpdateWiFiNetworkParams)
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

-- | @Selector@ for @credentials@
credentialsSelector :: Selector '[] (Id NSData)
credentialsSelector = mkSelector "credentials"

-- | @Selector@ for @setCredentials:@
setCredentialsSelector :: Selector '[Id NSData] ()
setCredentialsSelector = mkSelector "setCredentials:"

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

