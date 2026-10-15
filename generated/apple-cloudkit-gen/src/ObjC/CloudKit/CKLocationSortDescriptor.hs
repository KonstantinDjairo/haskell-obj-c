{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @CKLocationSortDescriptor@.
module ObjC.CloudKit.CKLocationSortDescriptor
  ( CKLocationSortDescriptor
  , IsCKLocationSortDescriptor(..)
  , init_
  , new
  , initWithKey_relativeLocation
  , initWithCoder
  , relativeLocation
  , initSelector
  , initWithCoderSelector
  , initWithKey_relativeLocationSelector
  , newSelector
  , relativeLocationSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.CloudKit.Internal.Classes
import ObjC.CoreLocation.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- init@
init_ :: IsCKLocationSortDescriptor ckLocationSortDescriptor => ckLocationSortDescriptor -> IO (Id CKLocationSortDescriptor)
init_ ckLocationSortDescriptor =
  sendOwnedMessage ckLocationSortDescriptor initSelector

-- | @+ new@
new :: IO (Id CKLocationSortDescriptor)
new  =
  do
    cls' <- getRequiredClass "CKLocationSortDescriptor"
    sendOwnedClassMessage cls' newSelector

-- | @- initWithKey:relativeLocation:@
initWithKey_relativeLocation :: (IsCKLocationSortDescriptor ckLocationSortDescriptor, IsNSString key, IsCLLocation relativeLocation) => ckLocationSortDescriptor -> key -> relativeLocation -> IO (Id CKLocationSortDescriptor)
initWithKey_relativeLocation ckLocationSortDescriptor key relativeLocation =
  sendOwnedMessage ckLocationSortDescriptor initWithKey_relativeLocationSelector (toNSString key) (toCLLocation relativeLocation)

-- | @- initWithCoder:@
initWithCoder :: (IsCKLocationSortDescriptor ckLocationSortDescriptor, IsNSCoder aDecoder) => ckLocationSortDescriptor -> aDecoder -> IO (Id CKLocationSortDescriptor)
initWithCoder ckLocationSortDescriptor aDecoder =
  sendOwnedMessage ckLocationSortDescriptor initWithCoderSelector (toNSCoder aDecoder)

-- | @- relativeLocation@
relativeLocation :: IsCKLocationSortDescriptor ckLocationSortDescriptor => ckLocationSortDescriptor -> IO (Id CLLocation)
relativeLocation ckLocationSortDescriptor =
  sendMessage ckLocationSortDescriptor relativeLocationSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id CKLocationSortDescriptor)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id CKLocationSortDescriptor)
newSelector = mkSelector "new"

-- | @Selector@ for @initWithKey:relativeLocation:@
initWithKey_relativeLocationSelector :: Selector '[Id NSString, Id CLLocation] (Id CKLocationSortDescriptor)
initWithKey_relativeLocationSelector = mkSelector "initWithKey:relativeLocation:"

-- | @Selector@ for @initWithCoder:@
initWithCoderSelector :: Selector '[Id NSCoder] (Id CKLocationSortDescriptor)
initWithCoderSelector = mkSelector "initWithCoder:"

-- | @Selector@ for @relativeLocation@
relativeLocationSelector :: Selector '[] (Id CLLocation)
relativeLocationSelector = mkSelector "relativeLocation"

