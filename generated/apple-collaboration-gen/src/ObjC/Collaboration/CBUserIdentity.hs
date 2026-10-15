{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @CBUserIdentity@.
module ObjC.Collaboration.CBUserIdentity
  ( CBUserIdentity
  , IsCBUserIdentity(..)
  , userIdentityWithPosixUID_authority
  , authenticateWithPassword
  , posixUID
  , certificate
  , enabled
  , authenticateWithPasswordSelector
  , certificateSelector
  , enabledSelector
  , posixUIDSelector
  , userIdentityWithPosixUID_authoritySelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.Collaboration.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @+ userIdentityWithPosixUID:authority:@
userIdentityWithPosixUID_authority :: IsCBIdentityAuthority authority => CUInt -> authority -> IO (Id CBUserIdentity)
userIdentityWithPosixUID_authority uid authority =
  do
    cls' <- getRequiredClass "CBUserIdentity"
    sendClassMessage cls' userIdentityWithPosixUID_authoritySelector uid (toCBIdentityAuthority authority)

-- | @- authenticateWithPassword:@
authenticateWithPassword :: (IsCBUserIdentity cbUserIdentity, IsNSString password) => cbUserIdentity -> password -> IO Bool
authenticateWithPassword cbUserIdentity password =
  sendMessage cbUserIdentity authenticateWithPasswordSelector (toNSString password)

-- | @- posixUID@
posixUID :: IsCBUserIdentity cbUserIdentity => cbUserIdentity -> IO CUInt
posixUID cbUserIdentity =
  sendMessage cbUserIdentity posixUIDSelector

-- | @- certificate@
certificate :: IsCBUserIdentity cbUserIdentity => cbUserIdentity -> IO (Ptr ())
certificate cbUserIdentity =
  sendMessage cbUserIdentity certificateSelector

-- | @- enabled@
enabled :: IsCBUserIdentity cbUserIdentity => cbUserIdentity -> IO Bool
enabled cbUserIdentity =
  sendMessage cbUserIdentity enabledSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @userIdentityWithPosixUID:authority:@
userIdentityWithPosixUID_authoritySelector :: Selector '[CUInt, Id CBIdentityAuthority] (Id CBUserIdentity)
userIdentityWithPosixUID_authoritySelector = mkSelector "userIdentityWithPosixUID:authority:"

-- | @Selector@ for @authenticateWithPassword:@
authenticateWithPasswordSelector :: Selector '[Id NSString] Bool
authenticateWithPasswordSelector = mkSelector "authenticateWithPassword:"

-- | @Selector@ for @posixUID@
posixUIDSelector :: Selector '[] CUInt
posixUIDSelector = mkSelector "posixUID"

-- | @Selector@ for @certificate@
certificateSelector :: Selector '[] (Ptr ())
certificateSelector = mkSelector "certificate"

-- | @Selector@ for @enabled@
enabledSelector :: Selector '[] Bool
enabledSelector = mkSelector "enabled"

