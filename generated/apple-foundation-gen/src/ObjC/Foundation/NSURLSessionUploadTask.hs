{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @NSURLSessionUploadTask@.
module ObjC.Foundation.NSURLSessionUploadTask
  ( NSURLSessionUploadTask
  , IsNSURLSessionUploadTask(..)
  , init_
  , new
  , initSelector
  , newSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.Foundation.Internal.Classes

-- | @- init@
init_ :: IsNSURLSessionUploadTask nsurlSessionUploadTask => nsurlSessionUploadTask -> IO (Id NSURLSessionUploadTask)
init_ nsurlSessionUploadTask =
  sendOwnedMessage nsurlSessionUploadTask initSelector

-- | @+ new@
new :: IO (Id NSURLSessionUploadTask)
new  =
  do
    cls' <- getRequiredClass "NSURLSessionUploadTask"
    sendOwnedClassMessage cls' newSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id NSURLSessionUploadTask)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id NSURLSessionUploadTask)
newSelector = mkSelector "new"

