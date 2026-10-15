{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @CLLocationSourceInformation@.
module ObjC.CoreLocation.CLLocationSourceInformation
  ( CLLocationSourceInformation
  , IsCLLocationSourceInformation(..)
  , initWithSoftwareSimulationState_andExternalAccessoryState
  , isSimulatedBySoftware
  , isProducedByAccessory
  , initWithSoftwareSimulationState_andExternalAccessoryStateSelector
  , isProducedByAccessorySelector
  , isSimulatedBySoftwareSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.CoreLocation.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- initWithSoftwareSimulationState:andExternalAccessoryState:@
initWithSoftwareSimulationState_andExternalAccessoryState :: IsCLLocationSourceInformation clLocationSourceInformation => clLocationSourceInformation -> Bool -> Bool -> IO (Id CLLocationSourceInformation)
initWithSoftwareSimulationState_andExternalAccessoryState clLocationSourceInformation isSoftware isAccessory =
  sendOwnedMessage clLocationSourceInformation initWithSoftwareSimulationState_andExternalAccessoryStateSelector isSoftware isAccessory

-- | @- isSimulatedBySoftware@
isSimulatedBySoftware :: IsCLLocationSourceInformation clLocationSourceInformation => clLocationSourceInformation -> IO Bool
isSimulatedBySoftware clLocationSourceInformation =
  sendMessage clLocationSourceInformation isSimulatedBySoftwareSelector

-- | @- isProducedByAccessory@
isProducedByAccessory :: IsCLLocationSourceInformation clLocationSourceInformation => clLocationSourceInformation -> IO Bool
isProducedByAccessory clLocationSourceInformation =
  sendMessage clLocationSourceInformation isProducedByAccessorySelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithSoftwareSimulationState:andExternalAccessoryState:@
initWithSoftwareSimulationState_andExternalAccessoryStateSelector :: Selector '[Bool, Bool] (Id CLLocationSourceInformation)
initWithSoftwareSimulationState_andExternalAccessoryStateSelector = mkSelector "initWithSoftwareSimulationState:andExternalAccessoryState:"

-- | @Selector@ for @isSimulatedBySoftware@
isSimulatedBySoftwareSelector :: Selector '[] Bool
isSimulatedBySoftwareSelector = mkSelector "isSimulatedBySoftware"

-- | @Selector@ for @isProducedByAccessory@
isProducedByAccessorySelector :: Selector '[] Bool
isProducedByAccessorySelector = mkSelector "isProducedByAccessory"

