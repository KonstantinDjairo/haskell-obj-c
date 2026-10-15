{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @PKPushPayload@.
module ObjC.PushKit.PKPushPayload
  ( PKPushPayload
  , IsPKPushPayload(..)
  , type_
  , dictionaryPayload
  , dictionaryPayloadSelector
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
type_ :: IsPKPushPayload pkPushPayload => pkPushPayload -> IO (Id NSString)
type_ pkPushPayload =
  sendMessage pkPushPayload typeSelector

-- | @- dictionaryPayload@
dictionaryPayload :: IsPKPushPayload pkPushPayload => pkPushPayload -> IO (Id NSDictionary)
dictionaryPayload pkPushPayload =
  sendMessage pkPushPayload dictionaryPayloadSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @type@
typeSelector :: Selector '[] (Id NSString)
typeSelector = mkSelector "type"

-- | @Selector@ for @dictionaryPayload@
dictionaryPayloadSelector :: Selector '[] (Id NSDictionary)
dictionaryPayloadSelector = mkSelector "dictionaryPayload"

