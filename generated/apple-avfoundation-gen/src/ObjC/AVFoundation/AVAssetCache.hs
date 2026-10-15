{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | AVAssetCache
--
-- AVAssetCache is a class vended by an AVAsset used for the inspection of locally available media data.
--
-- AVAssetCaches are vended by AVURLAsset's assetCache property.
--
-- Generated bindings for @AVAssetCache@.
module ObjC.AVFoundation.AVAssetCache
  ( AVAssetCache
  , IsAVAssetCache(..)
  , mediaSelectionOptionsInMediaSelectionGroup
  , init_
  , new
  , playableOffline
  , initSelector
  , mediaSelectionOptionsInMediaSelectionGroupSelector
  , newSelector
  , playableOfflineSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AVFoundation.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- mediaSelectionOptionsInMediaSelectionGroup:@
mediaSelectionOptionsInMediaSelectionGroup :: (IsAVAssetCache avAssetCache, IsAVMediaSelectionGroup mediaSelectionGroup) => avAssetCache -> mediaSelectionGroup -> IO (Id NSArray)
mediaSelectionOptionsInMediaSelectionGroup avAssetCache mediaSelectionGroup =
  sendMessage avAssetCache mediaSelectionOptionsInMediaSelectionGroupSelector (toAVMediaSelectionGroup mediaSelectionGroup)

-- | @- init@
init_ :: IsAVAssetCache avAssetCache => avAssetCache -> IO (Id AVAssetCache)
init_ avAssetCache =
  sendOwnedMessage avAssetCache initSelector

-- | @+ new@
new :: IO (Id AVAssetCache)
new  =
  do
    cls' <- getRequiredClass "AVAssetCache"
    sendOwnedClassMessage cls' newSelector

-- | @- playableOffline@
playableOffline :: IsAVAssetCache avAssetCache => avAssetCache -> IO Bool
playableOffline avAssetCache =
  sendMessage avAssetCache playableOfflineSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @mediaSelectionOptionsInMediaSelectionGroup:@
mediaSelectionOptionsInMediaSelectionGroupSelector :: Selector '[Id AVMediaSelectionGroup] (Id NSArray)
mediaSelectionOptionsInMediaSelectionGroupSelector = mkSelector "mediaSelectionOptionsInMediaSelectionGroup:"

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id AVAssetCache)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id AVAssetCache)
newSelector = mkSelector "new"

-- | @Selector@ for @playableOffline@
playableOfflineSelector :: Selector '[] Bool
playableOfflineSelector = mkSelector "playableOffline"

