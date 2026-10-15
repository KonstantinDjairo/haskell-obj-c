{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @CAEDRMetadata@.
module ObjC.QuartzCore.CAEDRMetadata
  ( CAEDRMetadata
  , IsCAEDRMetadata(..)
  , init_
  , hdR10MetadataWithDisplayInfo_contentInfo_opticalOutputScale
  , hdR10MetadataWithMinLuminance_maxLuminance_opticalOutputScale
  , hlgMetadata
  , available
  , availableSelector
  , hdR10MetadataWithDisplayInfo_contentInfo_opticalOutputScaleSelector
  , hdR10MetadataWithMinLuminance_maxLuminance_opticalOutputScaleSelector
  , hlgMetadataSelector
  , initSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.QuartzCore.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- init@
init_ :: IsCAEDRMetadata caedrMetadata => caedrMetadata -> IO (Id CAEDRMetadata)
init_ caedrMetadata =
  sendOwnedMessage caedrMetadata initSelector

-- | @+ HDR10MetadataWithDisplayInfo:contentInfo:opticalOutputScale:@
hdR10MetadataWithDisplayInfo_contentInfo_opticalOutputScale :: (IsNSData displayData, IsNSData contentData) => displayData -> contentData -> CFloat -> IO (Id CAEDRMetadata)
hdR10MetadataWithDisplayInfo_contentInfo_opticalOutputScale displayData contentData scale =
  do
    cls' <- getRequiredClass "CAEDRMetadata"
    sendClassMessage cls' hdR10MetadataWithDisplayInfo_contentInfo_opticalOutputScaleSelector (toNSData displayData) (toNSData contentData) scale

-- | @+ HDR10MetadataWithMinLuminance:maxLuminance:opticalOutputScale:@
hdR10MetadataWithMinLuminance_maxLuminance_opticalOutputScale :: CFloat -> CFloat -> CFloat -> IO (Id CAEDRMetadata)
hdR10MetadataWithMinLuminance_maxLuminance_opticalOutputScale minNits maxNits scale =
  do
    cls' <- getRequiredClass "CAEDRMetadata"
    sendClassMessage cls' hdR10MetadataWithMinLuminance_maxLuminance_opticalOutputScaleSelector minNits maxNits scale

-- | @+ HLGMetadata@
hlgMetadata :: IO (Id CAEDRMetadata)
hlgMetadata  =
  do
    cls' <- getRequiredClass "CAEDRMetadata"
    sendClassMessage cls' hlgMetadataSelector

-- | @+ available@
available :: IO Bool
available  =
  do
    cls' <- getRequiredClass "CAEDRMetadata"
    sendClassMessage cls' availableSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id CAEDRMetadata)
initSelector = mkSelector "init"

-- | @Selector@ for @HDR10MetadataWithDisplayInfo:contentInfo:opticalOutputScale:@
hdR10MetadataWithDisplayInfo_contentInfo_opticalOutputScaleSelector :: Selector '[Id NSData, Id NSData, CFloat] (Id CAEDRMetadata)
hdR10MetadataWithDisplayInfo_contentInfo_opticalOutputScaleSelector = mkSelector "HDR10MetadataWithDisplayInfo:contentInfo:opticalOutputScale:"

-- | @Selector@ for @HDR10MetadataWithMinLuminance:maxLuminance:opticalOutputScale:@
hdR10MetadataWithMinLuminance_maxLuminance_opticalOutputScaleSelector :: Selector '[CFloat, CFloat, CFloat] (Id CAEDRMetadata)
hdR10MetadataWithMinLuminance_maxLuminance_opticalOutputScaleSelector = mkSelector "HDR10MetadataWithMinLuminance:maxLuminance:opticalOutputScale:"

-- | @Selector@ for @HLGMetadata@
hlgMetadataSelector :: Selector '[] (Id CAEDRMetadata)
hlgMetadataSelector = mkSelector "HLGMetadata"

-- | @Selector@ for @available@
availableSelector :: Selector '[] Bool
availableSelector = mkSelector "available"

