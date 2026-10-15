{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRFaultInjectionClusterFailRandomlyAtFaultParams@.
module ObjC.Matter.MTRFaultInjectionClusterFailRandomlyAtFaultParams
  ( MTRFaultInjectionClusterFailRandomlyAtFaultParams
  , IsMTRFaultInjectionClusterFailRandomlyAtFaultParams(..)
  , init_
  , copyWithZone
  , type_
  , setType
  , id_
  , setId
  , percentage
  , setPercentage
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , idSelector
  , initSelector
  , percentageSelector
  , setIdSelector
  , setPercentageSelector
  , setTimedInvokeTimeoutMsSelector
  , setTypeSelector
  , timedInvokeTimeoutMsSelector
  , typeSelector


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
init_ :: IsMTRFaultInjectionClusterFailRandomlyAtFaultParams mtrFaultInjectionClusterFailRandomlyAtFaultParams => mtrFaultInjectionClusterFailRandomlyAtFaultParams -> IO (Id MTRFaultInjectionClusterFailRandomlyAtFaultParams)
init_ mtrFaultInjectionClusterFailRandomlyAtFaultParams =
  sendOwnedMessage mtrFaultInjectionClusterFailRandomlyAtFaultParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRFaultInjectionClusterFailRandomlyAtFaultParams mtrFaultInjectionClusterFailRandomlyAtFaultParams => mtrFaultInjectionClusterFailRandomlyAtFaultParams -> Ptr () -> IO RawId
copyWithZone mtrFaultInjectionClusterFailRandomlyAtFaultParams zone =
  sendOwnedMessage mtrFaultInjectionClusterFailRandomlyAtFaultParams copyWithZoneSelector zone

-- | @- type@
type_ :: IsMTRFaultInjectionClusterFailRandomlyAtFaultParams mtrFaultInjectionClusterFailRandomlyAtFaultParams => mtrFaultInjectionClusterFailRandomlyAtFaultParams -> IO (Id NSNumber)
type_ mtrFaultInjectionClusterFailRandomlyAtFaultParams =
  sendMessage mtrFaultInjectionClusterFailRandomlyAtFaultParams typeSelector

-- | @- setType:@
setType :: (IsMTRFaultInjectionClusterFailRandomlyAtFaultParams mtrFaultInjectionClusterFailRandomlyAtFaultParams, IsNSNumber value) => mtrFaultInjectionClusterFailRandomlyAtFaultParams -> value -> IO ()
setType mtrFaultInjectionClusterFailRandomlyAtFaultParams value =
  sendMessage mtrFaultInjectionClusterFailRandomlyAtFaultParams setTypeSelector (toNSNumber value)

-- | @- id@
id_ :: IsMTRFaultInjectionClusterFailRandomlyAtFaultParams mtrFaultInjectionClusterFailRandomlyAtFaultParams => mtrFaultInjectionClusterFailRandomlyAtFaultParams -> IO (Id NSNumber)
id_ mtrFaultInjectionClusterFailRandomlyAtFaultParams =
  sendMessage mtrFaultInjectionClusterFailRandomlyAtFaultParams idSelector

-- | @- setId:@
setId :: (IsMTRFaultInjectionClusterFailRandomlyAtFaultParams mtrFaultInjectionClusterFailRandomlyAtFaultParams, IsNSNumber value) => mtrFaultInjectionClusterFailRandomlyAtFaultParams -> value -> IO ()
setId mtrFaultInjectionClusterFailRandomlyAtFaultParams value =
  sendMessage mtrFaultInjectionClusterFailRandomlyAtFaultParams setIdSelector (toNSNumber value)

-- | @- percentage@
percentage :: IsMTRFaultInjectionClusterFailRandomlyAtFaultParams mtrFaultInjectionClusterFailRandomlyAtFaultParams => mtrFaultInjectionClusterFailRandomlyAtFaultParams -> IO (Id NSNumber)
percentage mtrFaultInjectionClusterFailRandomlyAtFaultParams =
  sendMessage mtrFaultInjectionClusterFailRandomlyAtFaultParams percentageSelector

-- | @- setPercentage:@
setPercentage :: (IsMTRFaultInjectionClusterFailRandomlyAtFaultParams mtrFaultInjectionClusterFailRandomlyAtFaultParams, IsNSNumber value) => mtrFaultInjectionClusterFailRandomlyAtFaultParams -> value -> IO ()
setPercentage mtrFaultInjectionClusterFailRandomlyAtFaultParams value =
  sendMessage mtrFaultInjectionClusterFailRandomlyAtFaultParams setPercentageSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRFaultInjectionClusterFailRandomlyAtFaultParams mtrFaultInjectionClusterFailRandomlyAtFaultParams => mtrFaultInjectionClusterFailRandomlyAtFaultParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrFaultInjectionClusterFailRandomlyAtFaultParams =
  sendMessage mtrFaultInjectionClusterFailRandomlyAtFaultParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRFaultInjectionClusterFailRandomlyAtFaultParams mtrFaultInjectionClusterFailRandomlyAtFaultParams, IsNSNumber value) => mtrFaultInjectionClusterFailRandomlyAtFaultParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrFaultInjectionClusterFailRandomlyAtFaultParams value =
  sendMessage mtrFaultInjectionClusterFailRandomlyAtFaultParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRFaultInjectionClusterFailRandomlyAtFaultParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @type@
typeSelector :: Selector '[] (Id NSNumber)
typeSelector = mkSelector "type"

-- | @Selector@ for @setType:@
setTypeSelector :: Selector '[Id NSNumber] ()
setTypeSelector = mkSelector "setType:"

-- | @Selector@ for @id@
idSelector :: Selector '[] (Id NSNumber)
idSelector = mkSelector "id"

-- | @Selector@ for @setId:@
setIdSelector :: Selector '[Id NSNumber] ()
setIdSelector = mkSelector "setId:"

-- | @Selector@ for @percentage@
percentageSelector :: Selector '[] (Id NSNumber)
percentageSelector = mkSelector "percentage"

-- | @Selector@ for @setPercentage:@
setPercentageSelector :: Selector '[Id NSNumber] ()
setPercentageSelector = mkSelector "setPercentage:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

