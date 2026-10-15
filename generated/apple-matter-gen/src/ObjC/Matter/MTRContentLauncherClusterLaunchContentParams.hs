{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRContentLauncherClusterLaunchContentParams@.
module ObjC.Matter.MTRContentLauncherClusterLaunchContentParams
  ( MTRContentLauncherClusterLaunchContentParams
  , IsMTRContentLauncherClusterLaunchContentParams(..)
  , init_
  , copyWithZone
  , search
  , setSearch
  , autoPlay
  , setAutoPlay
  , data_
  , setData
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , autoPlaySelector
  , copyWithZoneSelector
  , dataSelector
  , initSelector
  , searchSelector
  , setAutoPlaySelector
  , setDataSelector
  , setSearchSelector
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
init_ :: IsMTRContentLauncherClusterLaunchContentParams mtrContentLauncherClusterLaunchContentParams => mtrContentLauncherClusterLaunchContentParams -> IO (Id MTRContentLauncherClusterLaunchContentParams)
init_ mtrContentLauncherClusterLaunchContentParams =
  sendOwnedMessage mtrContentLauncherClusterLaunchContentParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRContentLauncherClusterLaunchContentParams mtrContentLauncherClusterLaunchContentParams => mtrContentLauncherClusterLaunchContentParams -> Ptr () -> IO RawId
copyWithZone mtrContentLauncherClusterLaunchContentParams zone =
  sendOwnedMessage mtrContentLauncherClusterLaunchContentParams copyWithZoneSelector zone

-- | @- search@
search :: IsMTRContentLauncherClusterLaunchContentParams mtrContentLauncherClusterLaunchContentParams => mtrContentLauncherClusterLaunchContentParams -> IO (Id MTRContentLauncherClusterContentSearch)
search mtrContentLauncherClusterLaunchContentParams =
  sendMessage mtrContentLauncherClusterLaunchContentParams searchSelector

-- | @- setSearch:@
setSearch :: (IsMTRContentLauncherClusterLaunchContentParams mtrContentLauncherClusterLaunchContentParams, IsMTRContentLauncherClusterContentSearch value) => mtrContentLauncherClusterLaunchContentParams -> value -> IO ()
setSearch mtrContentLauncherClusterLaunchContentParams value =
  sendMessage mtrContentLauncherClusterLaunchContentParams setSearchSelector (toMTRContentLauncherClusterContentSearch value)

-- | @- autoPlay@
autoPlay :: IsMTRContentLauncherClusterLaunchContentParams mtrContentLauncherClusterLaunchContentParams => mtrContentLauncherClusterLaunchContentParams -> IO (Id NSNumber)
autoPlay mtrContentLauncherClusterLaunchContentParams =
  sendMessage mtrContentLauncherClusterLaunchContentParams autoPlaySelector

-- | @- setAutoPlay:@
setAutoPlay :: (IsMTRContentLauncherClusterLaunchContentParams mtrContentLauncherClusterLaunchContentParams, IsNSNumber value) => mtrContentLauncherClusterLaunchContentParams -> value -> IO ()
setAutoPlay mtrContentLauncherClusterLaunchContentParams value =
  sendMessage mtrContentLauncherClusterLaunchContentParams setAutoPlaySelector (toNSNumber value)

-- | @- data@
data_ :: IsMTRContentLauncherClusterLaunchContentParams mtrContentLauncherClusterLaunchContentParams => mtrContentLauncherClusterLaunchContentParams -> IO (Id NSString)
data_ mtrContentLauncherClusterLaunchContentParams =
  sendMessage mtrContentLauncherClusterLaunchContentParams dataSelector

-- | @- setData:@
setData :: (IsMTRContentLauncherClusterLaunchContentParams mtrContentLauncherClusterLaunchContentParams, IsNSString value) => mtrContentLauncherClusterLaunchContentParams -> value -> IO ()
setData mtrContentLauncherClusterLaunchContentParams value =
  sendMessage mtrContentLauncherClusterLaunchContentParams setDataSelector (toNSString value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRContentLauncherClusterLaunchContentParams mtrContentLauncherClusterLaunchContentParams => mtrContentLauncherClusterLaunchContentParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrContentLauncherClusterLaunchContentParams =
  sendMessage mtrContentLauncherClusterLaunchContentParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRContentLauncherClusterLaunchContentParams mtrContentLauncherClusterLaunchContentParams, IsNSNumber value) => mtrContentLauncherClusterLaunchContentParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrContentLauncherClusterLaunchContentParams value =
  sendMessage mtrContentLauncherClusterLaunchContentParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRContentLauncherClusterLaunchContentParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @search@
searchSelector :: Selector '[] (Id MTRContentLauncherClusterContentSearch)
searchSelector = mkSelector "search"

-- | @Selector@ for @setSearch:@
setSearchSelector :: Selector '[Id MTRContentLauncherClusterContentSearch] ()
setSearchSelector = mkSelector "setSearch:"

-- | @Selector@ for @autoPlay@
autoPlaySelector :: Selector '[] (Id NSNumber)
autoPlaySelector = mkSelector "autoPlay"

-- | @Selector@ for @setAutoPlay:@
setAutoPlaySelector :: Selector '[Id NSNumber] ()
setAutoPlaySelector = mkSelector "setAutoPlay:"

-- | @Selector@ for @data@
dataSelector :: Selector '[] (Id NSString)
dataSelector = mkSelector "data"

-- | @Selector@ for @setData:@
setDataSelector :: Selector '[Id NSString] ()
setDataSelector = mkSelector "setData:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

