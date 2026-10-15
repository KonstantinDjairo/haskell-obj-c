{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @CBIdentityAuthority@.
module ObjC.Collaboration.CBIdentityAuthority
  ( CBIdentityAuthority
  , IsCBIdentityAuthority(..)
  , localIdentityAuthority
  , managedIdentityAuthority
  , defaultIdentityAuthority
  , identityAuthorityWithCSIdentityAuthority
  , csIdentityAuthority
  , localizedName
  , csIdentityAuthoritySelector
  , defaultIdentityAuthoritySelector
  , identityAuthorityWithCSIdentityAuthoritySelector
  , localIdentityAuthoritySelector
  , localizedNameSelector
  , managedIdentityAuthoritySelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.Collaboration.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @+ localIdentityAuthority@
localIdentityAuthority :: IO (Id CBIdentityAuthority)
localIdentityAuthority  =
  do
    cls' <- getRequiredClass "CBIdentityAuthority"
    sendClassMessage cls' localIdentityAuthoritySelector

-- | @+ managedIdentityAuthority@
managedIdentityAuthority :: IO (Id CBIdentityAuthority)
managedIdentityAuthority  =
  do
    cls' <- getRequiredClass "CBIdentityAuthority"
    sendClassMessage cls' managedIdentityAuthoritySelector

-- | @+ defaultIdentityAuthority@
defaultIdentityAuthority :: IO (Id CBIdentityAuthority)
defaultIdentityAuthority  =
  do
    cls' <- getRequiredClass "CBIdentityAuthority"
    sendClassMessage cls' defaultIdentityAuthoritySelector

-- | @+ identityAuthorityWithCSIdentityAuthority:@
identityAuthorityWithCSIdentityAuthority :: Ptr () -> IO (Id CBIdentityAuthority)
identityAuthorityWithCSIdentityAuthority csIdentityAuthority =
  do
    cls' <- getRequiredClass "CBIdentityAuthority"
    sendClassMessage cls' identityAuthorityWithCSIdentityAuthoritySelector csIdentityAuthority

-- | @- CSIdentityAuthority@
csIdentityAuthority :: IsCBIdentityAuthority cbIdentityAuthority => cbIdentityAuthority -> IO (Ptr ())
csIdentityAuthority cbIdentityAuthority =
  sendMessage cbIdentityAuthority csIdentityAuthoritySelector

-- | @- localizedName@
localizedName :: IsCBIdentityAuthority cbIdentityAuthority => cbIdentityAuthority -> IO (Id NSString)
localizedName cbIdentityAuthority =
  sendMessage cbIdentityAuthority localizedNameSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @localIdentityAuthority@
localIdentityAuthoritySelector :: Selector '[] (Id CBIdentityAuthority)
localIdentityAuthoritySelector = mkSelector "localIdentityAuthority"

-- | @Selector@ for @managedIdentityAuthority@
managedIdentityAuthoritySelector :: Selector '[] (Id CBIdentityAuthority)
managedIdentityAuthoritySelector = mkSelector "managedIdentityAuthority"

-- | @Selector@ for @defaultIdentityAuthority@
defaultIdentityAuthoritySelector :: Selector '[] (Id CBIdentityAuthority)
defaultIdentityAuthoritySelector = mkSelector "defaultIdentityAuthority"

-- | @Selector@ for @identityAuthorityWithCSIdentityAuthority:@
identityAuthorityWithCSIdentityAuthoritySelector :: Selector '[Ptr ()] (Id CBIdentityAuthority)
identityAuthorityWithCSIdentityAuthoritySelector = mkSelector "identityAuthorityWithCSIdentityAuthority:"

-- | @Selector@ for @CSIdentityAuthority@
csIdentityAuthoritySelector :: Selector '[] (Ptr ())
csIdentityAuthoritySelector = mkSelector "CSIdentityAuthority"

-- | @Selector@ for @localizedName@
localizedNameSelector :: Selector '[] (Id NSString)
localizedNameSelector = mkSelector "localizedName"

