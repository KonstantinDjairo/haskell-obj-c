{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @DDMatch@.
module ObjC.DataDetection.DDMatch
  ( DDMatch
  , IsDDMatch(..)
  , init_
  , matchedString
  , initSelector
  , matchedStringSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.DataDetection.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- init@
init_ :: IsDDMatch ddMatch => ddMatch -> IO (Id DDMatch)
init_ ddMatch =
  sendOwnedMessage ddMatch initSelector

-- | @- matchedString@
matchedString :: IsDDMatch ddMatch => ddMatch -> IO (Id NSString)
matchedString ddMatch =
  sendMessage ddMatch matchedStringSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id DDMatch)
initSelector = mkSelector "init"

-- | @Selector@ for @matchedString@
matchedStringSelector :: Selector '[] (Id NSString)
matchedStringSelector = mkSelector "matchedString"

