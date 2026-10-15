{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @PKPushCredentials@.
module ObjC.PushKit.PKPushCredentials
  ( PKPushCredentials
  , IsPKPushCredentials(..)
  , type_
  , token
  , tokenSelector
  , typeSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.PushKit.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- type@
type_ :: IsPKPushCredentials pkPushCredentials => pkPushCredentials -> IO (Id NSString)
type_ pkPushCredentials =
  sendMessage pkPushCredentials typeSelector

-- | @- token@
token :: IsPKPushCredentials pkPushCredentials => pkPushCredentials -> IO (Id NSData)
token pkPushCredentials =
  sendMessage pkPushCredentials tokenSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @type@
typeSelector :: Selector '[] (Id NSString)
typeSelector = mkSelector "type"

-- | @Selector@ for @token@
tokenSelector :: Selector '[] (Id NSData)
tokenSelector = mkSelector "token"

