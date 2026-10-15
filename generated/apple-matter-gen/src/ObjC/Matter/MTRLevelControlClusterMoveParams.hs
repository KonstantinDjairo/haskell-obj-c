{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRLevelControlClusterMoveParams@.
module ObjC.Matter.MTRLevelControlClusterMoveParams
  ( MTRLevelControlClusterMoveParams
  , IsMTRLevelControlClusterMoveParams(..)
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
init_ :: IsMTRLevelControlClusterMoveParams mtrLevelControlClusterMoveParams => mtrLevelControlClusterMoveParams -> IO (Id MTRLevelControlClusterMoveParams)
init_ mtrLevelControlClusterMoveParams =
  sendOwnedMessage mtrLevelControlClusterMoveParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRLevelControlClusterMoveParams mtrLevelControlClusterMoveParams => mtrLevelControlClusterMoveParams -> Ptr () -> IO RawId
copyWithZone mtrLevelControlClusterMoveParams zone =
  sendOwnedMessage mtrLevelControlClusterMoveParams copyWithZoneSelector zone

-- | @- moveMode@
moveMode :: IsMTRLevelControlClusterMoveParams mtrLevelControlClusterMoveParams => mtrLevelControlClusterMoveParams -> IO (Id NSNumber)
moveMode mtrLevelControlClusterMoveParams =
  sendMessage mtrLevelControlClusterMoveParams moveModeSelector

-- | @- setMoveMode:@
setMoveMode :: (IsMTRLevelControlClusterMoveParams mtrLevelControlClusterMoveParams, IsNSNumber value) => mtrLevelControlClusterMoveParams -> value -> IO ()
setMoveMode mtrLevelControlClusterMoveParams value =
  sendMessage mtrLevelControlClusterMoveParams setMoveModeSelector (toNSNumber value)

-- | @- rate@
rate :: IsMTRLevelControlClusterMoveParams mtrLevelControlClusterMoveParams => mtrLevelControlClusterMoveParams -> IO (Id NSNumber)
rate mtrLevelControlClusterMoveParams =
  sendMessage mtrLevelControlClusterMoveParams rateSelector

-- | @- setRate:@
setRate :: (IsMTRLevelControlClusterMoveParams mtrLevelControlClusterMoveParams, IsNSNumber value) => mtrLevelControlClusterMoveParams -> value -> IO ()
setRate mtrLevelControlClusterMoveParams value =
  sendMessage mtrLevelControlClusterMoveParams setRateSelector (toNSNumber value)

-- | @- optionsMask@
optionsMask :: IsMTRLevelControlClusterMoveParams mtrLevelControlClusterMoveParams => mtrLevelControlClusterMoveParams -> IO (Id NSNumber)
optionsMask mtrLevelControlClusterMoveParams =
  sendMessage mtrLevelControlClusterMoveParams optionsMaskSelector

-- | @- setOptionsMask:@
setOptionsMask :: (IsMTRLevelControlClusterMoveParams mtrLevelControlClusterMoveParams, IsNSNumber value) => mtrLevelControlClusterMoveParams -> value -> IO ()
setOptionsMask mtrLevelControlClusterMoveParams value =
  sendMessage mtrLevelControlClusterMoveParams setOptionsMaskSelector (toNSNumber value)

-- | @- optionsOverride@
optionsOverride :: IsMTRLevelControlClusterMoveParams mtrLevelControlClusterMoveParams => mtrLevelControlClusterMoveParams -> IO (Id NSNumber)
optionsOverride mtrLevelControlClusterMoveParams =
  sendMessage mtrLevelControlClusterMoveParams optionsOverrideSelector

-- | @- setOptionsOverride:@
setOptionsOverride :: (IsMTRLevelControlClusterMoveParams mtrLevelControlClusterMoveParams, IsNSNumber value) => mtrLevelControlClusterMoveParams -> value -> IO ()
setOptionsOverride mtrLevelControlClusterMoveParams value =
  sendMessage mtrLevelControlClusterMoveParams setOptionsOverrideSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRLevelControlClusterMoveParams mtrLevelControlClusterMoveParams => mtrLevelControlClusterMoveParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrLevelControlClusterMoveParams =
  sendMessage mtrLevelControlClusterMoveParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRLevelControlClusterMoveParams mtrLevelControlClusterMoveParams, IsNSNumber value) => mtrLevelControlClusterMoveParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrLevelControlClusterMoveParams value =
  sendMessage mtrLevelControlClusterMoveParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRLevelControlClusterMoveParams)
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

