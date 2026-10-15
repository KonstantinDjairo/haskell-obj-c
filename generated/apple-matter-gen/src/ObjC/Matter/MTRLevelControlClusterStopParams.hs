{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRLevelControlClusterStopParams@.
module ObjC.Matter.MTRLevelControlClusterStopParams
  ( MTRLevelControlClusterStopParams
  , IsMTRLevelControlClusterStopParams(..)
  , init_
  , copyWithZone
  , optionsMask
  , setOptionsMask
  , optionsOverride
  , setOptionsOverride
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , initSelector
  , optionsMaskSelector
  , optionsOverrideSelector
  , setOptionsMaskSelector
  , setOptionsOverrideSelector
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
init_ :: IsMTRLevelControlClusterStopParams mtrLevelControlClusterStopParams => mtrLevelControlClusterStopParams -> IO (Id MTRLevelControlClusterStopParams)
init_ mtrLevelControlClusterStopParams =
  sendOwnedMessage mtrLevelControlClusterStopParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRLevelControlClusterStopParams mtrLevelControlClusterStopParams => mtrLevelControlClusterStopParams -> Ptr () -> IO RawId
copyWithZone mtrLevelControlClusterStopParams zone =
  sendOwnedMessage mtrLevelControlClusterStopParams copyWithZoneSelector zone

-- | @- optionsMask@
optionsMask :: IsMTRLevelControlClusterStopParams mtrLevelControlClusterStopParams => mtrLevelControlClusterStopParams -> IO (Id NSNumber)
optionsMask mtrLevelControlClusterStopParams =
  sendMessage mtrLevelControlClusterStopParams optionsMaskSelector

-- | @- setOptionsMask:@
setOptionsMask :: (IsMTRLevelControlClusterStopParams mtrLevelControlClusterStopParams, IsNSNumber value) => mtrLevelControlClusterStopParams -> value -> IO ()
setOptionsMask mtrLevelControlClusterStopParams value =
  sendMessage mtrLevelControlClusterStopParams setOptionsMaskSelector (toNSNumber value)

-- | @- optionsOverride@
optionsOverride :: IsMTRLevelControlClusterStopParams mtrLevelControlClusterStopParams => mtrLevelControlClusterStopParams -> IO (Id NSNumber)
optionsOverride mtrLevelControlClusterStopParams =
  sendMessage mtrLevelControlClusterStopParams optionsOverrideSelector

-- | @- setOptionsOverride:@
setOptionsOverride :: (IsMTRLevelControlClusterStopParams mtrLevelControlClusterStopParams, IsNSNumber value) => mtrLevelControlClusterStopParams -> value -> IO ()
setOptionsOverride mtrLevelControlClusterStopParams value =
  sendMessage mtrLevelControlClusterStopParams setOptionsOverrideSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRLevelControlClusterStopParams mtrLevelControlClusterStopParams => mtrLevelControlClusterStopParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrLevelControlClusterStopParams =
  sendMessage mtrLevelControlClusterStopParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRLevelControlClusterStopParams mtrLevelControlClusterStopParams, IsNSNumber value) => mtrLevelControlClusterStopParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrLevelControlClusterStopParams value =
  sendMessage mtrLevelControlClusterStopParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRLevelControlClusterStopParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @optionsMask@
optionsMaskSelector :: Selector '[] (Id NSNumber)
optionsMaskSelector = mkSelector "optionsMask"

-- | @Selector@ for @setOptionsMask:@
setOptionsMaskSelector :: Selector '[Id NSNumber] ()
setOptionsMaskSelector = mkSelector "setOptionsMask:"

-- | @Selector@ for @optionsOverride@
optionsOverrideSelector :: Selector '[] (Id NSNumber)
optionsOverrideSelector = mkSelector "optionsOverride"

-- | @Selector@ for @setOptionsOverride:@
setOptionsOverrideSelector :: Selector '[Id NSNumber] ()
setOptionsOverrideSelector = mkSelector "setOptionsOverride:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

