{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | AVAssetDownloadStorageManagementPolicy
--
-- A class to inform the system of a policy for automatic purging of downloaded AVAssets.
--
-- System will put in best-effort to evict all the assets based on expirationDate before evicting based on priority.
--
-- Generated bindings for @AVAssetDownloadStorageManagementPolicyInternal@.
module ObjC.AVFoundation.AVAssetDownloadStorageManagementPolicyInternal
  ( AVAssetDownloadStorageManagementPolicyInternal
  , IsAVAssetDownloadStorageManagementPolicyInternal(..)


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AVFoundation.Internal.Classes

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

