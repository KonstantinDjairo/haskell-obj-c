{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRLevelControlClusterStopWithOnOffParams@.
module ObjC.Matter.MTRLevelControlClusterStopWithOnOffParams
  ( MTRLevelControlClusterStopWithOnOffParams
  , IsMTRLevelControlClusterStopWithOnOffParams(..)
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
init_ :: IsMTRLevelControlClusterStopWithOnOffParams mtrLevelControlClusterStopWithOnOffParams => mtrLevelControlClusterStopWithOnOffParams -> IO (Id MTRLevelControlClusterStopWithOnOffParams)
init_ mtrLevelControlClusterStopWithOnOffParams =
  sendOwnedMessage mtrLevelControlClusterStopWithOnOffParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRLevelControlClusterStopWithOnOffParams mtrLevelControlClusterStopWithOnOffParams => mtrLevelControlClusterStopWithOnOffParams -> Ptr () -> IO RawId
copyWithZone mtrLevelControlClusterStopWithOnOffParams zone =
  sendOwnedMessage mtrLevelControlClusterStopWithOnOffParams copyWithZoneSelector zone

-- | @- optionsMask@
optionsMask :: IsMTRLevelControlClusterStopWithOnOffParams mtrLevelControlClusterStopWithOnOffParams => mtrLevelControlClusterStopWithOnOffParams -> IO (Id NSNumber)
optionsMask mtrLevelControlClusterStopWithOnOffParams =
  sendMessage mtrLevelControlClusterStopWithOnOffParams optionsMaskSelector

-- | @- setOptionsMask:@
setOptionsMask :: (IsMTRLevelControlClusterStopWithOnOffParams mtrLevelControlClusterStopWithOnOffParams, IsNSNumber value) => mtrLevelControlClusterStopWithOnOffParams -> value -> IO ()
setOptionsMask mtrLevelControlClusterStopWithOnOffParams value =
  sendMessage mtrLevelControlClusterStopWithOnOffParams setOptionsMaskSelector (toNSNumber value)

-- | @- optionsOverride@
optionsOverride :: IsMTRLevelControlClusterStopWithOnOffParams mtrLevelControlClusterStopWithOnOffParams => mtrLevelControlClusterStopWithOnOffParams -> IO (Id NSNumber)
optionsOverride mtrLevelControlClusterStopWithOnOffParams =
  sendMessage mtrLevelControlClusterStopWithOnOffParams optionsOverrideSelector

-- | @- setOptionsOverride:@
setOptionsOverride :: (IsMTRLevelControlClusterStopWithOnOffParams mtrLevelControlClusterStopWithOnOffParams, IsNSNumber value) => mtrLevelControlClusterStopWithOnOffParams -> value -> IO ()
setOptionsOverride mtrLevelControlClusterStopWithOnOffParams value =
  sendMessage mtrLevelControlClusterStopWithOnOffParams setOptionsOverrideSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRLevelControlClusterStopWithOnOffParams mtrLevelControlClusterStopWithOnOffParams => mtrLevelControlClusterStopWithOnOffParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrLevelControlClusterStopWithOnOffParams =
  sendMessage mtrLevelControlClusterStopWithOnOffParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRLevelControlClusterStopWithOnOffParams mtrLevelControlClusterStopWithOnOffParams, IsNSNumber value) => mtrLevelControlClusterStopWithOnOffParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrLevelControlClusterStopWithOnOffParams value =
  sendMessage mtrLevelControlClusterStopWithOnOffParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRLevelControlClusterStopWithOnOffParams)
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

