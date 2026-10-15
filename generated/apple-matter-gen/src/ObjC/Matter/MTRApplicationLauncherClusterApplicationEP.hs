{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRApplicationLauncherClusterApplicationEP@.
module ObjC.Matter.MTRApplicationLauncherClusterApplicationEP
  ( MTRApplicationLauncherClusterApplicationEP
  , IsMTRApplicationLauncherClusterApplicationEP(..)
  , init_
  , copyWithZone
  , application
  , setApplication
  , endpoint
  , setEndpoint
  , applicationSelector
  , copyWithZoneSelector
  , endpointSelector
  , initSelector
  , setApplicationSelector
  , setEndpointSelector


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
init_ :: IsMTRApplicationLauncherClusterApplicationEP mtrApplicationLauncherClusterApplicationEP => mtrApplicationLauncherClusterApplicationEP -> IO (Id MTRApplicationLauncherClusterApplicationEP)
init_ mtrApplicationLauncherClusterApplicationEP =
  sendOwnedMessage mtrApplicationLauncherClusterApplicationEP initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRApplicationLauncherClusterApplicationEP mtrApplicationLauncherClusterApplicationEP => mtrApplicationLauncherClusterApplicationEP -> Ptr () -> IO RawId
copyWithZone mtrApplicationLauncherClusterApplicationEP zone =
  sendOwnedMessage mtrApplicationLauncherClusterApplicationEP copyWithZoneSelector zone

-- | @- application@
application :: IsMTRApplicationLauncherClusterApplicationEP mtrApplicationLauncherClusterApplicationEP => mtrApplicationLauncherClusterApplicationEP -> IO (Id MTRApplicationLauncherClusterApplication)
application mtrApplicationLauncherClusterApplicationEP =
  sendMessage mtrApplicationLauncherClusterApplicationEP applicationSelector

-- | @- setApplication:@
setApplication :: (IsMTRApplicationLauncherClusterApplicationEP mtrApplicationLauncherClusterApplicationEP, IsMTRApplicationLauncherClusterApplication value) => mtrApplicationLauncherClusterApplicationEP -> value -> IO ()
setApplication mtrApplicationLauncherClusterApplicationEP value =
  sendMessage mtrApplicationLauncherClusterApplicationEP setApplicationSelector (toMTRApplicationLauncherClusterApplication value)

-- | @- endpoint@
endpoint :: IsMTRApplicationLauncherClusterApplicationEP mtrApplicationLauncherClusterApplicationEP => mtrApplicationLauncherClusterApplicationEP -> IO (Id NSNumber)
endpoint mtrApplicationLauncherClusterApplicationEP =
  sendMessage mtrApplicationLauncherClusterApplicationEP endpointSelector

-- | @- setEndpoint:@
setEndpoint :: (IsMTRApplicationLauncherClusterApplicationEP mtrApplicationLauncherClusterApplicationEP, IsNSNumber value) => mtrApplicationLauncherClusterApplicationEP -> value -> IO ()
setEndpoint mtrApplicationLauncherClusterApplicationEP value =
  sendMessage mtrApplicationLauncherClusterApplicationEP setEndpointSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRApplicationLauncherClusterApplicationEP)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @application@
applicationSelector :: Selector '[] (Id MTRApplicationLauncherClusterApplication)
applicationSelector = mkSelector "application"

-- | @Selector@ for @setApplication:@
setApplicationSelector :: Selector '[Id MTRApplicationLauncherClusterApplication] ()
setApplicationSelector = mkSelector "setApplication:"

-- | @Selector@ for @endpoint@
endpointSelector :: Selector '[] (Id NSNumber)
endpointSelector = mkSelector "endpoint"

-- | @Selector@ for @setEndpoint:@
setEndpointSelector :: Selector '[Id NSNumber] ()
setEndpointSelector = mkSelector "setEndpoint:"

