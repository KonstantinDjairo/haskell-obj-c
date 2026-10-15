{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRActionsClusterInstantActionParams@.
module ObjC.Matter.MTRActionsClusterInstantActionParams
  ( MTRActionsClusterInstantActionParams
  , IsMTRActionsClusterInstantActionParams(..)
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
init_ :: IsMTRActionsClusterInstantActionParams mtrActionsClusterInstantActionParams => mtrActionsClusterInstantActionParams -> IO (Id MTRActionsClusterInstantActionParams)
init_ mtrActionsClusterInstantActionParams =
  sendOwnedMessage mtrActionsClusterInstantActionParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRActionsClusterInstantActionParams mtrActionsClusterInstantActionParams => mtrActionsClusterInstantActionParams -> Ptr () -> IO RawId
copyWithZone mtrActionsClusterInstantActionParams zone =
  sendOwnedMessage mtrActionsClusterInstantActionParams copyWithZoneSelector zone

-- | @- actionID@
actionID :: IsMTRActionsClusterInstantActionParams mtrActionsClusterInstantActionParams => mtrActionsClusterInstantActionParams -> IO (Id NSNumber)
actionID mtrActionsClusterInstantActionParams =
  sendMessage mtrActionsClusterInstantActionParams actionIDSelector

-- | @- setActionID:@
setActionID :: (IsMTRActionsClusterInstantActionParams mtrActionsClusterInstantActionParams, IsNSNumber value) => mtrActionsClusterInstantActionParams -> value -> IO ()
setActionID mtrActionsClusterInstantActionParams value =
  sendMessage mtrActionsClusterInstantActionParams setActionIDSelector (toNSNumber value)

-- | @- invokeID@
invokeID :: IsMTRActionsClusterInstantActionParams mtrActionsClusterInstantActionParams => mtrActionsClusterInstantActionParams -> IO (Id NSNumber)
invokeID mtrActionsClusterInstantActionParams =
  sendMessage mtrActionsClusterInstantActionParams invokeIDSelector

-- | @- setInvokeID:@
setInvokeID :: (IsMTRActionsClusterInstantActionParams mtrActionsClusterInstantActionParams, IsNSNumber value) => mtrActionsClusterInstantActionParams -> value -> IO ()
setInvokeID mtrActionsClusterInstantActionParams value =
  sendMessage mtrActionsClusterInstantActionParams setInvokeIDSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRActionsClusterInstantActionParams mtrActionsClusterInstantActionParams => mtrActionsClusterInstantActionParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrActionsClusterInstantActionParams =
  sendMessage mtrActionsClusterInstantActionParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRActionsClusterInstantActionParams mtrActionsClusterInstantActionParams, IsNSNumber value) => mtrActionsClusterInstantActionParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrActionsClusterInstantActionParams value =
  sendMessage mtrActionsClusterInstantActionParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRActionsClusterInstantActionParams)
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

