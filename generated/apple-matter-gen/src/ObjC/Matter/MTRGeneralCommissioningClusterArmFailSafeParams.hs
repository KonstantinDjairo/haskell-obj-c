{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRGeneralCommissioningClusterArmFailSafeParams@.
module ObjC.Matter.MTRGeneralCommissioningClusterArmFailSafeParams
  ( MTRGeneralCommissioningClusterArmFailSafeParams
  , IsMTRGeneralCommissioningClusterArmFailSafeParams(..)
  , init_
  , copyWithZone
  , expiryLengthSeconds
  , setExpiryLengthSeconds
  , breadcrumb
  , setBreadcrumb
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , breadcrumbSelector
  , copyWithZoneSelector
  , expiryLengthSecondsSelector
  , initSelector
  , setBreadcrumbSelector
  , setExpiryLengthSecondsSelector
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
init_ :: IsMTRGeneralCommissioningClusterArmFailSafeParams mtrGeneralCommissioningClusterArmFailSafeParams => mtrGeneralCommissioningClusterArmFailSafeParams -> IO (Id MTRGeneralCommissioningClusterArmFailSafeParams)
init_ mtrGeneralCommissioningClusterArmFailSafeParams =
  sendOwnedMessage mtrGeneralCommissioningClusterArmFailSafeParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRGeneralCommissioningClusterArmFailSafeParams mtrGeneralCommissioningClusterArmFailSafeParams => mtrGeneralCommissioningClusterArmFailSafeParams -> Ptr () -> IO RawId
copyWithZone mtrGeneralCommissioningClusterArmFailSafeParams zone =
  sendOwnedMessage mtrGeneralCommissioningClusterArmFailSafeParams copyWithZoneSelector zone

-- | @- expiryLengthSeconds@
expiryLengthSeconds :: IsMTRGeneralCommissioningClusterArmFailSafeParams mtrGeneralCommissioningClusterArmFailSafeParams => mtrGeneralCommissioningClusterArmFailSafeParams -> IO (Id NSNumber)
expiryLengthSeconds mtrGeneralCommissioningClusterArmFailSafeParams =
  sendMessage mtrGeneralCommissioningClusterArmFailSafeParams expiryLengthSecondsSelector

-- | @- setExpiryLengthSeconds:@
setExpiryLengthSeconds :: (IsMTRGeneralCommissioningClusterArmFailSafeParams mtrGeneralCommissioningClusterArmFailSafeParams, IsNSNumber value) => mtrGeneralCommissioningClusterArmFailSafeParams -> value -> IO ()
setExpiryLengthSeconds mtrGeneralCommissioningClusterArmFailSafeParams value =
  sendMessage mtrGeneralCommissioningClusterArmFailSafeParams setExpiryLengthSecondsSelector (toNSNumber value)

-- | @- breadcrumb@
breadcrumb :: IsMTRGeneralCommissioningClusterArmFailSafeParams mtrGeneralCommissioningClusterArmFailSafeParams => mtrGeneralCommissioningClusterArmFailSafeParams -> IO (Id NSNumber)
breadcrumb mtrGeneralCommissioningClusterArmFailSafeParams =
  sendMessage mtrGeneralCommissioningClusterArmFailSafeParams breadcrumbSelector

-- | @- setBreadcrumb:@
setBreadcrumb :: (IsMTRGeneralCommissioningClusterArmFailSafeParams mtrGeneralCommissioningClusterArmFailSafeParams, IsNSNumber value) => mtrGeneralCommissioningClusterArmFailSafeParams -> value -> IO ()
setBreadcrumb mtrGeneralCommissioningClusterArmFailSafeParams value =
  sendMessage mtrGeneralCommissioningClusterArmFailSafeParams setBreadcrumbSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRGeneralCommissioningClusterArmFailSafeParams mtrGeneralCommissioningClusterArmFailSafeParams => mtrGeneralCommissioningClusterArmFailSafeParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrGeneralCommissioningClusterArmFailSafeParams =
  sendMessage mtrGeneralCommissioningClusterArmFailSafeParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRGeneralCommissioningClusterArmFailSafeParams mtrGeneralCommissioningClusterArmFailSafeParams, IsNSNumber value) => mtrGeneralCommissioningClusterArmFailSafeParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrGeneralCommissioningClusterArmFailSafeParams value =
  sendMessage mtrGeneralCommissioningClusterArmFailSafeParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRGeneralCommissioningClusterArmFailSafeParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @expiryLengthSeconds@
expiryLengthSecondsSelector :: Selector '[] (Id NSNumber)
expiryLengthSecondsSelector = mkSelector "expiryLengthSeconds"

-- | @Selector@ for @setExpiryLengthSeconds:@
setExpiryLengthSecondsSelector :: Selector '[Id NSNumber] ()
setExpiryLengthSecondsSelector = mkSelector "setExpiryLengthSeconds:"

-- | @Selector@ for @breadcrumb@
breadcrumbSelector :: Selector '[] (Id NSNumber)
breadcrumbSelector = mkSelector "breadcrumb"

-- | @Selector@ for @setBreadcrumb:@
setBreadcrumbSelector :: Selector '[Id NSNumber] ()
setBreadcrumbSelector = mkSelector "setBreadcrumb:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

