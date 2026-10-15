{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @CKAllowedSharingOptions@.
module ObjC.CloudKit.CKAllowedSharingOptions
  ( CKAllowedSharingOptions
  , IsCKAllowedSharingOptions(..)
  , initWithAllowedParticipantPermissionOptions_allowedParticipantAccessOptions
  , allowedParticipantPermissionOptions
  , setAllowedParticipantPermissionOptions
  , allowedParticipantAccessOptions
  , setAllowedParticipantAccessOptions
  , standardOptions
  , allowedParticipantAccessOptionsSelector
  , allowedParticipantPermissionOptionsSelector
  , initWithAllowedParticipantPermissionOptions_allowedParticipantAccessOptionsSelector
  , setAllowedParticipantAccessOptionsSelector
  , setAllowedParticipantPermissionOptionsSelector
  , standardOptionsSelector

  -- * Enum types
  , CKSharingParticipantAccessOption(CKSharingParticipantAccessOption)
  , pattern CKSharingParticipantAccessOptionAnyoneWithLink
  , pattern CKSharingParticipantAccessOptionSpecifiedRecipientsOnly
  , pattern CKSharingParticipantAccessOptionAny
  , CKSharingParticipantPermissionOption(CKSharingParticipantPermissionOption)
  , pattern CKSharingParticipantPermissionOptionReadOnly
  , pattern CKSharingParticipantPermissionOptionReadWrite
  , pattern CKSharingParticipantPermissionOptionAny

  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.CloudKit.Internal.Classes
import ObjC.CloudKit.Internal.Enums
import ObjC.Foundation.Internal.Classes

-- | @- initWithAllowedParticipantPermissionOptions:allowedParticipantAccessOptions:@
initWithAllowedParticipantPermissionOptions_allowedParticipantAccessOptions :: IsCKAllowedSharingOptions ckAllowedSharingOptions => ckAllowedSharingOptions -> CKSharingParticipantPermissionOption -> CKSharingParticipantAccessOption -> IO (Id CKAllowedSharingOptions)
initWithAllowedParticipantPermissionOptions_allowedParticipantAccessOptions ckAllowedSharingOptions allowedParticipantPermissionOptions allowedParticipantAccessOptions =
  sendOwnedMessage ckAllowedSharingOptions initWithAllowedParticipantPermissionOptions_allowedParticipantAccessOptionsSelector allowedParticipantPermissionOptions allowedParticipantAccessOptions

-- | @- allowedParticipantPermissionOptions@
allowedParticipantPermissionOptions :: IsCKAllowedSharingOptions ckAllowedSharingOptions => ckAllowedSharingOptions -> IO CKSharingParticipantPermissionOption
allowedParticipantPermissionOptions ckAllowedSharingOptions =
  sendMessage ckAllowedSharingOptions allowedParticipantPermissionOptionsSelector

-- | @- setAllowedParticipantPermissionOptions:@
setAllowedParticipantPermissionOptions :: IsCKAllowedSharingOptions ckAllowedSharingOptions => ckAllowedSharingOptions -> CKSharingParticipantPermissionOption -> IO ()
setAllowedParticipantPermissionOptions ckAllowedSharingOptions value =
  sendMessage ckAllowedSharingOptions setAllowedParticipantPermissionOptionsSelector value

-- | @- allowedParticipantAccessOptions@
allowedParticipantAccessOptions :: IsCKAllowedSharingOptions ckAllowedSharingOptions => ckAllowedSharingOptions -> IO CKSharingParticipantAccessOption
allowedParticipantAccessOptions ckAllowedSharingOptions =
  sendMessage ckAllowedSharingOptions allowedParticipantAccessOptionsSelector

-- | @- setAllowedParticipantAccessOptions:@
setAllowedParticipantAccessOptions :: IsCKAllowedSharingOptions ckAllowedSharingOptions => ckAllowedSharingOptions -> CKSharingParticipantAccessOption -> IO ()
setAllowedParticipantAccessOptions ckAllowedSharingOptions value =
  sendMessage ckAllowedSharingOptions setAllowedParticipantAccessOptionsSelector value

-- | Standard allowed options are most permissive i.e. @allowedParticipantPermissionOptions@ = @CKSharingParticipantPermissionOptionAny@ and @allowedParticipantAccessOptions@ = @CKSharingParticipantAccessOptionAny@
--
-- ObjC selector: @+ standardOptions@
standardOptions :: IO (Id CKAllowedSharingOptions)
standardOptions  =
  do
    cls' <- getRequiredClass "CKAllowedSharingOptions"
    sendClassMessage cls' standardOptionsSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithAllowedParticipantPermissionOptions:allowedParticipantAccessOptions:@
initWithAllowedParticipantPermissionOptions_allowedParticipantAccessOptionsSelector :: Selector '[CKSharingParticipantPermissionOption, CKSharingParticipantAccessOption] (Id CKAllowedSharingOptions)
initWithAllowedParticipantPermissionOptions_allowedParticipantAccessOptionsSelector = mkSelector "initWithAllowedParticipantPermissionOptions:allowedParticipantAccessOptions:"

-- | @Selector@ for @allowedParticipantPermissionOptions@
allowedParticipantPermissionOptionsSelector :: Selector '[] CKSharingParticipantPermissionOption
allowedParticipantPermissionOptionsSelector = mkSelector "allowedParticipantPermissionOptions"

-- | @Selector@ for @setAllowedParticipantPermissionOptions:@
setAllowedParticipantPermissionOptionsSelector :: Selector '[CKSharingParticipantPermissionOption] ()
setAllowedParticipantPermissionOptionsSelector = mkSelector "setAllowedParticipantPermissionOptions:"

-- | @Selector@ for @allowedParticipantAccessOptions@
allowedParticipantAccessOptionsSelector :: Selector '[] CKSharingParticipantAccessOption
allowedParticipantAccessOptionsSelector = mkSelector "allowedParticipantAccessOptions"

-- | @Selector@ for @setAllowedParticipantAccessOptions:@
setAllowedParticipantAccessOptionsSelector :: Selector '[CKSharingParticipantAccessOption] ()
setAllowedParticipantAccessOptionsSelector = mkSelector "setAllowedParticipantAccessOptions:"

-- | @Selector@ for @standardOptions@
standardOptionsSelector :: Selector '[] (Id CKAllowedSharingOptions)
standardOptionsSelector = mkSelector "standardOptions"

