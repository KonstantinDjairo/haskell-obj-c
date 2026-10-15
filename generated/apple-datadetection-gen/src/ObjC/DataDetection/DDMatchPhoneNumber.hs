{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @DDMatchPhoneNumber@.
module ObjC.DataDetection.DDMatchPhoneNumber
  ( DDMatchPhoneNumber
  , IsDDMatchPhoneNumber(..)
  , phoneNumber
  , label
  , labelSelector
  , phoneNumberSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.DataDetection.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- phoneNumber@
phoneNumber :: IsDDMatchPhoneNumber ddMatchPhoneNumber => ddMatchPhoneNumber -> IO (Id NSString)
phoneNumber ddMatchPhoneNumber =
  sendMessage ddMatchPhoneNumber phoneNumberSelector

-- | @- label@
label :: IsDDMatchPhoneNumber ddMatchPhoneNumber => ddMatchPhoneNumber -> IO (Id NSString)
label ddMatchPhoneNumber =
  sendMessage ddMatchPhoneNumber labelSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @phoneNumber@
phoneNumberSelector :: Selector '[] (Id NSString)
phoneNumberSelector = mkSelector "phoneNumber"

-- | @Selector@ for @label@
labelSelector :: Selector '[] (Id NSString)
labelSelector = mkSelector "label"

