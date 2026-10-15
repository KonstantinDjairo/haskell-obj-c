{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @AVAssetDownloadStorageManagementPolicy@.
module ObjC.AVFoundation.AVAssetDownloadStorageManagementPolicy
  ( AVAssetDownloadStorageManagementPolicy
  , IsAVAssetDownloadStorageManagementPolicy(..)
  , priority
  , expirationDate
  , expirationDateSelector
  , prioritySelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AVFoundation.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- priority@
priority :: IsAVAssetDownloadStorageManagementPolicy avAssetDownloadStorageManagementPolicy => avAssetDownloadStorageManagementPolicy -> IO (Id NSString)
priority avAssetDownloadStorageManagementPolicy =
  sendMessage avAssetDownloadStorageManagementPolicy prioritySelector

-- | @- expirationDate@
expirationDate :: IsAVAssetDownloadStorageManagementPolicy avAssetDownloadStorageManagementPolicy => avAssetDownloadStorageManagementPolicy -> IO (Id NSDate)
expirationDate avAssetDownloadStorageManagementPolicy =
  sendMessage avAssetDownloadStorageManagementPolicy expirationDateSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @priority@
prioritySelector :: Selector '[] (Id NSString)
prioritySelector = mkSelector "priority"

-- | @Selector@ for @expirationDate@
expirationDateSelector :: Selector '[] (Id NSDate)
expirationDateSelector = mkSelector "expirationDate"

