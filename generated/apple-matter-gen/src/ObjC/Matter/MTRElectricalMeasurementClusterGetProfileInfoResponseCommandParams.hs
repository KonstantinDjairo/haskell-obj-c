{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams@.
module ObjC.Matter.MTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams
  ( MTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams
  , IsMTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams(..)
  , init_
  , copyWithZone
  , profileCount
  , setProfileCount
  , profileIntervalPeriod
  , setProfileIntervalPeriod
  , maxNumberOfIntervals
  , setMaxNumberOfIntervals
  , listOfAttributes
  , setListOfAttributes
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , initSelector
  , listOfAttributesSelector
  , maxNumberOfIntervalsSelector
  , profileCountSelector
  , profileIntervalPeriodSelector
  , setListOfAttributesSelector
  , setMaxNumberOfIntervalsSelector
  , setProfileCountSelector
  , setProfileIntervalPeriodSelector
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
init_ :: IsMTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams mtrElectricalMeasurementClusterGetProfileInfoResponseCommandParams => mtrElectricalMeasurementClusterGetProfileInfoResponseCommandParams -> IO (Id MTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams)
init_ mtrElectricalMeasurementClusterGetProfileInfoResponseCommandParams =
  sendOwnedMessage mtrElectricalMeasurementClusterGetProfileInfoResponseCommandParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams mtrElectricalMeasurementClusterGetProfileInfoResponseCommandParams => mtrElectricalMeasurementClusterGetProfileInfoResponseCommandParams -> Ptr () -> IO RawId
copyWithZone mtrElectricalMeasurementClusterGetProfileInfoResponseCommandParams zone =
  sendOwnedMessage mtrElectricalMeasurementClusterGetProfileInfoResponseCommandParams copyWithZoneSelector zone

-- | @- profileCount@
profileCount :: IsMTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams mtrElectricalMeasurementClusterGetProfileInfoResponseCommandParams => mtrElectricalMeasurementClusterGetProfileInfoResponseCommandParams -> IO (Id NSNumber)
profileCount mtrElectricalMeasurementClusterGetProfileInfoResponseCommandParams =
  sendMessage mtrElectricalMeasurementClusterGetProfileInfoResponseCommandParams profileCountSelector

-- | @- setProfileCount:@
setProfileCount :: (IsMTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams mtrElectricalMeasurementClusterGetProfileInfoResponseCommandParams, IsNSNumber value) => mtrElectricalMeasurementClusterGetProfileInfoResponseCommandParams -> value -> IO ()
setProfileCount mtrElectricalMeasurementClusterGetProfileInfoResponseCommandParams value =
  sendMessage mtrElectricalMeasurementClusterGetProfileInfoResponseCommandParams setProfileCountSelector (toNSNumber value)

-- | @- profileIntervalPeriod@
profileIntervalPeriod :: IsMTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams mtrElectricalMeasurementClusterGetProfileInfoResponseCommandParams => mtrElectricalMeasurementClusterGetProfileInfoResponseCommandParams -> IO (Id NSNumber)
profileIntervalPeriod mtrElectricalMeasurementClusterGetProfileInfoResponseCommandParams =
  sendMessage mtrElectricalMeasurementClusterGetProfileInfoResponseCommandParams profileIntervalPeriodSelector

-- | @- setProfileIntervalPeriod:@
setProfileIntervalPeriod :: (IsMTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams mtrElectricalMeasurementClusterGetProfileInfoResponseCommandParams, IsNSNumber value) => mtrElectricalMeasurementClusterGetProfileInfoResponseCommandParams -> value -> IO ()
setProfileIntervalPeriod mtrElectricalMeasurementClusterGetProfileInfoResponseCommandParams value =
  sendMessage mtrElectricalMeasurementClusterGetProfileInfoResponseCommandParams setProfileIntervalPeriodSelector (toNSNumber value)

-- | @- maxNumberOfIntervals@
maxNumberOfIntervals :: IsMTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams mtrElectricalMeasurementClusterGetProfileInfoResponseCommandParams => mtrElectricalMeasurementClusterGetProfileInfoResponseCommandParams -> IO (Id NSNumber)
maxNumberOfIntervals mtrElectricalMeasurementClusterGetProfileInfoResponseCommandParams =
  sendMessage mtrElectricalMeasurementClusterGetProfileInfoResponseCommandParams maxNumberOfIntervalsSelector

-- | @- setMaxNumberOfIntervals:@
setMaxNumberOfIntervals :: (IsMTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams mtrElectricalMeasurementClusterGetProfileInfoResponseCommandParams, IsNSNumber value) => mtrElectricalMeasurementClusterGetProfileInfoResponseCommandParams -> value -> IO ()
setMaxNumberOfIntervals mtrElectricalMeasurementClusterGetProfileInfoResponseCommandParams value =
  sendMessage mtrElectricalMeasurementClusterGetProfileInfoResponseCommandParams setMaxNumberOfIntervalsSelector (toNSNumber value)

-- | @- listOfAttributes@
listOfAttributes :: IsMTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams mtrElectricalMeasurementClusterGetProfileInfoResponseCommandParams => mtrElectricalMeasurementClusterGetProfileInfoResponseCommandParams -> IO (Id NSArray)
listOfAttributes mtrElectricalMeasurementClusterGetProfileInfoResponseCommandParams =
  sendMessage mtrElectricalMeasurementClusterGetProfileInfoResponseCommandParams listOfAttributesSelector

-- | @- setListOfAttributes:@
setListOfAttributes :: (IsMTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams mtrElectricalMeasurementClusterGetProfileInfoResponseCommandParams, IsNSArray value) => mtrElectricalMeasurementClusterGetProfileInfoResponseCommandParams -> value -> IO ()
setListOfAttributes mtrElectricalMeasurementClusterGetProfileInfoResponseCommandParams value =
  sendMessage mtrElectricalMeasurementClusterGetProfileInfoResponseCommandParams setListOfAttributesSelector (toNSArray value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams mtrElectricalMeasurementClusterGetProfileInfoResponseCommandParams => mtrElectricalMeasurementClusterGetProfileInfoResponseCommandParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrElectricalMeasurementClusterGetProfileInfoResponseCommandParams =
  sendMessage mtrElectricalMeasurementClusterGetProfileInfoResponseCommandParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams mtrElectricalMeasurementClusterGetProfileInfoResponseCommandParams, IsNSNumber value) => mtrElectricalMeasurementClusterGetProfileInfoResponseCommandParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrElectricalMeasurementClusterGetProfileInfoResponseCommandParams value =
  sendMessage mtrElectricalMeasurementClusterGetProfileInfoResponseCommandParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRElectricalMeasurementClusterGetProfileInfoResponseCommandParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @profileCount@
profileCountSelector :: Selector '[] (Id NSNumber)
profileCountSelector = mkSelector "profileCount"

-- | @Selector@ for @setProfileCount:@
setProfileCountSelector :: Selector '[Id NSNumber] ()
setProfileCountSelector = mkSelector "setProfileCount:"

-- | @Selector@ for @profileIntervalPeriod@
profileIntervalPeriodSelector :: Selector '[] (Id NSNumber)
profileIntervalPeriodSelector = mkSelector "profileIntervalPeriod"

-- | @Selector@ for @setProfileIntervalPeriod:@
setProfileIntervalPeriodSelector :: Selector '[Id NSNumber] ()
setProfileIntervalPeriodSelector = mkSelector "setProfileIntervalPeriod:"

-- | @Selector@ for @maxNumberOfIntervals@
maxNumberOfIntervalsSelector :: Selector '[] (Id NSNumber)
maxNumberOfIntervalsSelector = mkSelector "maxNumberOfIntervals"

-- | @Selector@ for @setMaxNumberOfIntervals:@
setMaxNumberOfIntervalsSelector :: Selector '[Id NSNumber] ()
setMaxNumberOfIntervalsSelector = mkSelector "setMaxNumberOfIntervals:"

-- | @Selector@ for @listOfAttributes@
listOfAttributesSelector :: Selector '[] (Id NSArray)
listOfAttributesSelector = mkSelector "listOfAttributes"

-- | @Selector@ for @setListOfAttributes:@
setListOfAttributesSelector :: Selector '[Id NSArray] ()
setListOfAttributesSelector = mkSelector "setListOfAttributes:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

