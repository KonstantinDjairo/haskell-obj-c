{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @DDMatchEmailAddress@.
module ObjC.DataDetection.DDMatchEmailAddress
  ( DDMatchEmailAddress
  , IsDDMatchEmailAddress(..)
  , emailAddress
  , label
  , emailAddressSelector
  , labelSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.DataDetection.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- emailAddress@
emailAddress :: IsDDMatchEmailAddress ddMatchEmailAddress => ddMatchEmailAddress -> IO (Id NSString)
emailAddress ddMatchEmailAddress =
  sendMessage ddMatchEmailAddress emailAddressSelector

-- | @- label@
label :: IsDDMatchEmailAddress ddMatchEmailAddress => ddMatchEmailAddress -> IO (Id NSString)
label ddMatchEmailAddress =
  sendMessage ddMatchEmailAddress labelSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @emailAddress@
emailAddressSelector :: Selector '[] (Id NSString)
emailAddressSelector = mkSelector "emailAddress"

-- | @Selector@ for @label@
labelSelector :: Selector '[] (Id NSString)
labelSelector = mkSelector "label"

