{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @CKShareParticipant@.
module ObjC.CloudKit.CKShareParticipant
  ( CKShareParticipant
  , IsCKShareParticipant(..)
  , init_
  , new
  , userIdentity
  , role_
  , setRole
  , type_
  , setType
  , acceptanceStatus
  , permission
  , setPermission
  , acceptanceStatusSelector
  , initSelector
  , newSelector
  , permissionSelector
  , roleSelector
  , setPermissionSelector
  , setRoleSelector
  , setTypeSelector
  , typeSelector
  , userIdentitySelector

  -- * Enum types
  , CKShareParticipantAcceptanceStatus(CKShareParticipantAcceptanceStatus)
  , pattern CKShareParticipantAcceptanceStatusUnknown
  , pattern CKShareParticipantAcceptanceStatusPending
  , pattern CKShareParticipantAcceptanceStatusAccepted
  , pattern CKShareParticipantAcceptanceStatusRemoved
  , CKShareParticipantPermission(CKShareParticipantPermission)
  , pattern CKShareParticipantPermissionUnknown
  , pattern CKShareParticipantPermissionNone
  , pattern CKShareParticipantPermissionReadOnly
  , pattern CKShareParticipantPermissionReadWrite
  , CKShareParticipantRole(CKShareParticipantRole)
  , pattern CKShareParticipantRoleUnknown
  , pattern CKShareParticipantRoleOwner
  , pattern CKShareParticipantRolePrivateUser
  , pattern CKShareParticipantRolePublicUser
  , CKShareParticipantType(CKShareParticipantType)
  , pattern CKShareParticipantTypeUnknown
  , pattern CKShareParticipantTypeOwner
  , pattern CKShareParticipantTypePrivateUser
  , pattern CKShareParticipantTypePublicUser

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

-- | Use @CKFetchShareParticipantsOperation@ to create a @CKShareParticipant@ object
--
-- ObjC selector: @- init@
init_ :: IsCKShareParticipant ckShareParticipant => ckShareParticipant -> IO (Id CKShareParticipant)
init_ ckShareParticipant =
  sendOwnedMessage ckShareParticipant initSelector

-- | @+ new@
new :: IO (Id CKShareParticipant)
new  =
  do
    cls' <- getRequiredClass "CKShareParticipant"
    sendOwnedClassMessage cls' newSelector

-- | @- userIdentity@
userIdentity :: IsCKShareParticipant ckShareParticipant => ckShareParticipant -> IO (Id CKUserIdentity)
userIdentity ckShareParticipant =
  sendMessage ckShareParticipant userIdentitySelector

-- | The default participant role is @CKShareParticipantRolePrivateUser.@
--
-- ObjC selector: @- role@
role_ :: IsCKShareParticipant ckShareParticipant => ckShareParticipant -> IO CKShareParticipantRole
role_ ckShareParticipant =
  sendMessage ckShareParticipant roleSelector

-- | The default participant role is @CKShareParticipantRolePrivateUser.@
--
-- ObjC selector: @- setRole:@
setRole :: IsCKShareParticipant ckShareParticipant => ckShareParticipant -> CKShareParticipantRole -> IO ()
setRole ckShareParticipant value =
  sendMessage ckShareParticipant setRoleSelector value

-- | The default participant type is @CKShareParticipantTypePrivateUser.@
--
-- ObjC selector: @- type@
type_ :: IsCKShareParticipant ckShareParticipant => ckShareParticipant -> IO CKShareParticipantType
type_ ckShareParticipant =
  sendMessage ckShareParticipant typeSelector

-- | The default participant type is @CKShareParticipantTypePrivateUser.@
--
-- ObjC selector: @- setType:@
setType :: IsCKShareParticipant ckShareParticipant => ckShareParticipant -> CKShareParticipantType -> IO ()
setType ckShareParticipant value =
  sendMessage ckShareParticipant setTypeSelector value

-- | @- acceptanceStatus@
acceptanceStatus :: IsCKShareParticipant ckShareParticipant => ckShareParticipant -> IO CKShareParticipantAcceptanceStatus
acceptanceStatus ckShareParticipant =
  sendMessage ckShareParticipant acceptanceStatusSelector

-- | The default permission for a new participant is @CKShareParticipantPermissionReadOnly.@
--
-- ObjC selector: @- permission@
permission :: IsCKShareParticipant ckShareParticipant => ckShareParticipant -> IO CKShareParticipantPermission
permission ckShareParticipant =
  sendMessage ckShareParticipant permissionSelector

-- | The default permission for a new participant is @CKShareParticipantPermissionReadOnly.@
--
-- ObjC selector: @- setPermission:@
setPermission :: IsCKShareParticipant ckShareParticipant => ckShareParticipant -> CKShareParticipantPermission -> IO ()
setPermission ckShareParticipant value =
  sendMessage ckShareParticipant setPermissionSelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id CKShareParticipant)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id CKShareParticipant)
newSelector = mkSelector "new"

-- | @Selector@ for @userIdentity@
userIdentitySelector :: Selector '[] (Id CKUserIdentity)
userIdentitySelector = mkSelector "userIdentity"

-- | @Selector@ for @role@
roleSelector :: Selector '[] CKShareParticipantRole
roleSelector = mkSelector "role"

-- | @Selector@ for @setRole:@
setRoleSelector :: Selector '[CKShareParticipantRole] ()
setRoleSelector = mkSelector "setRole:"

-- | @Selector@ for @type@
typeSelector :: Selector '[] CKShareParticipantType
typeSelector = mkSelector "type"

-- | @Selector@ for @setType:@
setTypeSelector :: Selector '[CKShareParticipantType] ()
setTypeSelector = mkSelector "setType:"

-- | @Selector@ for @acceptanceStatus@
acceptanceStatusSelector :: Selector '[] CKShareParticipantAcceptanceStatus
acceptanceStatusSelector = mkSelector "acceptanceStatus"

-- | @Selector@ for @permission@
permissionSelector :: Selector '[] CKShareParticipantPermission
permissionSelector = mkSelector "permission"

-- | @Selector@ for @setPermission:@
setPermissionSelector :: Selector '[CKShareParticipantPermission] ()
setPermissionSelector = mkSelector "setPermission:"

