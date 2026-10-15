{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRAccountLoginClusterGetSetupPINResponseParams@.
module ObjC.Matter.MTRAccountLoginClusterGetSetupPINResponseParams
  ( MTRAccountLoginClusterGetSetupPINResponseParams
  , IsMTRAccountLoginClusterGetSetupPINResponseParams(..)
  , init_
  , copyWithZone
  , setupPIN
  , setSetupPIN
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , initSelector
  , setSetupPINSelector
  , setTimedInvokeTimeoutMsSelector
  , setupPINSelector
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
init_ :: IsMTRAccountLoginClusterGetSetupPINResponseParams mtrAccountLoginClusterGetSetupPINResponseParams => mtrAccountLoginClusterGetSetupPINResponseParams -> IO (Id MTRAccountLoginClusterGetSetupPINResponseParams)
init_ mtrAccountLoginClusterGetSetupPINResponseParams =
  sendOwnedMessage mtrAccountLoginClusterGetSetupPINResponseParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRAccountLoginClusterGetSetupPINResponseParams mtrAccountLoginClusterGetSetupPINResponseParams => mtrAccountLoginClusterGetSetupPINResponseParams -> Ptr () -> IO RawId
copyWithZone mtrAccountLoginClusterGetSetupPINResponseParams zone =
  sendOwnedMessage mtrAccountLoginClusterGetSetupPINResponseParams copyWithZoneSelector zone

-- | @- setupPIN@
setupPIN :: IsMTRAccountLoginClusterGetSetupPINResponseParams mtrAccountLoginClusterGetSetupPINResponseParams => mtrAccountLoginClusterGetSetupPINResponseParams -> IO (Id NSString)
setupPIN mtrAccountLoginClusterGetSetupPINResponseParams =
  sendMessage mtrAccountLoginClusterGetSetupPINResponseParams setupPINSelector

-- | @- setSetupPIN:@
setSetupPIN :: (IsMTRAccountLoginClusterGetSetupPINResponseParams mtrAccountLoginClusterGetSetupPINResponseParams, IsNSString value) => mtrAccountLoginClusterGetSetupPINResponseParams -> value -> IO ()
setSetupPIN mtrAccountLoginClusterGetSetupPINResponseParams value =
  sendMessage mtrAccountLoginClusterGetSetupPINResponseParams setSetupPINSelector (toNSString value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRAccountLoginClusterGetSetupPINResponseParams mtrAccountLoginClusterGetSetupPINResponseParams => mtrAccountLoginClusterGetSetupPINResponseParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrAccountLoginClusterGetSetupPINResponseParams =
  sendMessage mtrAccountLoginClusterGetSetupPINResponseParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRAccountLoginClusterGetSetupPINResponseParams mtrAccountLoginClusterGetSetupPINResponseParams, IsNSNumber value) => mtrAccountLoginClusterGetSetupPINResponseParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrAccountLoginClusterGetSetupPINResponseParams value =
  sendMessage mtrAccountLoginClusterGetSetupPINResponseParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRAccountLoginClusterGetSetupPINResponseParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @setupPIN@
setupPINSelector :: Selector '[] (Id NSString)
setupPINSelector = mkSelector "setupPIN"

-- | @Selector@ for @setSetupPIN:@
setSetupPINSelector :: Selector '[Id NSString] ()
setSetupPINSelector = mkSelector "setSetupPIN:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

