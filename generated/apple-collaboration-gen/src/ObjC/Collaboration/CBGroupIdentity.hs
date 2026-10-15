{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @CBGroupIdentity@.
module ObjC.Collaboration.CBGroupIdentity
  ( CBGroupIdentity
  , IsCBGroupIdentity(..)
  , groupIdentityWithPosixGID_authority
  , posixGID
  , members
  , groupIdentityWithPosixGID_authoritySelector
  , membersSelector
  , posixGIDSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.Collaboration.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @+ groupIdentityWithPosixGID:authority:@
groupIdentityWithPosixGID_authority :: IsCBIdentityAuthority authority => CUInt -> authority -> IO (Id CBGroupIdentity)
groupIdentityWithPosixGID_authority gid authority =
  do
    cls' <- getRequiredClass "CBGroupIdentity"
    sendClassMessage cls' groupIdentityWithPosixGID_authoritySelector gid (toCBIdentityAuthority authority)

-- | @- posixGID@
posixGID :: IsCBGroupIdentity cbGroupIdentity => cbGroupIdentity -> IO CUInt
posixGID cbGroupIdentity =
  sendMessage cbGroupIdentity posixGIDSelector

-- | @- members@
members :: IsCBGroupIdentity cbGroupIdentity => cbGroupIdentity -> IO RawId
members cbGroupIdentity =
  sendMessage cbGroupIdentity membersSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @groupIdentityWithPosixGID:authority:@
groupIdentityWithPosixGID_authoritySelector :: Selector '[CUInt, Id CBIdentityAuthority] (Id CBGroupIdentity)
groupIdentityWithPosixGID_authoritySelector = mkSelector "groupIdentityWithPosixGID:authority:"

-- | @Selector@ for @posixGID@
posixGIDSelector :: Selector '[] CUInt
posixGIDSelector = mkSelector "posixGID"

-- | @Selector@ for @members@
membersSelector :: Selector '[] RawId
membersSelector = mkSelector "members"

