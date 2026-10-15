{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRColorControlClusterMoveToHueParams@.
module ObjC.Matter.MTRColorControlClusterMoveToHueParams
  ( MTRColorControlClusterMoveToHueParams
  , IsMTRColorControlClusterMoveToHueParams(..)
  , init_
  , copyWithZone
  , hue
  , setHue
  , direction
  , setDirection
  , transitionTime
  , setTransitionTime
  , optionsMask
  , setOptionsMask
  , optionsOverride
  , setOptionsOverride
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , directionSelector
  , hueSelector
  , initSelector
  , optionsMaskSelector
  , optionsOverrideSelector
  , setDirectionSelector
  , setHueSelector
  , setOptionsMaskSelector
  , setOptionsOverrideSelector
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
init_ :: IsMTRColorControlClusterMoveToHueParams mtrColorControlClusterMoveToHueParams => mtrColorControlClusterMoveToHueParams -> IO (Id MTRColorControlClusterMoveToHueParams)
init_ mtrColorControlClusterMoveToHueParams =
  sendOwnedMessage mtrColorControlClusterMoveToHueParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRColorControlClusterMoveToHueParams mtrColorControlClusterMoveToHueParams => mtrColorControlClusterMoveToHueParams -> Ptr () -> IO RawId
copyWithZone mtrColorControlClusterMoveToHueParams zone =
  sendOwnedMessage mtrColorControlClusterMoveToHueParams copyWithZoneSelector zone

-- | @- hue@
hue :: IsMTRColorControlClusterMoveToHueParams mtrColorControlClusterMoveToHueParams => mtrColorControlClusterMoveToHueParams -> IO (Id NSNumber)
hue mtrColorControlClusterMoveToHueParams =
  sendMessage mtrColorControlClusterMoveToHueParams hueSelector

-- | @- setHue:@
setHue :: (IsMTRColorControlClusterMoveToHueParams mtrColorControlClusterMoveToHueParams, IsNSNumber value) => mtrColorControlClusterMoveToHueParams -> value -> IO ()
setHue mtrColorControlClusterMoveToHueParams value =
  sendMessage mtrColorControlClusterMoveToHueParams setHueSelector (toNSNumber value)

-- | @- direction@
direction :: IsMTRColorControlClusterMoveToHueParams mtrColorControlClusterMoveToHueParams => mtrColorControlClusterMoveToHueParams -> IO (Id NSNumber)
direction mtrColorControlClusterMoveToHueParams =
  sendMessage mtrColorControlClusterMoveToHueParams directionSelector

-- | @- setDirection:@
setDirection :: (IsMTRColorControlClusterMoveToHueParams mtrColorControlClusterMoveToHueParams, IsNSNumber value) => mtrColorControlClusterMoveToHueParams -> value -> IO ()
setDirection mtrColorControlClusterMoveToHueParams value =
  sendMessage mtrColorControlClusterMoveToHueParams setDirectionSelector (toNSNumber value)

-- | @- transitionTime@
transitionTime :: IsMTRColorControlClusterMoveToHueParams mtrColorControlClusterMoveToHueParams => mtrColorControlClusterMoveToHueParams -> IO (Id NSNumber)
transitionTime mtrColorControlClusterMoveToHueParams =
  sendMessage mtrColorControlClusterMoveToHueParams transitionTimeSelector

-- | @- setTransitionTime:@
setTransitionTime :: (IsMTRColorControlClusterMoveToHueParams mtrColorControlClusterMoveToHueParams, IsNSNumber value) => mtrColorControlClusterMoveToHueParams -> value -> IO ()
setTransitionTime mtrColorControlClusterMoveToHueParams value =
  sendMessage mtrColorControlClusterMoveToHueParams setTransitionTimeSelector (toNSNumber value)

-- | @- optionsMask@
optionsMask :: IsMTRColorControlClusterMoveToHueParams mtrColorControlClusterMoveToHueParams => mtrColorControlClusterMoveToHueParams -> IO (Id NSNumber)
optionsMask mtrColorControlClusterMoveToHueParams =
  sendMessage mtrColorControlClusterMoveToHueParams optionsMaskSelector

-- | @- setOptionsMask:@
setOptionsMask :: (IsMTRColorControlClusterMoveToHueParams mtrColorControlClusterMoveToHueParams, IsNSNumber value) => mtrColorControlClusterMoveToHueParams -> value -> IO ()
setOptionsMask mtrColorControlClusterMoveToHueParams value =
  sendMessage mtrColorControlClusterMoveToHueParams setOptionsMaskSelector (toNSNumber value)

-- | @- optionsOverride@
optionsOverride :: IsMTRColorControlClusterMoveToHueParams mtrColorControlClusterMoveToHueParams => mtrColorControlClusterMoveToHueParams -> IO (Id NSNumber)
optionsOverride mtrColorControlClusterMoveToHueParams =
  sendMessage mtrColorControlClusterMoveToHueParams optionsOverrideSelector

-- | @- setOptionsOverride:@
setOptionsOverride :: (IsMTRColorControlClusterMoveToHueParams mtrColorControlClusterMoveToHueParams, IsNSNumber value) => mtrColorControlClusterMoveToHueParams -> value -> IO ()
setOptionsOverride mtrColorControlClusterMoveToHueParams value =
  sendMessage mtrColorControlClusterMoveToHueParams setOptionsOverrideSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRColorControlClusterMoveToHueParams mtrColorControlClusterMoveToHueParams => mtrColorControlClusterMoveToHueParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrColorControlClusterMoveToHueParams =
  sendMessage mtrColorControlClusterMoveToHueParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRColorControlClusterMoveToHueParams mtrColorControlClusterMoveToHueParams, IsNSNumber value) => mtrColorControlClusterMoveToHueParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrColorControlClusterMoveToHueParams value =
  sendMessage mtrColorControlClusterMoveToHueParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRColorControlClusterMoveToHueParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @hue@
hueSelector :: Selector '[] (Id NSNumber)
hueSelector = mkSelector "hue"

-- | @Selector@ for @setHue:@
setHueSelector :: Selector '[Id NSNumber] ()
setHueSelector = mkSelector "setHue:"

-- | @Selector@ for @direction@
directionSelector :: Selector '[] (Id NSNumber)
directionSelector = mkSelector "direction"

-- | @Selector@ for @setDirection:@
setDirectionSelector :: Selector '[Id NSNumber] ()
setDirectionSelector = mkSelector "setDirection:"

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

