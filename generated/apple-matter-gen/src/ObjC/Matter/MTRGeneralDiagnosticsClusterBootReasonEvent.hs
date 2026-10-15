{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRGeneralDiagnosticsClusterBootReasonEvent@.
module ObjC.Matter.MTRGeneralDiagnosticsClusterBootReasonEvent
  ( MTRGeneralDiagnosticsClusterBootReasonEvent
  , IsMTRGeneralDiagnosticsClusterBootReasonEvent(..)
  , init_
  , copyWithZone
  , bootReason
  , setBootReason
  , bootReasonSelector
  , copyWithZoneSelector
  , initSelector
  , setBootReasonSelector


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
init_ :: IsMTRGeneralDiagnosticsClusterBootReasonEvent mtrGeneralDiagnosticsClusterBootReasonEvent => mtrGeneralDiagnosticsClusterBootReasonEvent -> IO (Id MTRGeneralDiagnosticsClusterBootReasonEvent)
init_ mtrGeneralDiagnosticsClusterBootReasonEvent =
  sendOwnedMessage mtrGeneralDiagnosticsClusterBootReasonEvent initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRGeneralDiagnosticsClusterBootReasonEvent mtrGeneralDiagnosticsClusterBootReasonEvent => mtrGeneralDiagnosticsClusterBootReasonEvent -> Ptr () -> IO RawId
copyWithZone mtrGeneralDiagnosticsClusterBootReasonEvent zone =
  sendOwnedMessage mtrGeneralDiagnosticsClusterBootReasonEvent copyWithZoneSelector zone

-- | @- bootReason@
bootReason :: IsMTRGeneralDiagnosticsClusterBootReasonEvent mtrGeneralDiagnosticsClusterBootReasonEvent => mtrGeneralDiagnosticsClusterBootReasonEvent -> IO (Id NSNumber)
bootReason mtrGeneralDiagnosticsClusterBootReasonEvent =
  sendMessage mtrGeneralDiagnosticsClusterBootReasonEvent bootReasonSelector

-- | @- setBootReason:@
setBootReason :: (IsMTRGeneralDiagnosticsClusterBootReasonEvent mtrGeneralDiagnosticsClusterBootReasonEvent, IsNSNumber value) => mtrGeneralDiagnosticsClusterBootReasonEvent -> value -> IO ()
setBootReason mtrGeneralDiagnosticsClusterBootReasonEvent value =
  sendMessage mtrGeneralDiagnosticsClusterBootReasonEvent setBootReasonSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRGeneralDiagnosticsClusterBootReasonEvent)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @bootReason@
bootReasonSelector :: Selector '[] (Id NSNumber)
bootReasonSelector = mkSelector "bootReason"

-- | @Selector@ for @setBootReason:@
setBootReasonSelector :: Selector '[Id NSNumber] ()
setBootReasonSelector = mkSelector "setBootReason:"

