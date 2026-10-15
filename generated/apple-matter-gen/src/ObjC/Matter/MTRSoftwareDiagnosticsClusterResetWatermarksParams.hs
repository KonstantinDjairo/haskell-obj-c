{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRSoftwareDiagnosticsClusterResetWatermarksParams@.
module ObjC.Matter.MTRSoftwareDiagnosticsClusterResetWatermarksParams
  ( MTRSoftwareDiagnosticsClusterResetWatermarksParams
  , IsMTRSoftwareDiagnosticsClusterResetWatermarksParams(..)
  , init_
  , copyWithZone
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , initSelector
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
init_ :: IsMTRSoftwareDiagnosticsClusterResetWatermarksParams mtrSoftwareDiagnosticsClusterResetWatermarksParams => mtrSoftwareDiagnosticsClusterResetWatermarksParams -> IO (Id MTRSoftwareDiagnosticsClusterResetWatermarksParams)
init_ mtrSoftwareDiagnosticsClusterResetWatermarksParams =
  sendOwnedMessage mtrSoftwareDiagnosticsClusterResetWatermarksParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRSoftwareDiagnosticsClusterResetWatermarksParams mtrSoftwareDiagnosticsClusterResetWatermarksParams => mtrSoftwareDiagnosticsClusterResetWatermarksParams -> Ptr () -> IO RawId
copyWithZone mtrSoftwareDiagnosticsClusterResetWatermarksParams zone =
  sendOwnedMessage mtrSoftwareDiagnosticsClusterResetWatermarksParams copyWithZoneSelector zone

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRSoftwareDiagnosticsClusterResetWatermarksParams mtrSoftwareDiagnosticsClusterResetWatermarksParams => mtrSoftwareDiagnosticsClusterResetWatermarksParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrSoftwareDiagnosticsClusterResetWatermarksParams =
  sendMessage mtrSoftwareDiagnosticsClusterResetWatermarksParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRSoftwareDiagnosticsClusterResetWatermarksParams mtrSoftwareDiagnosticsClusterResetWatermarksParams, IsNSNumber value) => mtrSoftwareDiagnosticsClusterResetWatermarksParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrSoftwareDiagnosticsClusterResetWatermarksParams value =
  sendMessage mtrSoftwareDiagnosticsClusterResetWatermarksParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRSoftwareDiagnosticsClusterResetWatermarksParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

