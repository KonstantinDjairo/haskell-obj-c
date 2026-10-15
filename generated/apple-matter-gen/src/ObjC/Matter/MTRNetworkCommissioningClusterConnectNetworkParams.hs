{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRNetworkCommissioningClusterConnectNetworkParams@.
module ObjC.Matter.MTRNetworkCommissioningClusterConnectNetworkParams
  ( MTRNetworkCommissioningClusterConnectNetworkParams
  , IsMTRNetworkCommissioningClusterConnectNetworkParams(..)
  , init_
  , copyWithZone
  , networkID
  , setNetworkID
  , breadcrumb
  , setBreadcrumb
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , breadcrumbSelector
  , copyWithZoneSelector
  , initSelector
  , networkIDSelector
  , setBreadcrumbSelector
  , setNetworkIDSelector
  , setTimedInvokeTimeoutMsSelector
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
init_ :: IsMTRNetworkCommissioningClusterConnectNetworkParams mtrNetworkCommissioningClusterConnectNetworkParams => mtrNetworkCommissioningClusterConnectNetworkParams -> IO (Id MTRNetworkCommissioningClusterConnectNetworkParams)
init_ mtrNetworkCommissioningClusterConnectNetworkParams =
  sendOwnedMessage mtrNetworkCommissioningClusterConnectNetworkParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRNetworkCommissioningClusterConnectNetworkParams mtrNetworkCommissioningClusterConnectNetworkParams => mtrNetworkCommissioningClusterConnectNetworkParams -> Ptr () -> IO RawId
copyWithZone mtrNetworkCommissioningClusterConnectNetworkParams zone =
  sendOwnedMessage mtrNetworkCommissioningClusterConnectNetworkParams copyWithZoneSelector zone

-- | @- networkID@
networkID :: IsMTRNetworkCommissioningClusterConnectNetworkParams mtrNetworkCommissioningClusterConnectNetworkParams => mtrNetworkCommissioningClusterConnectNetworkParams -> IO (Id NSData)
networkID mtrNetworkCommissioningClusterConnectNetworkParams =
  sendMessage mtrNetworkCommissioningClusterConnectNetworkParams networkIDSelector

-- | @- setNetworkID:@
setNetworkID :: (IsMTRNetworkCommissioningClusterConnectNetworkParams mtrNetworkCommissioningClusterConnectNetworkParams, IsNSData value) => mtrNetworkCommissioningClusterConnectNetworkParams -> value -> IO ()
setNetworkID mtrNetworkCommissioningClusterConnectNetworkParams value =
  sendMessage mtrNetworkCommissioningClusterConnectNetworkParams setNetworkIDSelector (toNSData value)

-- | @- breadcrumb@
breadcrumb :: IsMTRNetworkCommissioningClusterConnectNetworkParams mtrNetworkCommissioningClusterConnectNetworkParams => mtrNetworkCommissioningClusterConnectNetworkParams -> IO (Id NSNumber)
breadcrumb mtrNetworkCommissioningClusterConnectNetworkParams =
  sendMessage mtrNetworkCommissioningClusterConnectNetworkParams breadcrumbSelector

-- | @- setBreadcrumb:@
setBreadcrumb :: (IsMTRNetworkCommissioningClusterConnectNetworkParams mtrNetworkCommissioningClusterConnectNetworkParams, IsNSNumber value) => mtrNetworkCommissioningClusterConnectNetworkParams -> value -> IO ()
setBreadcrumb mtrNetworkCommissioningClusterConnectNetworkParams value =
  sendMessage mtrNetworkCommissioningClusterConnectNetworkParams setBreadcrumbSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRNetworkCommissioningClusterConnectNetworkParams mtrNetworkCommissioningClusterConnectNetworkParams => mtrNetworkCommissioningClusterConnectNetworkParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrNetworkCommissioningClusterConnectNetworkParams =
  sendMessage mtrNetworkCommissioningClusterConnectNetworkParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRNetworkCommissioningClusterConnectNetworkParams mtrNetworkCommissioningClusterConnectNetworkParams, IsNSNumber value) => mtrNetworkCommissioningClusterConnectNetworkParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrNetworkCommissioningClusterConnectNetworkParams value =
  sendMessage mtrNetworkCommissioningClusterConnectNetworkParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRNetworkCommissioningClusterConnectNetworkParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @networkID@
networkIDSelector :: Selector '[] (Id NSData)
networkIDSelector = mkSelector "networkID"

-- | @Selector@ for @setNetworkID:@
setNetworkIDSelector :: Selector '[Id NSData] ()
setNetworkIDSelector = mkSelector "setNetworkID:"

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

