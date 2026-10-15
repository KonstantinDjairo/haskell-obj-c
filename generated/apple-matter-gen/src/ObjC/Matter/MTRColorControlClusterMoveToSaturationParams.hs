{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRColorControlClusterMoveToSaturationParams@.
module ObjC.Matter.MTRColorControlClusterMoveToSaturationParams
  ( MTRColorControlClusterMoveToSaturationParams
  , IsMTRColorControlClusterMoveToSaturationParams(..)
  , init_
  , copyWithZone
  , saturation
  , setSaturation
  , transitionTime
  , setTransitionTime
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
  , saturationSelector
  , setOptionsMaskSelector
  , setOptionsOverrideSelector
  , setSaturationSelector
  , setTimedInvokeTimeoutMsSelector
  , setTransitionTimeSelector
  , timedInvokeTimeoutMsSelector
  , transitionTimeSelector


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
init_ :: IsMTRColorControlClusterMoveToSaturationParams mtrColorControlClusterMoveToSaturationParams => mtrColorControlClusterMoveToSaturationParams -> IO (Id MTRColorControlClusterMoveToSaturationParams)
init_ mtrColorControlClusterMoveToSaturationParams =
  sendOwnedMessage mtrColorControlClusterMoveToSaturationParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRColorControlClusterMoveToSaturationParams mtrColorControlClusterMoveToSaturationParams => mtrColorControlClusterMoveToSaturationParams -> Ptr () -> IO RawId
copyWithZone mtrColorControlClusterMoveToSaturationParams zone =
  sendOwnedMessage mtrColorControlClusterMoveToSaturationParams copyWithZoneSelector zone

-- | @- saturation@
saturation :: IsMTRColorControlClusterMoveToSaturationParams mtrColorControlClusterMoveToSaturationParams => mtrColorControlClusterMoveToSaturationParams -> IO (Id NSNumber)
saturation mtrColorControlClusterMoveToSaturationParams =
  sendMessage mtrColorControlClusterMoveToSaturationParams saturationSelector

-- | @- setSaturation:@
setSaturation :: (IsMTRColorControlClusterMoveToSaturationParams mtrColorControlClusterMoveToSaturationParams, IsNSNumber value) => mtrColorControlClusterMoveToSaturationParams -> value -> IO ()
setSaturation mtrColorControlClusterMoveToSaturationParams value =
  sendMessage mtrColorControlClusterMoveToSaturationParams setSaturationSelector (toNSNumber value)

-- | @- transitionTime@
transitionTime :: IsMTRColorControlClusterMoveToSaturationParams mtrColorControlClusterMoveToSaturationParams => mtrColorControlClusterMoveToSaturationParams -> IO (Id NSNumber)
transitionTime mtrColorControlClusterMoveToSaturationParams =
  sendMessage mtrColorControlClusterMoveToSaturationParams transitionTimeSelector

-- | @- setTransitionTime:@
setTransitionTime :: (IsMTRColorControlClusterMoveToSaturationParams mtrColorControlClusterMoveToSaturationParams, IsNSNumber value) => mtrColorControlClusterMoveToSaturationParams -> value -> IO ()
setTransitionTime mtrColorControlClusterMoveToSaturationParams value =
  sendMessage mtrColorControlClusterMoveToSaturationParams setTransitionTimeSelector (toNSNumber value)

-- | @- optionsMask@
optionsMask :: IsMTRColorControlClusterMoveToSaturationParams mtrColorControlClusterMoveToSaturationParams => mtrColorControlClusterMoveToSaturationParams -> IO (Id NSNumber)
optionsMask mtrColorControlClusterMoveToSaturationParams =
  sendMessage mtrColorControlClusterMoveToSaturationParams optionsMaskSelector

-- | @- setOptionsMask:@
setOptionsMask :: (IsMTRColorControlClusterMoveToSaturationParams mtrColorControlClusterMoveToSaturationParams, IsNSNumber value) => mtrColorControlClusterMoveToSaturationParams -> value -> IO ()
setOptionsMask mtrColorControlClusterMoveToSaturationParams value =
  sendMessage mtrColorControlClusterMoveToSaturationParams setOptionsMaskSelector (toNSNumber value)

-- | @- optionsOverride@
optionsOverride :: IsMTRColorControlClusterMoveToSaturationParams mtrColorControlClusterMoveToSaturationParams => mtrColorControlClusterMoveToSaturationParams -> IO (Id NSNumber)
optionsOverride mtrColorControlClusterMoveToSaturationParams =
  sendMessage mtrColorControlClusterMoveToSaturationParams optionsOverrideSelector

-- | @- setOptionsOverride:@
setOptionsOverride :: (IsMTRColorControlClusterMoveToSaturationParams mtrColorControlClusterMoveToSaturationParams, IsNSNumber value) => mtrColorControlClusterMoveToSaturationParams -> value -> IO ()
setOptionsOverride mtrColorControlClusterMoveToSaturationParams value =
  sendMessage mtrColorControlClusterMoveToSaturationParams setOptionsOverrideSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRColorControlClusterMoveToSaturationParams mtrColorControlClusterMoveToSaturationParams => mtrColorControlClusterMoveToSaturationParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrColorControlClusterMoveToSaturationParams =
  sendMessage mtrColorControlClusterMoveToSaturationParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRColorControlClusterMoveToSaturationParams mtrColorControlClusterMoveToSaturationParams, IsNSNumber value) => mtrColorControlClusterMoveToSaturationParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrColorControlClusterMoveToSaturationParams value =
  sendMessage mtrColorControlClusterMoveToSaturationParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRColorControlClusterMoveToSaturationParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @saturation@
saturationSelector :: Selector '[] (Id NSNumber)
saturationSelector = mkSelector "saturation"

-- | @Selector@ for @setSaturation:@
setSaturationSelector :: Selector '[Id NSNumber] ()
setSaturationSelector = mkSelector "setSaturation:"

-- | @Selector@ for @transitionTime@
transitionTimeSelector :: Selector '[] (Id NSNumber)
transitionTimeSelector = mkSelector "transitionTime"

-- | @Selector@ for @setTransitionTime:@
setTransitionTimeSelector :: Selector '[Id NSNumber] ()
setTransitionTimeSelector = mkSelector "setTransitionTime:"

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

