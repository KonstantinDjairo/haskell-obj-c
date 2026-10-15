{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @VSUserAccountManager@.
module ObjC.VideoSubscriberAccount.VSUserAccountManager
  ( VSUserAccountManager
  , IsVSUserAccountManager(..)
  , updateUserAccount_completion
  , sharedUserAccountManager
  , sharedUserAccountManagerSelector
  , updateUserAccount_completionSelector

  -- * Enum types
  , VSUserAccountQueryOptions(VSUserAccountQueryOptions)
  , pattern VSUserAccountQueryNone
  , pattern VSUserAccountQueryAllDevices

  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.VideoSubscriberAccount.Internal.Classes
import ObjC.VideoSubscriberAccount.Internal.Enums
import ObjC.Foundation.Internal.Classes

-- | @- updateUserAccount:completion:@
updateUserAccount_completion :: (IsVSUserAccountManager vsUserAccountManager, IsVSUserAccount account) => vsUserAccountManager -> account -> Ptr () -> IO ()
updateUserAccount_completion vsUserAccountManager account completion =
  sendMessage vsUserAccountManager updateUserAccount_completionSelector (toVSUserAccount account) completion

-- | @+ sharedUserAccountManager@
sharedUserAccountManager :: IO (Id VSUserAccountManager)
sharedUserAccountManager  =
  do
    cls' <- getRequiredClass "VSUserAccountManager"
    sendClassMessage cls' sharedUserAccountManagerSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @updateUserAccount:completion:@
updateUserAccount_completionSelector :: Selector '[Id VSUserAccount, Ptr ()] ()
updateUserAccount_completionSelector = mkSelector "updateUserAccount:completion:"

-- | @Selector@ for @sharedUserAccountManager@
sharedUserAccountManagerSelector :: Selector '[] (Id VSUserAccountManager)
sharedUserAccountManagerSelector = mkSelector "sharedUserAccountManager"

