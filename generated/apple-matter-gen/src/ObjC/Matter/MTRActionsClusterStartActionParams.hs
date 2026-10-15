{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRActionsClusterStartActionParams@.
module ObjC.Matter.MTRActionsClusterStartActionParams
  ( MTRActionsClusterStartActionParams
  , IsMTRActionsClusterStartActionParams(..)
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
init_ :: IsMTRActionsClusterStartActionParams mtrActionsClusterStartActionParams => mtrActionsClusterStartActionParams -> IO (Id MTRActionsClusterStartActionParams)
init_ mtrActionsClusterStartActionParams =
  sendOwnedMessage mtrActionsClusterStartActionParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRActionsClusterStartActionParams mtrActionsClusterStartActionParams => mtrActionsClusterStartActionParams -> Ptr () -> IO RawId
copyWithZone mtrActionsClusterStartActionParams zone =
  sendOwnedMessage mtrActionsClusterStartActionParams copyWithZoneSelector zone

-- | @- actionID@
actionID :: IsMTRActionsClusterStartActionParams mtrActionsClusterStartActionParams => mtrActionsClusterStartActionParams -> IO (Id NSNumber)
actionID mtrActionsClusterStartActionParams =
  sendMessage mtrActionsClusterStartActionParams actionIDSelector

-- | @- setActionID:@
setActionID :: (IsMTRActionsClusterStartActionParams mtrActionsClusterStartActionParams, IsNSNumber value) => mtrActionsClusterStartActionParams -> value -> IO ()
setActionID mtrActionsClusterStartActionParams value =
  sendMessage mtrActionsClusterStartActionParams setActionIDSelector (toNSNumber value)

-- | @- invokeID@
invokeID :: IsMTRActionsClusterStartActionParams mtrActionsClusterStartActionParams => mtrActionsClusterStartActionParams -> IO (Id NSNumber)
invokeID mtrActionsClusterStartActionParams =
  sendMessage mtrActionsClusterStartActionParams invokeIDSelector

-- | @- setInvokeID:@
setInvokeID :: (IsMTRActionsClusterStartActionParams mtrActionsClusterStartActionParams, IsNSNumber value) => mtrActionsClusterStartActionParams -> value -> IO ()
setInvokeID mtrActionsClusterStartActionParams value =
  sendMessage mtrActionsClusterStartActionParams setInvokeIDSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRActionsClusterStartActionParams mtrActionsClusterStartActionParams => mtrActionsClusterStartActionParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrActionsClusterStartActionParams =
  sendMessage mtrActionsClusterStartActionParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRActionsClusterStartActionParams mtrActionsClusterStartActionParams, IsNSNumber value) => mtrActionsClusterStartActionParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrActionsClusterStartActionParams value =
  sendMessage mtrActionsClusterStartActionParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRActionsClusterStartActionParams)
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

