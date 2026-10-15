{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @CLBeaconIdentityConstraint@.
module ObjC.CoreLocation.CLBeaconIdentityConstraint
  ( CLBeaconIdentityConstraint
  , IsCLBeaconIdentityConstraint(..)
  , initWithUUID
  , initWithUUID_major
  , initWithUUID_major_minor
  , uuid
  , major
  , minor
  , initWithUUIDSelector
  , initWithUUID_majorSelector
  , initWithUUID_major_minorSelector
  , majorSelector
  , minorSelector
  , uuidSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.CoreLocation.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- initWithUUID:@
initWithUUID :: (IsCLBeaconIdentityConstraint clBeaconIdentityConstraint, IsNSUUID uuid) => clBeaconIdentityConstraint -> uuid -> IO (Id CLBeaconIdentityConstraint)
initWithUUID clBeaconIdentityConstraint uuid =
  sendOwnedMessage clBeaconIdentityConstraint initWithUUIDSelector (toNSUUID uuid)

-- | @- initWithUUID:major:@
initWithUUID_major :: (IsCLBeaconIdentityConstraint clBeaconIdentityConstraint, IsNSUUID uuid) => clBeaconIdentityConstraint -> uuid -> CUShort -> IO (Id CLBeaconIdentityConstraint)
initWithUUID_major clBeaconIdentityConstraint uuid major =
  sendOwnedMessage clBeaconIdentityConstraint initWithUUID_majorSelector (toNSUUID uuid) major

-- | @- initWithUUID:major:minor:@
initWithUUID_major_minor :: (IsCLBeaconIdentityConstraint clBeaconIdentityConstraint, IsNSUUID uuid) => clBeaconIdentityConstraint -> uuid -> CUShort -> CUShort -> IO (Id CLBeaconIdentityConstraint)
initWithUUID_major_minor clBeaconIdentityConstraint uuid major minor =
  sendOwnedMessage clBeaconIdentityConstraint initWithUUID_major_minorSelector (toNSUUID uuid) major minor

-- | @- UUID@
uuid :: IsCLBeaconIdentityConstraint clBeaconIdentityConstraint => clBeaconIdentityConstraint -> IO (Id NSUUID)
uuid clBeaconIdentityConstraint =
  sendMessage clBeaconIdentityConstraint uuidSelector

-- | @- major@
major :: IsCLBeaconIdentityConstraint clBeaconIdentityConstraint => clBeaconIdentityConstraint -> IO (Id NSNumber)
major clBeaconIdentityConstraint =
  sendMessage clBeaconIdentityConstraint majorSelector

-- | @- minor@
minor :: IsCLBeaconIdentityConstraint clBeaconIdentityConstraint => clBeaconIdentityConstraint -> IO (Id NSNumber)
minor clBeaconIdentityConstraint =
  sendMessage clBeaconIdentityConstraint minorSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithUUID:@
initWithUUIDSelector :: Selector '[Id NSUUID] (Id CLBeaconIdentityConstraint)
initWithUUIDSelector = mkSelector "initWithUUID:"

-- | @Selector@ for @initWithUUID:major:@
initWithUUID_majorSelector :: Selector '[Id NSUUID, CUShort] (Id CLBeaconIdentityConstraint)
initWithUUID_majorSelector = mkSelector "initWithUUID:major:"

-- | @Selector@ for @initWithUUID:major:minor:@
initWithUUID_major_minorSelector :: Selector '[Id NSUUID, CUShort, CUShort] (Id CLBeaconIdentityConstraint)
initWithUUID_major_minorSelector = mkSelector "initWithUUID:major:minor:"

-- | @Selector@ for @UUID@
uuidSelector :: Selector '[] (Id NSUUID)
uuidSelector = mkSelector "UUID"

-- | @Selector@ for @major@
majorSelector :: Selector '[] (Id NSNumber)
majorSelector = mkSelector "major"

-- | @Selector@ for @minor@
minorSelector :: Selector '[] (Id NSNumber)
minorSelector = mkSelector "minor"

