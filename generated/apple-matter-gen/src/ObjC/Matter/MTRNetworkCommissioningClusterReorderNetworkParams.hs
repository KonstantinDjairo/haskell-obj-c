{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRNetworkCommissioningClusterReorderNetworkParams@.
module ObjC.Matter.MTRNetworkCommissioningClusterReorderNetworkParams
  ( MTRNetworkCommissioningClusterReorderNetworkParams
  , IsMTRNetworkCommissioningClusterReorderNetworkParams(..)
  , init_
  , copyWithZone
  , networkID
  , setNetworkID
  , networkIndex
  , setNetworkIndex
  , breadcrumb
  , setBreadcrumb
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , breadcrumbSelector
  , copyWithZoneSelector
  , initSelector
  , networkIDSelector
  , networkIndexSelector
  , setBreadcrumbSelector
  , setNetworkIDSelector
  , setNetworkIndexSelector
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
init_ :: IsMTRNetworkCommissioningClusterReorderNetworkParams mtrNetworkCommissioningClusterReorderNetworkParams => mtrNetworkCommissioningClusterReorderNetworkParams -> IO (Id MTRNetworkCommissioningClusterReorderNetworkParams)
init_ mtrNetworkCommissioningClusterReorderNetworkParams =
  sendOwnedMessage mtrNetworkCommissioningClusterReorderNetworkParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRNetworkCommissioningClusterReorderNetworkParams mtrNetworkCommissioningClusterReorderNetworkParams => mtrNetworkCommissioningClusterReorderNetworkParams -> Ptr () -> IO RawId
copyWithZone mtrNetworkCommissioningClusterReorderNetworkParams zone =
  sendOwnedMessage mtrNetworkCommissioningClusterReorderNetworkParams copyWithZoneSelector zone

-- | @- networkID@
networkID :: IsMTRNetworkCommissioningClusterReorderNetworkParams mtrNetworkCommissioningClusterReorderNetworkParams => mtrNetworkCommissioningClusterReorderNetworkParams -> IO (Id NSData)
networkID mtrNetworkCommissioningClusterReorderNetworkParams =
  sendMessage mtrNetworkCommissioningClusterReorderNetworkParams networkIDSelector

-- | @- setNetworkID:@
setNetworkID :: (IsMTRNetworkCommissioningClusterReorderNetworkParams mtrNetworkCommissioningClusterReorderNetworkParams, IsNSData value) => mtrNetworkCommissioningClusterReorderNetworkParams -> value -> IO ()
setNetworkID mtrNetworkCommissioningClusterReorderNetworkParams value =
  sendMessage mtrNetworkCommissioningClusterReorderNetworkParams setNetworkIDSelector (toNSData value)

-- | @- networkIndex@
networkIndex :: IsMTRNetworkCommissioningClusterReorderNetworkParams mtrNetworkCommissioningClusterReorderNetworkParams => mtrNetworkCommissioningClusterReorderNetworkParams -> IO (Id NSNumber)
networkIndex mtrNetworkCommissioningClusterReorderNetworkParams =
  sendMessage mtrNetworkCommissioningClusterReorderNetworkParams networkIndexSelector

-- | @- setNetworkIndex:@
setNetworkIndex :: (IsMTRNetworkCommissioningClusterReorderNetworkParams mtrNetworkCommissioningClusterReorderNetworkParams, IsNSNumber value) => mtrNetworkCommissioningClusterReorderNetworkParams -> value -> IO ()
setNetworkIndex mtrNetworkCommissioningClusterReorderNetworkParams value =
  sendMessage mtrNetworkCommissioningClusterReorderNetworkParams setNetworkIndexSelector (toNSNumber value)

-- | @- breadcrumb@
breadcrumb :: IsMTRNetworkCommissioningClusterReorderNetworkParams mtrNetworkCommissioningClusterReorderNetworkParams => mtrNetworkCommissioningClusterReorderNetworkParams -> IO (Id NSNumber)
breadcrumb mtrNetworkCommissioningClusterReorderNetworkParams =
  sendMessage mtrNetworkCommissioningClusterReorderNetworkParams breadcrumbSelector

-- | @- setBreadcrumb:@
setBreadcrumb :: (IsMTRNetworkCommissioningClusterReorderNetworkParams mtrNetworkCommissioningClusterReorderNetworkParams, IsNSNumber value) => mtrNetworkCommissioningClusterReorderNetworkParams -> value -> IO ()
setBreadcrumb mtrNetworkCommissioningClusterReorderNetworkParams value =
  sendMessage mtrNetworkCommissioningClusterReorderNetworkParams setBreadcrumbSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRNetworkCommissioningClusterReorderNetworkParams mtrNetworkCommissioningClusterReorderNetworkParams => mtrNetworkCommissioningClusterReorderNetworkParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrNetworkCommissioningClusterReorderNetworkParams =
  sendMessage mtrNetworkCommissioningClusterReorderNetworkParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRNetworkCommissioningClusterReorderNetworkParams mtrNetworkCommissioningClusterReorderNetworkParams, IsNSNumber value) => mtrNetworkCommissioningClusterReorderNetworkParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrNetworkCommissioningClusterReorderNetworkParams value =
  sendMessage mtrNetworkCommissioningClusterReorderNetworkParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRNetworkCommissioningClusterReorderNetworkParams)
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

-- | @Selector@ for @networkIndex@
networkIndexSelector :: Selector '[] (Id NSNumber)
networkIndexSelector = mkSelector "networkIndex"

-- | @Selector@ for @setNetworkIndex:@
setNetworkIndexSelector :: Selector '[Id NSNumber] ()
setNetworkIndexSelector = mkSelector "setNetworkIndex:"

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

