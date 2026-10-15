{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRAttributeReport@.
module ObjC.Matter.MTRAttributeReport
  ( MTRAttributeReport
  , IsMTRAttributeReport(..)
  , path
  , value
  , error_
  , errorSelector
  , pathSelector
  , valueSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.Matter.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- path@
path :: IsMTRAttributeReport mtrAttributeReport => mtrAttributeReport -> IO (Id MTRAttributePath)
path mtrAttributeReport =
  sendMessage mtrAttributeReport pathSelector

-- | @- value@
value :: IsMTRAttributeReport mtrAttributeReport => mtrAttributeReport -> IO RawId
value mtrAttributeReport =
  sendMessage mtrAttributeReport valueSelector

-- | @- error@
error_ :: IsMTRAttributeReport mtrAttributeReport => mtrAttributeReport -> IO (Id NSError)
error_ mtrAttributeReport =
  sendMessage mtrAttributeReport errorSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @path@
pathSelector :: Selector '[] (Id MTRAttributePath)
pathSelector = mkSelector "path"

-- | @Selector@ for @value@
valueSelector :: Selector '[] RawId
valueSelector = mkSelector "value"

-- | @Selector@ for @error@
errorSelector :: Selector '[] (Id NSError)
errorSelector = mkSelector "error"

