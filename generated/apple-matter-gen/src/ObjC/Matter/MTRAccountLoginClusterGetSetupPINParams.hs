{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRAccountLoginClusterGetSetupPINParams@.
module ObjC.Matter.MTRAccountLoginClusterGetSetupPINParams
  ( MTRAccountLoginClusterGetSetupPINParams
  , IsMTRAccountLoginClusterGetSetupPINParams(..)
  , init_
  , copyWithZone
  , tempAccountIdentifier
  , setTempAccountIdentifier
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , initSelector
  , setTempAccountIdentifierSelector
  , setTimedInvokeTimeoutMsSelector
  , tempAccountIdentifierSelector
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
init_ :: IsMTRAccountLoginClusterGetSetupPINParams mtrAccountLoginClusterGetSetupPINParams => mtrAccountLoginClusterGetSetupPINParams -> IO (Id MTRAccountLoginClusterGetSetupPINParams)
init_ mtrAccountLoginClusterGetSetupPINParams =
  sendOwnedMessage mtrAccountLoginClusterGetSetupPINParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRAccountLoginClusterGetSetupPINParams mtrAccountLoginClusterGetSetupPINParams => mtrAccountLoginClusterGetSetupPINParams -> Ptr () -> IO RawId
copyWithZone mtrAccountLoginClusterGetSetupPINParams zone =
  sendOwnedMessage mtrAccountLoginClusterGetSetupPINParams copyWithZoneSelector zone

-- | @- tempAccountIdentifier@
tempAccountIdentifier :: IsMTRAccountLoginClusterGetSetupPINParams mtrAccountLoginClusterGetSetupPINParams => mtrAccountLoginClusterGetSetupPINParams -> IO (Id NSString)
tempAccountIdentifier mtrAccountLoginClusterGetSetupPINParams =
  sendMessage mtrAccountLoginClusterGetSetupPINParams tempAccountIdentifierSelector

-- | @- setTempAccountIdentifier:@
setTempAccountIdentifier :: (IsMTRAccountLoginClusterGetSetupPINParams mtrAccountLoginClusterGetSetupPINParams, IsNSString value) => mtrAccountLoginClusterGetSetupPINParams -> value -> IO ()
setTempAccountIdentifier mtrAccountLoginClusterGetSetupPINParams value =
  sendMessage mtrAccountLoginClusterGetSetupPINParams setTempAccountIdentifierSelector (toNSString value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRAccountLoginClusterGetSetupPINParams mtrAccountLoginClusterGetSetupPINParams => mtrAccountLoginClusterGetSetupPINParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrAccountLoginClusterGetSetupPINParams =
  sendMessage mtrAccountLoginClusterGetSetupPINParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRAccountLoginClusterGetSetupPINParams mtrAccountLoginClusterGetSetupPINParams, IsNSNumber value) => mtrAccountLoginClusterGetSetupPINParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrAccountLoginClusterGetSetupPINParams value =
  sendMessage mtrAccountLoginClusterGetSetupPINParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRAccountLoginClusterGetSetupPINParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @tempAccountIdentifier@
tempAccountIdentifierSelector :: Selector '[] (Id NSString)
tempAccountIdentifierSelector = mkSelector "tempAccountIdentifier"

-- | @Selector@ for @setTempAccountIdentifier:@
setTempAccountIdentifierSelector :: Selector '[Id NSString] ()
setTempAccountIdentifierSelector = mkSelector "setTempAccountIdentifier:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

