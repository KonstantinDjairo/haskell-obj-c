{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRTargetNavigatorClusterNavigateTargetResponseParams@.
module ObjC.Matter.MTRTargetNavigatorClusterNavigateTargetResponseParams
  ( MTRTargetNavigatorClusterNavigateTargetResponseParams
  , IsMTRTargetNavigatorClusterNavigateTargetResponseParams(..)
  , init_
  , copyWithZone
  , status
  , setStatus
  , data_
  , setData
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , dataSelector
  , initSelector
  , setDataSelector
  , setStatusSelector
  , setTimedInvokeTimeoutMsSelector
  , statusSelector
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
init_ :: IsMTRTargetNavigatorClusterNavigateTargetResponseParams mtrTargetNavigatorClusterNavigateTargetResponseParams => mtrTargetNavigatorClusterNavigateTargetResponseParams -> IO (Id MTRTargetNavigatorClusterNavigateTargetResponseParams)
init_ mtrTargetNavigatorClusterNavigateTargetResponseParams =
  sendOwnedMessage mtrTargetNavigatorClusterNavigateTargetResponseParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRTargetNavigatorClusterNavigateTargetResponseParams mtrTargetNavigatorClusterNavigateTargetResponseParams => mtrTargetNavigatorClusterNavigateTargetResponseParams -> Ptr () -> IO RawId
copyWithZone mtrTargetNavigatorClusterNavigateTargetResponseParams zone =
  sendOwnedMessage mtrTargetNavigatorClusterNavigateTargetResponseParams copyWithZoneSelector zone

-- | @- status@
status :: IsMTRTargetNavigatorClusterNavigateTargetResponseParams mtrTargetNavigatorClusterNavigateTargetResponseParams => mtrTargetNavigatorClusterNavigateTargetResponseParams -> IO (Id NSNumber)
status mtrTargetNavigatorClusterNavigateTargetResponseParams =
  sendMessage mtrTargetNavigatorClusterNavigateTargetResponseParams statusSelector

-- | @- setStatus:@
setStatus :: (IsMTRTargetNavigatorClusterNavigateTargetResponseParams mtrTargetNavigatorClusterNavigateTargetResponseParams, IsNSNumber value) => mtrTargetNavigatorClusterNavigateTargetResponseParams -> value -> IO ()
setStatus mtrTargetNavigatorClusterNavigateTargetResponseParams value =
  sendMessage mtrTargetNavigatorClusterNavigateTargetResponseParams setStatusSelector (toNSNumber value)

-- | @- data@
data_ :: IsMTRTargetNavigatorClusterNavigateTargetResponseParams mtrTargetNavigatorClusterNavigateTargetResponseParams => mtrTargetNavigatorClusterNavigateTargetResponseParams -> IO (Id NSString)
data_ mtrTargetNavigatorClusterNavigateTargetResponseParams =
  sendMessage mtrTargetNavigatorClusterNavigateTargetResponseParams dataSelector

-- | @- setData:@
setData :: (IsMTRTargetNavigatorClusterNavigateTargetResponseParams mtrTargetNavigatorClusterNavigateTargetResponseParams, IsNSString value) => mtrTargetNavigatorClusterNavigateTargetResponseParams -> value -> IO ()
setData mtrTargetNavigatorClusterNavigateTargetResponseParams value =
  sendMessage mtrTargetNavigatorClusterNavigateTargetResponseParams setDataSelector (toNSString value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRTargetNavigatorClusterNavigateTargetResponseParams mtrTargetNavigatorClusterNavigateTargetResponseParams => mtrTargetNavigatorClusterNavigateTargetResponseParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrTargetNavigatorClusterNavigateTargetResponseParams =
  sendMessage mtrTargetNavigatorClusterNavigateTargetResponseParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRTargetNavigatorClusterNavigateTargetResponseParams mtrTargetNavigatorClusterNavigateTargetResponseParams, IsNSNumber value) => mtrTargetNavigatorClusterNavigateTargetResponseParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrTargetNavigatorClusterNavigateTargetResponseParams value =
  sendMessage mtrTargetNavigatorClusterNavigateTargetResponseParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRTargetNavigatorClusterNavigateTargetResponseParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @status@
statusSelector :: Selector '[] (Id NSNumber)
statusSelector = mkSelector "status"

-- | @Selector@ for @setStatus:@
setStatusSelector :: Selector '[Id NSNumber] ()
setStatusSelector = mkSelector "setStatus:"

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

