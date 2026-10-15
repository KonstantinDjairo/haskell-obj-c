{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRActionsClusterStopActionParams@.
module ObjC.Matter.MTRActionsClusterStopActionParams
  ( MTRActionsClusterStopActionParams
  , IsMTRActionsClusterStopActionParams(..)
  , init_
  , copyWithZone
  , actionID
  , setActionID
  , invokeID
  , setInvokeID
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , actionIDSelector
  , copyWithZoneSelector
  , initSelector
  , invokeIDSelector
  , setActionIDSelector
  , setInvokeIDSelector
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
init_ :: IsMTRActionsClusterStopActionParams mtrActionsClusterStopActionParams => mtrActionsClusterStopActionParams -> IO (Id MTRActionsClusterStopActionParams)
init_ mtrActionsClusterStopActionParams =
  sendOwnedMessage mtrActionsClusterStopActionParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRActionsClusterStopActionParams mtrActionsClusterStopActionParams => mtrActionsClusterStopActionParams -> Ptr () -> IO RawId
copyWithZone mtrActionsClusterStopActionParams zone =
  sendOwnedMessage mtrActionsClusterStopActionParams copyWithZoneSelector zone

-- | @- actionID@
actionID :: IsMTRActionsClusterStopActionParams mtrActionsClusterStopActionParams => mtrActionsClusterStopActionParams -> IO (Id NSNumber)
actionID mtrActionsClusterStopActionParams =
  sendMessage mtrActionsClusterStopActionParams actionIDSelector

-- | @- setActionID:@
setActionID :: (IsMTRActionsClusterStopActionParams mtrActionsClusterStopActionParams, IsNSNumber value) => mtrActionsClusterStopActionParams -> value -> IO ()
setActionID mtrActionsClusterStopActionParams value =
  sendMessage mtrActionsClusterStopActionParams setActionIDSelector (toNSNumber value)

-- | @- invokeID@
invokeID :: IsMTRActionsClusterStopActionParams mtrActionsClusterStopActionParams => mtrActionsClusterStopActionParams -> IO (Id NSNumber)
invokeID mtrActionsClusterStopActionParams =
  sendMessage mtrActionsClusterStopActionParams invokeIDSelector

-- | @- setInvokeID:@
setInvokeID :: (IsMTRActionsClusterStopActionParams mtrActionsClusterStopActionParams, IsNSNumber value) => mtrActionsClusterStopActionParams -> value -> IO ()
setInvokeID mtrActionsClusterStopActionParams value =
  sendMessage mtrActionsClusterStopActionParams setInvokeIDSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRActionsClusterStopActionParams mtrActionsClusterStopActionParams => mtrActionsClusterStopActionParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrActionsClusterStopActionParams =
  sendMessage mtrActionsClusterStopActionParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRActionsClusterStopActionParams mtrActionsClusterStopActionParams, IsNSNumber value) => mtrActionsClusterStopActionParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrActionsClusterStopActionParams value =
  sendMessage mtrActionsClusterStopActionParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRActionsClusterStopActionParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @actionID@
actionIDSelector :: Selector '[] (Id NSNumber)
actionIDSelector = mkSelector "actionID"

-- | @Selector@ for @setActionID:@
setActionIDSelector :: Selector '[Id NSNumber] ()
setActionIDSelector = mkSelector "setActionID:"

-- | @Selector@ for @invokeID@
invokeIDSelector :: Selector '[] (Id NSNumber)
invokeIDSelector = mkSelector "invokeID"

-- | @Selector@ for @setInvokeID:@
setInvokeIDSelector :: Selector '[Id NSNumber] ()
setInvokeIDSelector = mkSelector "setInvokeID:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

