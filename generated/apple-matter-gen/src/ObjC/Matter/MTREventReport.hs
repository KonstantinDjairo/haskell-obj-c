{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTREventReport@.
module ObjC.Matter.MTREventReport
  ( MTREventReport
  , IsMTREventReport(..)
  , path
  , eventNumber
  , priority
  , timestamp
  , value
  , error_
  , errorSelector
  , eventNumberSelector
  , pathSelector
  , prioritySelector
  , timestampSelector
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
path :: IsMTREventReport mtrEventReport => mtrEventReport -> IO (Id MTREventPath)
path mtrEventReport =
  sendMessage mtrEventReport pathSelector

-- | @- eventNumber@
eventNumber :: IsMTREventReport mtrEventReport => mtrEventReport -> IO (Id NSNumber)
eventNumber mtrEventReport =
  sendMessage mtrEventReport eventNumberSelector

-- | @- priority@
priority :: IsMTREventReport mtrEventReport => mtrEventReport -> IO (Id NSNumber)
priority mtrEventReport =
  sendMessage mtrEventReport prioritySelector

-- | @- timestamp@
timestamp :: IsMTREventReport mtrEventReport => mtrEventReport -> IO (Id NSNumber)
timestamp mtrEventReport =
  sendMessage mtrEventReport timestampSelector

-- | @- value@
value :: IsMTREventReport mtrEventReport => mtrEventReport -> IO RawId
value mtrEventReport =
  sendMessage mtrEventReport valueSelector

-- | @- error@
error_ :: IsMTREventReport mtrEventReport => mtrEventReport -> IO (Id NSError)
error_ mtrEventReport =
  sendMessage mtrEventReport errorSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @path@
pathSelector :: Selector '[] (Id MTREventPath)
pathSelector = mkSelector "path"

-- | @Selector@ for @eventNumber@
eventNumberSelector :: Selector '[] (Id NSNumber)
eventNumberSelector = mkSelector "eventNumber"

-- | @Selector@ for @priority@
prioritySelector :: Selector '[] (Id NSNumber)
prioritySelector = mkSelector "priority"

-- | @Selector@ for @timestamp@
timestampSelector :: Selector '[] (Id NSNumber)
timestampSelector = mkSelector "timestamp"

-- | @Selector@ for @value@
valueSelector :: Selector '[] RawId
valueSelector = mkSelector "value"

-- | @Selector@ for @error@
errorSelector :: Selector '[] (Id NSError)
errorSelector = mkSelector "error"

