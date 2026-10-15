{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | AVAssetDownloadConfiguration
--
-- Configuration parameters for the download task.
--
-- Download configuration consists of primary and auxiliary content configurations. Primary content configuration represents the primary set of renditions essential for offline playback. Auxiliary content configurations represent additional configurations to complement the primary.				For example, the primary content configuration may represent stereo audio renditions and auxiliary configuration may represent complementing multichannel audio renditions.
--
-- It is important to configure your download configuration object appropriately before using it to create a download task. Download task makes a copy of the configuration settings you provide and use those settings to configure the task. Once configured, the task object ignores any changes you make to the NSURLSessionConfiguration object. If you need to modify your settings, you must update the download configuration object and use it to create a new download task object.
--
-- Generated bindings for @AVAssetDownloadConfiguration@.
module ObjC.AVFoundation.AVAssetDownloadConfiguration
  ( AVAssetDownloadConfiguration
  , IsAVAssetDownloadConfiguration(..)
  , init_
  , new
  , downloadConfigurationWithAsset_title
  , artworkData
  , setArtworkData
  , primaryContentConfiguration
  , auxiliaryContentConfigurations
  , setAuxiliaryContentConfigurations
  , optimizesAuxiliaryContentConfigurations
  , setOptimizesAuxiliaryContentConfigurations
  , artworkDataSelector
  , auxiliaryContentConfigurationsSelector
  , downloadConfigurationWithAsset_titleSelector
  , initSelector
  , newSelector
  , optimizesAuxiliaryContentConfigurationsSelector
  , primaryContentConfigurationSelector
  , setArtworkDataSelector
  , setAuxiliaryContentConfigurationsSelector
  , setOptimizesAuxiliaryContentConfigurationsSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AVFoundation.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- init@
init_ :: IsAVAssetDownloadConfiguration avAssetDownloadConfiguration => avAssetDownloadConfiguration -> IO (Id AVAssetDownloadConfiguration)
init_ avAssetDownloadConfiguration =
  sendOwnedMessage avAssetDownloadConfiguration initSelector

-- | @+ new@
new :: IO (Id AVAssetDownloadConfiguration)
new  =
  do
    cls' <- getRequiredClass "AVAssetDownloadConfiguration"
    sendOwnedClassMessage cls' newSelector

-- | downloadConfigurationWithAsset:title:
--
-- Creates and initializes a download configuration object.
--
-- This method will throw an exception if AVURLAsset has been invalidated.
--
-- @asset@ — The asset to create the download configuration for.
--
-- @title@ — A human readable title for this asset, expected to be as suitable as possible for the user's preferred languages. Will show up in the usage pane of the settings app.
--
-- ObjC selector: @+ downloadConfigurationWithAsset:title:@
downloadConfigurationWithAsset_title :: (IsAVURLAsset asset, IsNSString title) => asset -> title -> IO (Id AVAssetDownloadConfiguration)
downloadConfigurationWithAsset_title asset title =
  do
    cls' <- getRequiredClass "AVAssetDownloadConfiguration"
    sendClassMessage cls' downloadConfigurationWithAsset_titleSelector (toAVURLAsset asset) (toNSString title)

-- | assetArtworkData
--
-- NSData representing artwork data for this asset. Optional. May be displayed, for example, by the usage pane of the Settings app. Must work with +[UIImage imageWithData:].
--
-- ObjC selector: @- artworkData@
artworkData :: IsAVAssetDownloadConfiguration avAssetDownloadConfiguration => avAssetDownloadConfiguration -> IO (Id NSData)
artworkData avAssetDownloadConfiguration =
  sendMessage avAssetDownloadConfiguration artworkDataSelector

-- | assetArtworkData
--
-- NSData representing artwork data for this asset. Optional. May be displayed, for example, by the usage pane of the Settings app. Must work with +[UIImage imageWithData:].
--
-- ObjC selector: @- setArtworkData:@
setArtworkData :: (IsAVAssetDownloadConfiguration avAssetDownloadConfiguration, IsNSData value) => avAssetDownloadConfiguration -> value -> IO ()
setArtworkData avAssetDownloadConfiguration value =
  sendMessage avAssetDownloadConfiguration setArtworkDataSelector (toNSData value)

-- | primaryContentConfiguration
--
-- The primary content for the download.
--
-- ObjC selector: @- primaryContentConfiguration@
primaryContentConfiguration :: IsAVAssetDownloadConfiguration avAssetDownloadConfiguration => avAssetDownloadConfiguration -> IO (Id AVAssetDownloadContentConfiguration)
primaryContentConfiguration avAssetDownloadConfiguration =
  sendMessage avAssetDownloadConfiguration primaryContentConfigurationSelector

-- | auxiliaryContentConfigurations
--
-- The auxiliary content for the download. Optional.
--
-- By default, auxiliaryContentConfigurations will have one or more default auxiliary content configurations. These content configurations can be augmented with additional content configurations or removed entirely if no auxiliary content is desired.
--
-- ObjC selector: @- auxiliaryContentConfigurations@
auxiliaryContentConfigurations :: IsAVAssetDownloadConfiguration avAssetDownloadConfiguration => avAssetDownloadConfiguration -> IO (Id NSArray)
auxiliaryContentConfigurations avAssetDownloadConfiguration =
  sendMessage avAssetDownloadConfiguration auxiliaryContentConfigurationsSelector

-- | auxiliaryContentConfigurations
--
-- The auxiliary content for the download. Optional.
--
-- By default, auxiliaryContentConfigurations will have one or more default auxiliary content configurations. These content configurations can be augmented with additional content configurations or removed entirely if no auxiliary content is desired.
--
-- ObjC selector: @- setAuxiliaryContentConfigurations:@
setAuxiliaryContentConfigurations :: (IsAVAssetDownloadConfiguration avAssetDownloadConfiguration, IsNSArray value) => avAssetDownloadConfiguration -> value -> IO ()
setAuxiliaryContentConfigurations avAssetDownloadConfiguration value =
  sendMessage avAssetDownloadConfiguration setAuxiliaryContentConfigurationsSelector (toNSArray value)

-- | optimizesAuxiliaryContentConfigurations
--
-- Optimizes auxiliary content selection depending on the primary to minimize total number of video renditions downloaded. True by default.
--
-- For example, if the primary content configuration represents stereo renditions and auxiliary content configuration represents multichannel audio renditions, auxiliary multichannel variant will be chosen so as to avoid downloading duplicate video renditions.
--
-- ObjC selector: @- optimizesAuxiliaryContentConfigurations@
optimizesAuxiliaryContentConfigurations :: IsAVAssetDownloadConfiguration avAssetDownloadConfiguration => avAssetDownloadConfiguration -> IO Bool
optimizesAuxiliaryContentConfigurations avAssetDownloadConfiguration =
  sendMessage avAssetDownloadConfiguration optimizesAuxiliaryContentConfigurationsSelector

-- | optimizesAuxiliaryContentConfigurations
--
-- Optimizes auxiliary content selection depending on the primary to minimize total number of video renditions downloaded. True by default.
--
-- For example, if the primary content configuration represents stereo renditions and auxiliary content configuration represents multichannel audio renditions, auxiliary multichannel variant will be chosen so as to avoid downloading duplicate video renditions.
--
-- ObjC selector: @- setOptimizesAuxiliaryContentConfigurations:@
setOptimizesAuxiliaryContentConfigurations :: IsAVAssetDownloadConfiguration avAssetDownloadConfiguration => avAssetDownloadConfiguration -> Bool -> IO ()
setOptimizesAuxiliaryContentConfigurations avAssetDownloadConfiguration value =
  sendMessage avAssetDownloadConfiguration setOptimizesAuxiliaryContentConfigurationsSelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id AVAssetDownloadConfiguration)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id AVAssetDownloadConfiguration)
newSelector = mkSelector "new"

-- | @Selector@ for @downloadConfigurationWithAsset:title:@
downloadConfigurationWithAsset_titleSelector :: Selector '[Id AVURLAsset, Id NSString] (Id AVAssetDownloadConfiguration)
downloadConfigurationWithAsset_titleSelector = mkSelector "downloadConfigurationWithAsset:title:"

-- | @Selector@ for @artworkData@
artworkDataSelector :: Selector '[] (Id NSData)
artworkDataSelector = mkSelector "artworkData"

-- | @Selector@ for @setArtworkData:@
setArtworkDataSelector :: Selector '[Id NSData] ()
setArtworkDataSelector = mkSelector "setArtworkData:"

-- | @Selector@ for @primaryContentConfiguration@
primaryContentConfigurationSelector :: Selector '[] (Id AVAssetDownloadContentConfiguration)
primaryContentConfigurationSelector = mkSelector "primaryContentConfiguration"

-- | @Selector@ for @auxiliaryContentConfigurations@
auxiliaryContentConfigurationsSelector :: Selector '[] (Id NSArray)
auxiliaryContentConfigurationsSelector = mkSelector "auxiliaryContentConfigurations"

-- | @Selector@ for @setAuxiliaryContentConfigurations:@
setAuxiliaryContentConfigurationsSelector :: Selector '[Id NSArray] ()
setAuxiliaryContentConfigurationsSelector = mkSelector "setAuxiliaryContentConfigurations:"

-- | @Selector@ for @optimizesAuxiliaryContentConfigurations@
optimizesAuxiliaryContentConfigurationsSelector :: Selector '[] Bool
optimizesAuxiliaryContentConfigurationsSelector = mkSelector "optimizesAuxiliaryContentConfigurations"

-- | @Selector@ for @setOptimizesAuxiliaryContentConfigurations:@
setOptimizesAuxiliaryContentConfigurationsSelector :: Selector '[Bool] ()
setOptimizesAuxiliaryContentConfigurationsSelector = mkSelector "setOptimizesAuxiliaryContentConfigurations:"

