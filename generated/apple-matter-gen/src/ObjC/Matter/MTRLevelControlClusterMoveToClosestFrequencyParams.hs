{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRLevelControlClusterMoveToClosestFrequencyParams@.
module ObjC.Matter.MTRLevelControlClusterMoveToClosestFrequencyParams
  ( MTRLevelControlClusterMoveToClosestFrequencyParams
  , IsMTRLevelControlClusterMoveToClosestFrequencyParams(..)
  , init_
  , copyWithZone
  , frequency
  , setFrequency
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , frequencySelector
  , initSelector
  , setFrequencySelector
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
init_ :: IsMTRLevelControlClusterMoveToClosestFrequencyParams mtrLevelControlClusterMoveToClosestFrequencyParams => mtrLevelControlClusterMoveToClosestFrequencyParams -> IO (Id MTRLevelControlClusterMoveToClosestFrequencyParams)
init_ mtrLevelControlClusterMoveToClosestFrequencyParams =
  sendOwnedMessage mtrLevelControlClusterMoveToClosestFrequencyParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRLevelControlClusterMoveToClosestFrequencyParams mtrLevelControlClusterMoveToClosestFrequencyParams => mtrLevelControlClusterMoveToClosestFrequencyParams -> Ptr () -> IO RawId
copyWithZone mtrLevelControlClusterMoveToClosestFrequencyParams zone =
  sendOwnedMessage mtrLevelControlClusterMoveToClosestFrequencyParams copyWithZoneSelector zone

-- | @- frequency@
frequency :: IsMTRLevelControlClusterMoveToClosestFrequencyParams mtrLevelControlClusterMoveToClosestFrequencyParams => mtrLevelControlClusterMoveToClosestFrequencyParams -> IO (Id NSNumber)
frequency mtrLevelControlClusterMoveToClosestFrequencyParams =
  sendMessage mtrLevelControlClusterMoveToClosestFrequencyParams frequencySelector

-- | @- setFrequency:@
setFrequency :: (IsMTRLevelControlClusterMoveToClosestFrequencyParams mtrLevelControlClusterMoveToClosestFrequencyParams, IsNSNumber value) => mtrLevelControlClusterMoveToClosestFrequencyParams -> value -> IO ()
setFrequency mtrLevelControlClusterMoveToClosestFrequencyParams value =
  sendMessage mtrLevelControlClusterMoveToClosestFrequencyParams setFrequencySelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRLevelControlClusterMoveToClosestFrequencyParams mtrLevelControlClusterMoveToClosestFrequencyParams => mtrLevelControlClusterMoveToClosestFrequencyParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrLevelControlClusterMoveToClosestFrequencyParams =
  sendMessage mtrLevelControlClusterMoveToClosestFrequencyParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRLevelControlClusterMoveToClosestFrequencyParams mtrLevelControlClusterMoveToClosestFrequencyParams, IsNSNumber value) => mtrLevelControlClusterMoveToClosestFrequencyParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrLevelControlClusterMoveToClosestFrequencyParams value =
  sendMessage mtrLevelControlClusterMoveToClosestFrequencyParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRLevelControlClusterMoveToClosestFrequencyParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @frequency@
frequencySelector :: Selector '[] (Id NSNumber)
frequencySelector = mkSelector "frequency"

-- | @Selector@ for @setFrequency:@
setFrequencySelector :: Selector '[Id NSNumber] ()
setFrequencySelector = mkSelector "setFrequency:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

