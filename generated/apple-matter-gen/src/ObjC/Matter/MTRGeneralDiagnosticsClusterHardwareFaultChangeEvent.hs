{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRGeneralDiagnosticsClusterHardwareFaultChangeEvent@.
module ObjC.Matter.MTRGeneralDiagnosticsClusterHardwareFaultChangeEvent
  ( MTRGeneralDiagnosticsClusterHardwareFaultChangeEvent
  , IsMTRGeneralDiagnosticsClusterHardwareFaultChangeEvent(..)
  , init_
  , copyWithZone
  , current
  , setCurrent
  , previous
  , setPrevious
  , copyWithZoneSelector
  , currentSelector
  , initSelector
  , previousSelector
  , setCurrentSelector
  , setPreviousSelector


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
init_ :: IsMTRGeneralDiagnosticsClusterHardwareFaultChangeEvent mtrGeneralDiagnosticsClusterHardwareFaultChangeEvent => mtrGeneralDiagnosticsClusterHardwareFaultChangeEvent -> IO (Id MTRGeneralDiagnosticsClusterHardwareFaultChangeEvent)
init_ mtrGeneralDiagnosticsClusterHardwareFaultChangeEvent =
  sendOwnedMessage mtrGeneralDiagnosticsClusterHardwareFaultChangeEvent initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRGeneralDiagnosticsClusterHardwareFaultChangeEvent mtrGeneralDiagnosticsClusterHardwareFaultChangeEvent => mtrGeneralDiagnosticsClusterHardwareFaultChangeEvent -> Ptr () -> IO RawId
copyWithZone mtrGeneralDiagnosticsClusterHardwareFaultChangeEvent zone =
  sendOwnedMessage mtrGeneralDiagnosticsClusterHardwareFaultChangeEvent copyWithZoneSelector zone

-- | @- current@
current :: IsMTRGeneralDiagnosticsClusterHardwareFaultChangeEvent mtrGeneralDiagnosticsClusterHardwareFaultChangeEvent => mtrGeneralDiagnosticsClusterHardwareFaultChangeEvent -> IO (Id NSArray)
current mtrGeneralDiagnosticsClusterHardwareFaultChangeEvent =
  sendMessage mtrGeneralDiagnosticsClusterHardwareFaultChangeEvent currentSelector

-- | @- setCurrent:@
setCurrent :: (IsMTRGeneralDiagnosticsClusterHardwareFaultChangeEvent mtrGeneralDiagnosticsClusterHardwareFaultChangeEvent, IsNSArray value) => mtrGeneralDiagnosticsClusterHardwareFaultChangeEvent -> value -> IO ()
setCurrent mtrGeneralDiagnosticsClusterHardwareFaultChangeEvent value =
  sendMessage mtrGeneralDiagnosticsClusterHardwareFaultChangeEvent setCurrentSelector (toNSArray value)

-- | @- previous@
previous :: IsMTRGeneralDiagnosticsClusterHardwareFaultChangeEvent mtrGeneralDiagnosticsClusterHardwareFaultChangeEvent => mtrGeneralDiagnosticsClusterHardwareFaultChangeEvent -> IO (Id NSArray)
previous mtrGeneralDiagnosticsClusterHardwareFaultChangeEvent =
  sendMessage mtrGeneralDiagnosticsClusterHardwareFaultChangeEvent previousSelector

-- | @- setPrevious:@
setPrevious :: (IsMTRGeneralDiagnosticsClusterHardwareFaultChangeEvent mtrGeneralDiagnosticsClusterHardwareFaultChangeEvent, IsNSArray value) => mtrGeneralDiagnosticsClusterHardwareFaultChangeEvent -> value -> IO ()
setPrevious mtrGeneralDiagnosticsClusterHardwareFaultChangeEvent value =
  sendMessage mtrGeneralDiagnosticsClusterHardwareFaultChangeEvent setPreviousSelector (toNSArray value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRGeneralDiagnosticsClusterHardwareFaultChangeEvent)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @current@
currentSelector :: Selector '[] (Id NSArray)
currentSelector = mkSelector "current"

-- | @Selector@ for @setCurrent:@
setCurrentSelector :: Selector '[Id NSArray] ()
setCurrentSelector = mkSelector "setCurrent:"

-- | @Selector@ for @previous@
previousSelector :: Selector '[] (Id NSArray)
previousSelector = mkSelector "previous"

-- | @Selector@ for @setPrevious:@
setPreviousSelector :: Selector '[Id NSArray] ()
setPreviousSelector = mkSelector "setPrevious:"

