{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRColorControlClusterMoveToColorParams@.
module ObjC.Matter.MTRColorControlClusterMoveToColorParams
  ( MTRColorControlClusterMoveToColorParams
  , IsMTRColorControlClusterMoveToColorParams(..)
  , init_
  , copyWithZone
  , colorX
  , setColorX
  , colorY
  , setColorY
  , transitionTime
  , setTransitionTime
  , optionsMask
  , setOptionsMask
  , optionsOverride
  , setOptionsOverride
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , colorXSelector
  , colorYSelector
  , copyWithZoneSelector
  , initSelector
  , optionsMaskSelector
  , optionsOverrideSelector
  , setColorXSelector
  , setColorYSelector
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
init_ :: IsMTRColorControlClusterMoveToColorParams mtrColorControlClusterMoveToColorParams => mtrColorControlClusterMoveToColorParams -> IO (Id MTRColorControlClusterMoveToColorParams)
init_ mtrColorControlClusterMoveToColorParams =
  sendOwnedMessage mtrColorControlClusterMoveToColorParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRColorControlClusterMoveToColorParams mtrColorControlClusterMoveToColorParams => mtrColorControlClusterMoveToColorParams -> Ptr () -> IO RawId
copyWithZone mtrColorControlClusterMoveToColorParams zone =
  sendOwnedMessage mtrColorControlClusterMoveToColorParams copyWithZoneSelector zone

-- | @- colorX@
colorX :: IsMTRColorControlClusterMoveToColorParams mtrColorControlClusterMoveToColorParams => mtrColorControlClusterMoveToColorParams -> IO (Id NSNumber)
colorX mtrColorControlClusterMoveToColorParams =
  sendMessage mtrColorControlClusterMoveToColorParams colorXSelector

-- | @- setColorX:@
setColorX :: (IsMTRColorControlClusterMoveToColorParams mtrColorControlClusterMoveToColorParams, IsNSNumber value) => mtrColorControlClusterMoveToColorParams -> value -> IO ()
setColorX mtrColorControlClusterMoveToColorParams value =
  sendMessage mtrColorControlClusterMoveToColorParams setColorXSelector (toNSNumber value)

-- | @- colorY@
colorY :: IsMTRColorControlClusterMoveToColorParams mtrColorControlClusterMoveToColorParams => mtrColorControlClusterMoveToColorParams -> IO (Id NSNumber)
colorY mtrColorControlClusterMoveToColorParams =
  sendMessage mtrColorControlClusterMoveToColorParams colorYSelector

-- | @- setColorY:@
setColorY :: (IsMTRColorControlClusterMoveToColorParams mtrColorControlClusterMoveToColorParams, IsNSNumber value) => mtrColorControlClusterMoveToColorParams -> value -> IO ()
setColorY mtrColorControlClusterMoveToColorParams value =
  sendMessage mtrColorControlClusterMoveToColorParams setColorYSelector (toNSNumber value)

-- | @- transitionTime@
transitionTime :: IsMTRColorControlClusterMoveToColorParams mtrColorControlClusterMoveToColorParams => mtrColorControlClusterMoveToColorParams -> IO (Id NSNumber)
transitionTime mtrColorControlClusterMoveToColorParams =
  sendMessage mtrColorControlClusterMoveToColorParams transitionTimeSelector

-- | @- setTransitionTime:@
setTransitionTime :: (IsMTRColorControlClusterMoveToColorParams mtrColorControlClusterMoveToColorParams, IsNSNumber value) => mtrColorControlClusterMoveToColorParams -> value -> IO ()
setTransitionTime mtrColorControlClusterMoveToColorParams value =
  sendMessage mtrColorControlClusterMoveToColorParams setTransitionTimeSelector (toNSNumber value)

-- | @- optionsMask@
optionsMask :: IsMTRColorControlClusterMoveToColorParams mtrColorControlClusterMoveToColorParams => mtrColorControlClusterMoveToColorParams -> IO (Id NSNumber)
optionsMask mtrColorControlClusterMoveToColorParams =
  sendMessage mtrColorControlClusterMoveToColorParams optionsMaskSelector

-- | @- setOptionsMask:@
setOptionsMask :: (IsMTRColorControlClusterMoveToColorParams mtrColorControlClusterMoveToColorParams, IsNSNumber value) => mtrColorControlClusterMoveToColorParams -> value -> IO ()
setOptionsMask mtrColorControlClusterMoveToColorParams value =
  sendMessage mtrColorControlClusterMoveToColorParams setOptionsMaskSelector (toNSNumber value)

-- | @- optionsOverride@
optionsOverride :: IsMTRColorControlClusterMoveToColorParams mtrColorControlClusterMoveToColorParams => mtrColorControlClusterMoveToColorParams -> IO (Id NSNumber)
optionsOverride mtrColorControlClusterMoveToColorParams =
  sendMessage mtrColorControlClusterMoveToColorParams optionsOverrideSelector

-- | @- setOptionsOverride:@
setOptionsOverride :: (IsMTRColorControlClusterMoveToColorParams mtrColorControlClusterMoveToColorParams, IsNSNumber value) => mtrColorControlClusterMoveToColorParams -> value -> IO ()
setOptionsOverride mtrColorControlClusterMoveToColorParams value =
  sendMessage mtrColorControlClusterMoveToColorParams setOptionsOverrideSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRColorControlClusterMoveToColorParams mtrColorControlClusterMoveToColorParams => mtrColorControlClusterMoveToColorParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrColorControlClusterMoveToColorParams =
  sendMessage mtrColorControlClusterMoveToColorParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRColorControlClusterMoveToColorParams mtrColorControlClusterMoveToColorParams, IsNSNumber value) => mtrColorControlClusterMoveToColorParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrColorControlClusterMoveToColorParams value =
  sendMessage mtrColorControlClusterMoveToColorParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRColorControlClusterMoveToColorParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @colorX@
colorXSelector :: Selector '[] (Id NSNumber)
colorXSelector = mkSelector "colorX"

-- | @Selector@ for @setColorX:@
setColorXSelector :: Selector '[Id NSNumber] ()
setColorXSelector = mkSelector "setColorX:"

-- | @Selector@ for @colorY@
colorYSelector :: Selector '[] (Id NSNumber)
colorYSelector = mkSelector "colorY"

-- | @Selector@ for @setColorY:@
setColorYSelector :: Selector '[Id NSNumber] ()
setColorYSelector = mkSelector "setColorY:"

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

