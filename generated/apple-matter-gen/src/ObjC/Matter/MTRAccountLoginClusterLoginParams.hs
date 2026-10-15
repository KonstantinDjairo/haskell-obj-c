{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRAccountLoginClusterLoginParams@.
module ObjC.Matter.MTRAccountLoginClusterLoginParams
  ( MTRAccountLoginClusterLoginParams
  , IsMTRAccountLoginClusterLoginParams(..)
  , init_
  , copyWithZone
  , tempAccountIdentifier
  , setTempAccountIdentifier
  , setupPIN
  , setSetupPIN
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , initSelector
  , setSetupPINSelector
  , setTempAccountIdentifierSelector
  , setTimedInvokeTimeoutMsSelector
  , setupPINSelector
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
init_ :: IsMTRAccountLoginClusterLoginParams mtrAccountLoginClusterLoginParams => mtrAccountLoginClusterLoginParams -> IO (Id MTRAccountLoginClusterLoginParams)
init_ mtrAccountLoginClusterLoginParams =
  sendOwnedMessage mtrAccountLoginClusterLoginParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRAccountLoginClusterLoginParams mtrAccountLoginClusterLoginParams => mtrAccountLoginClusterLoginParams -> Ptr () -> IO RawId
copyWithZone mtrAccountLoginClusterLoginParams zone =
  sendOwnedMessage mtrAccountLoginClusterLoginParams copyWithZoneSelector zone

-- | @- tempAccountIdentifier@
tempAccountIdentifier :: IsMTRAccountLoginClusterLoginParams mtrAccountLoginClusterLoginParams => mtrAccountLoginClusterLoginParams -> IO (Id NSString)
tempAccountIdentifier mtrAccountLoginClusterLoginParams =
  sendMessage mtrAccountLoginClusterLoginParams tempAccountIdentifierSelector

-- | @- setTempAccountIdentifier:@
setTempAccountIdentifier :: (IsMTRAccountLoginClusterLoginParams mtrAccountLoginClusterLoginParams, IsNSString value) => mtrAccountLoginClusterLoginParams -> value -> IO ()
setTempAccountIdentifier mtrAccountLoginClusterLoginParams value =
  sendMessage mtrAccountLoginClusterLoginParams setTempAccountIdentifierSelector (toNSString value)

-- | @- setupPIN@
setupPIN :: IsMTRAccountLoginClusterLoginParams mtrAccountLoginClusterLoginParams => mtrAccountLoginClusterLoginParams -> IO (Id NSString)
setupPIN mtrAccountLoginClusterLoginParams =
  sendMessage mtrAccountLoginClusterLoginParams setupPINSelector

-- | @- setSetupPIN:@
setSetupPIN :: (IsMTRAccountLoginClusterLoginParams mtrAccountLoginClusterLoginParams, IsNSString value) => mtrAccountLoginClusterLoginParams -> value -> IO ()
setSetupPIN mtrAccountLoginClusterLoginParams value =
  sendMessage mtrAccountLoginClusterLoginParams setSetupPINSelector (toNSString value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRAccountLoginClusterLoginParams mtrAccountLoginClusterLoginParams => mtrAccountLoginClusterLoginParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrAccountLoginClusterLoginParams =
  sendMessage mtrAccountLoginClusterLoginParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRAccountLoginClusterLoginParams mtrAccountLoginClusterLoginParams, IsNSNumber value) => mtrAccountLoginClusterLoginParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrAccountLoginClusterLoginParams value =
  sendMessage mtrAccountLoginClusterLoginParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRAccountLoginClusterLoginParams)
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

