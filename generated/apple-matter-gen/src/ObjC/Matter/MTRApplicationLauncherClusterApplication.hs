{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRApplicationLauncherClusterApplication@.
module ObjC.Matter.MTRApplicationLauncherClusterApplication
  ( MTRApplicationLauncherClusterApplication
  , IsMTRApplicationLauncherClusterApplication(..)
  , init_
  , copyWithZone
  , catalogVendorId
  , setCatalogVendorId
  , applicationId
  , setApplicationId
  , applicationIdSelector
  , catalogVendorIdSelector
  , copyWithZoneSelector
  , initSelector
  , setApplicationIdSelector
  , setCatalogVendorIdSelector


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
init_ :: IsMTRApplicationLauncherClusterApplication mtrApplicationLauncherClusterApplication => mtrApplicationLauncherClusterApplication -> IO (Id MTRApplicationLauncherClusterApplication)
init_ mtrApplicationLauncherClusterApplication =
  sendOwnedMessage mtrApplicationLauncherClusterApplication initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRApplicationLauncherClusterApplication mtrApplicationLauncherClusterApplication => mtrApplicationLauncherClusterApplication -> Ptr () -> IO RawId
copyWithZone mtrApplicationLauncherClusterApplication zone =
  sendOwnedMessage mtrApplicationLauncherClusterApplication copyWithZoneSelector zone

-- | @- catalogVendorId@
catalogVendorId :: IsMTRApplicationLauncherClusterApplication mtrApplicationLauncherClusterApplication => mtrApplicationLauncherClusterApplication -> IO (Id NSNumber)
catalogVendorId mtrApplicationLauncherClusterApplication =
  sendMessage mtrApplicationLauncherClusterApplication catalogVendorIdSelector

-- | @- setCatalogVendorId:@
setCatalogVendorId :: (IsMTRApplicationLauncherClusterApplication mtrApplicationLauncherClusterApplication, IsNSNumber value) => mtrApplicationLauncherClusterApplication -> value -> IO ()
setCatalogVendorId mtrApplicationLauncherClusterApplication value =
  sendMessage mtrApplicationLauncherClusterApplication setCatalogVendorIdSelector (toNSNumber value)

-- | @- applicationId@
applicationId :: IsMTRApplicationLauncherClusterApplication mtrApplicationLauncherClusterApplication => mtrApplicationLauncherClusterApplication -> IO (Id NSString)
applicationId mtrApplicationLauncherClusterApplication =
  sendMessage mtrApplicationLauncherClusterApplication applicationIdSelector

-- | @- setApplicationId:@
setApplicationId :: (IsMTRApplicationLauncherClusterApplication mtrApplicationLauncherClusterApplication, IsNSString value) => mtrApplicationLauncherClusterApplication -> value -> IO ()
setApplicationId mtrApplicationLauncherClusterApplication value =
  sendMessage mtrApplicationLauncherClusterApplication setApplicationIdSelector (toNSString value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRApplicationLauncherClusterApplication)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @catalogVendorId@
catalogVendorIdSelector :: Selector '[] (Id NSNumber)
catalogVendorIdSelector = mkSelector "catalogVendorId"

-- | @Selector@ for @setCatalogVendorId:@
setCatalogVendorIdSelector :: Selector '[Id NSNumber] ()
setCatalogVendorIdSelector = mkSelector "setCatalogVendorId:"

-- | @Selector@ for @applicationId@
applicationIdSelector :: Selector '[] (Id NSString)
applicationIdSelector = mkSelector "applicationId"

-- | @Selector@ for @setApplicationId:@
setApplicationIdSelector :: Selector '[Id NSString] ()
setApplicationIdSelector = mkSelector "setApplicationId:"

