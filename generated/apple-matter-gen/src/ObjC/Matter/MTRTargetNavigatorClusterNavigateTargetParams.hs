{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRTargetNavigatorClusterNavigateTargetParams@.
module ObjC.Matter.MTRTargetNavigatorClusterNavigateTargetParams
  ( MTRTargetNavigatorClusterNavigateTargetParams
  , IsMTRTargetNavigatorClusterNavigateTargetParams(..)
  , init_
  , copyWithZone
  , target
  , setTarget
  , data_
  , setData
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , dataSelector
  , initSelector
  , setDataSelector
  , setTargetSelector
  , setTimedInvokeTimeoutMsSelector
  , targetSelector
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
init_ :: IsMTRTargetNavigatorClusterNavigateTargetParams mtrTargetNavigatorClusterNavigateTargetParams => mtrTargetNavigatorClusterNavigateTargetParams -> IO (Id MTRTargetNavigatorClusterNavigateTargetParams)
init_ mtrTargetNavigatorClusterNavigateTargetParams =
  sendOwnedMessage mtrTargetNavigatorClusterNavigateTargetParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRTargetNavigatorClusterNavigateTargetParams mtrTargetNavigatorClusterNavigateTargetParams => mtrTargetNavigatorClusterNavigateTargetParams -> Ptr () -> IO RawId
copyWithZone mtrTargetNavigatorClusterNavigateTargetParams zone =
  sendOwnedMessage mtrTargetNavigatorClusterNavigateTargetParams copyWithZoneSelector zone

-- | @- target@
target :: IsMTRTargetNavigatorClusterNavigateTargetParams mtrTargetNavigatorClusterNavigateTargetParams => mtrTargetNavigatorClusterNavigateTargetParams -> IO (Id NSNumber)
target mtrTargetNavigatorClusterNavigateTargetParams =
  sendMessage mtrTargetNavigatorClusterNavigateTargetParams targetSelector

-- | @- setTarget:@
setTarget :: (IsMTRTargetNavigatorClusterNavigateTargetParams mtrTargetNavigatorClusterNavigateTargetParams, IsNSNumber value) => mtrTargetNavigatorClusterNavigateTargetParams -> value -> IO ()
setTarget mtrTargetNavigatorClusterNavigateTargetParams value =
  sendMessage mtrTargetNavigatorClusterNavigateTargetParams setTargetSelector (toNSNumber value)

-- | @- data@
data_ :: IsMTRTargetNavigatorClusterNavigateTargetParams mtrTargetNavigatorClusterNavigateTargetParams => mtrTargetNavigatorClusterNavigateTargetParams -> IO (Id NSString)
data_ mtrTargetNavigatorClusterNavigateTargetParams =
  sendMessage mtrTargetNavigatorClusterNavigateTargetParams dataSelector

-- | @- setData:@
setData :: (IsMTRTargetNavigatorClusterNavigateTargetParams mtrTargetNavigatorClusterNavigateTargetParams, IsNSString value) => mtrTargetNavigatorClusterNavigateTargetParams -> value -> IO ()
setData mtrTargetNavigatorClusterNavigateTargetParams value =
  sendMessage mtrTargetNavigatorClusterNavigateTargetParams setDataSelector (toNSString value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRTargetNavigatorClusterNavigateTargetParams mtrTargetNavigatorClusterNavigateTargetParams => mtrTargetNavigatorClusterNavigateTargetParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrTargetNavigatorClusterNavigateTargetParams =
  sendMessage mtrTargetNavigatorClusterNavigateTargetParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRTargetNavigatorClusterNavigateTargetParams mtrTargetNavigatorClusterNavigateTargetParams, IsNSNumber value) => mtrTargetNavigatorClusterNavigateTargetParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrTargetNavigatorClusterNavigateTargetParams value =
  sendMessage mtrTargetNavigatorClusterNavigateTargetParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRTargetNavigatorClusterNavigateTargetParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @target@
targetSelector :: Selector '[] (Id NSNumber)
targetSelector = mkSelector "target"

-- | @Selector@ for @setTarget:@
setTargetSelector :: Selector '[Id NSNumber] ()
setTargetSelector = mkSelector "setTarget:"

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

