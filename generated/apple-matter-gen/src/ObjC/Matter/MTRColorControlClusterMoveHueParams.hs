{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRColorControlClusterMoveHueParams@.
module ObjC.Matter.MTRColorControlClusterMoveHueParams
  ( MTRColorControlClusterMoveHueParams
  , IsMTRColorControlClusterMoveHueParams(..)
  , init_
  , copyWithZone
  , moveMode
  , setMoveMode
  , rate
  , setRate
  , optionsMask
  , setOptionsMask
  , optionsOverride
  , setOptionsOverride
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , initSelector
  , moveModeSelector
  , optionsMaskSelector
  , optionsOverrideSelector
  , rateSelector
  , setMoveModeSelector
  , setOptionsMaskSelector
  , setOptionsOverrideSelector
  , setRateSelector
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
init_ :: IsMTRColorControlClusterMoveHueParams mtrColorControlClusterMoveHueParams => mtrColorControlClusterMoveHueParams -> IO (Id MTRColorControlClusterMoveHueParams)
init_ mtrColorControlClusterMoveHueParams =
  sendOwnedMessage mtrColorControlClusterMoveHueParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRColorControlClusterMoveHueParams mtrColorControlClusterMoveHueParams => mtrColorControlClusterMoveHueParams -> Ptr () -> IO RawId
copyWithZone mtrColorControlClusterMoveHueParams zone =
  sendOwnedMessage mtrColorControlClusterMoveHueParams copyWithZoneSelector zone

-- | @- moveMode@
moveMode :: IsMTRColorControlClusterMoveHueParams mtrColorControlClusterMoveHueParams => mtrColorControlClusterMoveHueParams -> IO (Id NSNumber)
moveMode mtrColorControlClusterMoveHueParams =
  sendMessage mtrColorControlClusterMoveHueParams moveModeSelector

-- | @- setMoveMode:@
setMoveMode :: (IsMTRColorControlClusterMoveHueParams mtrColorControlClusterMoveHueParams, IsNSNumber value) => mtrColorControlClusterMoveHueParams -> value -> IO ()
setMoveMode mtrColorControlClusterMoveHueParams value =
  sendMessage mtrColorControlClusterMoveHueParams setMoveModeSelector (toNSNumber value)

-- | @- rate@
rate :: IsMTRColorControlClusterMoveHueParams mtrColorControlClusterMoveHueParams => mtrColorControlClusterMoveHueParams -> IO (Id NSNumber)
rate mtrColorControlClusterMoveHueParams =
  sendMessage mtrColorControlClusterMoveHueParams rateSelector

-- | @- setRate:@
setRate :: (IsMTRColorControlClusterMoveHueParams mtrColorControlClusterMoveHueParams, IsNSNumber value) => mtrColorControlClusterMoveHueParams -> value -> IO ()
setRate mtrColorControlClusterMoveHueParams value =
  sendMessage mtrColorControlClusterMoveHueParams setRateSelector (toNSNumber value)

-- | @- optionsMask@
optionsMask :: IsMTRColorControlClusterMoveHueParams mtrColorControlClusterMoveHueParams => mtrColorControlClusterMoveHueParams -> IO (Id NSNumber)
optionsMask mtrColorControlClusterMoveHueParams =
  sendMessage mtrColorControlClusterMoveHueParams optionsMaskSelector

-- | @- setOptionsMask:@
setOptionsMask :: (IsMTRColorControlClusterMoveHueParams mtrColorControlClusterMoveHueParams, IsNSNumber value) => mtrColorControlClusterMoveHueParams -> value -> IO ()
setOptionsMask mtrColorControlClusterMoveHueParams value =
  sendMessage mtrColorControlClusterMoveHueParams setOptionsMaskSelector (toNSNumber value)

-- | @- optionsOverride@
optionsOverride :: IsMTRColorControlClusterMoveHueParams mtrColorControlClusterMoveHueParams => mtrColorControlClusterMoveHueParams -> IO (Id NSNumber)
optionsOverride mtrColorControlClusterMoveHueParams =
  sendMessage mtrColorControlClusterMoveHueParams optionsOverrideSelector

-- | @- setOptionsOverride:@
setOptionsOverride :: (IsMTRColorControlClusterMoveHueParams mtrColorControlClusterMoveHueParams, IsNSNumber value) => mtrColorControlClusterMoveHueParams -> value -> IO ()
setOptionsOverride mtrColorControlClusterMoveHueParams value =
  sendMessage mtrColorControlClusterMoveHueParams setOptionsOverrideSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRColorControlClusterMoveHueParams mtrColorControlClusterMoveHueParams => mtrColorControlClusterMoveHueParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrColorControlClusterMoveHueParams =
  sendMessage mtrColorControlClusterMoveHueParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRColorControlClusterMoveHueParams mtrColorControlClusterMoveHueParams, IsNSNumber value) => mtrColorControlClusterMoveHueParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrColorControlClusterMoveHueParams value =
  sendMessage mtrColorControlClusterMoveHueParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRColorControlClusterMoveHueParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @moveMode@
moveModeSelector :: Selector '[] (Id NSNumber)
moveModeSelector = mkSelector "moveMode"

-- | @Selector@ for @setMoveMode:@
setMoveModeSelector :: Selector '[Id NSNumber] ()
setMoveModeSelector = mkSelector "setMoveMode:"

-- | @Selector@ for @rate@
rateSelector :: Selector '[] (Id NSNumber)
rateSelector = mkSelector "rate"

-- | @Selector@ for @setRate:@
setRateSelector :: Selector '[Id NSNumber] ()
setRateSelector = mkSelector "setRate:"

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

