{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @ASIdentifierManager@.
module ObjC.AdSupport.ASIdentifierManager
  ( ASIdentifierManager
  , IsASIdentifierManager(..)
  , sharedManager
  , clearAdvertisingIdentifier
  , advertisingIdentifier
  , advertisingTrackingEnabled
  , advertisingIdentifierSelector
  , advertisingTrackingEnabledSelector
  , clearAdvertisingIdentifierSelector
  , sharedManagerSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AdSupport.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @+ sharedManager@
sharedManager :: IO (Id ASIdentifierManager)
sharedManager  =
  do
    cls' <- getRequiredClass "ASIdentifierManager"
    sendClassMessage cls' sharedManagerSelector

-- | @- clearAdvertisingIdentifier@
clearAdvertisingIdentifier :: IsASIdentifierManager asIdentifierManager => asIdentifierManager -> IO ()
clearAdvertisingIdentifier asIdentifierManager =
  sendMessage asIdentifierManager clearAdvertisingIdentifierSelector

-- | @- advertisingIdentifier@
advertisingIdentifier :: IsASIdentifierManager asIdentifierManager => asIdentifierManager -> IO (Id NSUUID)
advertisingIdentifier asIdentifierManager =
  sendMessage asIdentifierManager advertisingIdentifierSelector

-- | @- advertisingTrackingEnabled@
advertisingTrackingEnabled :: IsASIdentifierManager asIdentifierManager => asIdentifierManager -> IO Bool
advertisingTrackingEnabled asIdentifierManager =
  sendMessage asIdentifierManager advertisingTrackingEnabledSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @sharedManager@
sharedManagerSelector :: Selector '[] (Id ASIdentifierManager)
sharedManagerSelector = mkSelector "sharedManager"

-- | @Selector@ for @clearAdvertisingIdentifier@
clearAdvertisingIdentifierSelector :: Selector '[] ()
clearAdvertisingIdentifierSelector = mkSelector "clearAdvertisingIdentifier"

-- | @Selector@ for @advertisingIdentifier@
advertisingIdentifierSelector :: Selector '[] (Id NSUUID)
advertisingIdentifierSelector = mkSelector "advertisingIdentifier"

-- | @Selector@ for @advertisingTrackingEnabled@
advertisingTrackingEnabledSelector :: Selector '[] Bool
advertisingTrackingEnabledSelector = mkSelector "advertisingTrackingEnabled"

