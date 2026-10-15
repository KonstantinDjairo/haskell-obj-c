{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRApplicationBasicClusterApplicationBasicApplication@.
module ObjC.Matter.MTRApplicationBasicClusterApplicationBasicApplication
  ( MTRApplicationBasicClusterApplicationBasicApplication
  , IsMTRApplicationBasicClusterApplicationBasicApplication(..)
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
init_ :: IsMTRApplicationBasicClusterApplicationBasicApplication mtrApplicationBasicClusterApplicationBasicApplication => mtrApplicationBasicClusterApplicationBasicApplication -> IO (Id MTRApplicationBasicClusterApplicationBasicApplication)
init_ mtrApplicationBasicClusterApplicationBasicApplication =
  sendOwnedMessage mtrApplicationBasicClusterApplicationBasicApplication initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRApplicationBasicClusterApplicationBasicApplication mtrApplicationBasicClusterApplicationBasicApplication => mtrApplicationBasicClusterApplicationBasicApplication -> Ptr () -> IO RawId
copyWithZone mtrApplicationBasicClusterApplicationBasicApplication zone =
  sendOwnedMessage mtrApplicationBasicClusterApplicationBasicApplication copyWithZoneSelector zone

-- | @- catalogVendorId@
catalogVendorId :: IsMTRApplicationBasicClusterApplicationBasicApplication mtrApplicationBasicClusterApplicationBasicApplication => mtrApplicationBasicClusterApplicationBasicApplication -> IO (Id NSNumber)
catalogVendorId mtrApplicationBasicClusterApplicationBasicApplication =
  sendMessage mtrApplicationBasicClusterApplicationBasicApplication catalogVendorIdSelector

-- | @- setCatalogVendorId:@
setCatalogVendorId :: (IsMTRApplicationBasicClusterApplicationBasicApplication mtrApplicationBasicClusterApplicationBasicApplication, IsNSNumber value) => mtrApplicationBasicClusterApplicationBasicApplication -> value -> IO ()
setCatalogVendorId mtrApplicationBasicClusterApplicationBasicApplication value =
  sendMessage mtrApplicationBasicClusterApplicationBasicApplication setCatalogVendorIdSelector (toNSNumber value)

-- | @- applicationId@
applicationId :: IsMTRApplicationBasicClusterApplicationBasicApplication mtrApplicationBasicClusterApplicationBasicApplication => mtrApplicationBasicClusterApplicationBasicApplication -> IO (Id NSString)
applicationId mtrApplicationBasicClusterApplicationBasicApplication =
  sendMessage mtrApplicationBasicClusterApplicationBasicApplication applicationIdSelector

-- | @- setApplicationId:@
setApplicationId :: (IsMTRApplicationBasicClusterApplicationBasicApplication mtrApplicationBasicClusterApplicationBasicApplication, IsNSString value) => mtrApplicationBasicClusterApplicationBasicApplication -> value -> IO ()
setApplicationId mtrApplicationBasicClusterApplicationBasicApplication value =
  sendMessage mtrApplicationBasicClusterApplicationBasicApplication setApplicationIdSelector (toNSString value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRApplicationBasicClusterApplicationBasicApplication)
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

