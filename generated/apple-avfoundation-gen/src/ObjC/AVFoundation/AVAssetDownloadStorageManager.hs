{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @AVAssetDownloadStorageManager@.
module ObjC.AVFoundation.AVAssetDownloadStorageManager
  ( AVAssetDownloadStorageManager
  , IsAVAssetDownloadStorageManager(..)
  , sharedDownloadStorageManager
  , setStorageManagementPolicy_forURL
  , storageManagementPolicyForURL
  , setStorageManagementPolicy_forURLSelector
  , sharedDownloadStorageManagerSelector
  , storageManagementPolicyForURLSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AVFoundation.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | sharedDownloadStorageManager
--
-- returns singleton instance.
--
-- ObjC selector: @+ sharedDownloadStorageManager@
sharedDownloadStorageManager :: IO (Id AVAssetDownloadStorageManager)
sharedDownloadStorageManager  =
  do
    cls' <- getRequiredClass "AVAssetDownloadStorageManager"
    sendClassMessage cls' sharedDownloadStorageManagerSelector

-- | setStorageManagementPolicy: forURL
--
-- Sets the policy for asset with disk backing at downloadStorageURL.
--
-- @downloadStorageURL@ — The location of downloaded asset.
--
-- ObjC selector: @- setStorageManagementPolicy:forURL:@
setStorageManagementPolicy_forURL :: (IsAVAssetDownloadStorageManager avAssetDownloadStorageManager, IsAVAssetDownloadStorageManagementPolicy storageManagementPolicy, IsNSURL downloadStorageURL) => avAssetDownloadStorageManager -> storageManagementPolicy -> downloadStorageURL -> IO ()
setStorageManagementPolicy_forURL avAssetDownloadStorageManager storageManagementPolicy downloadStorageURL =
  sendMessage avAssetDownloadStorageManager setStorageManagementPolicy_forURLSelector (toAVAssetDownloadStorageManagementPolicy storageManagementPolicy) (toNSURL downloadStorageURL)

-- | storageManagementPolicyForURL:downloadStorageURL
--
-- Returns the storage management policy for asset downloaded at downloadStorageURL.                This may be nil if a storageManagementPolicy was never set on the downloaded asset.
--
-- @downloadStorageURL@ — The location of downloaded asset.
--
-- ObjC selector: @- storageManagementPolicyForURL:@
storageManagementPolicyForURL :: (IsAVAssetDownloadStorageManager avAssetDownloadStorageManager, IsNSURL downloadStorageURL) => avAssetDownloadStorageManager -> downloadStorageURL -> IO (Id AVAssetDownloadStorageManagementPolicy)
storageManagementPolicyForURL avAssetDownloadStorageManager downloadStorageURL =
  sendMessage avAssetDownloadStorageManager storageManagementPolicyForURLSelector (toNSURL downloadStorageURL)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @sharedDownloadStorageManager@
sharedDownloadStorageManagerSelector :: Selector '[] (Id AVAssetDownloadStorageManager)
sharedDownloadStorageManagerSelector = mkSelector "sharedDownloadStorageManager"

-- | @Selector@ for @setStorageManagementPolicy:forURL:@
setStorageManagementPolicy_forURLSelector :: Selector '[Id AVAssetDownloadStorageManagementPolicy, Id NSURL] ()
setStorageManagementPolicy_forURLSelector = mkSelector "setStorageManagementPolicy:forURL:"

-- | @Selector@ for @storageManagementPolicyForURL:@
storageManagementPolicyForURLSelector :: Selector '[Id NSURL] (Id AVAssetDownloadStorageManagementPolicy)
storageManagementPolicyForURLSelector = mkSelector "storageManagementPolicyForURL:"

