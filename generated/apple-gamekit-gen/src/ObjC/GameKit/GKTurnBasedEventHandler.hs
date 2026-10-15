{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @GKTurnBasedEventHandler@.
module ObjC.GameKit.GKTurnBasedEventHandler
  ( GKTurnBasedEventHandler
  , IsGKTurnBasedEventHandler(..)
  , sharedTurnBasedEventHandler
  , sharedTurnBasedEventHandlerSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.GameKit.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @+ sharedTurnBasedEventHandler@
sharedTurnBasedEventHandler :: IO (Id GKTurnBasedEventHandler)
sharedTurnBasedEventHandler  =
  do
    cls' <- getRequiredClass "GKTurnBasedEventHandler"
    sendClassMessage cls' sharedTurnBasedEventHandlerSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @sharedTurnBasedEventHandler@
sharedTurnBasedEventHandlerSelector :: Selector '[] (Id GKTurnBasedEventHandler)
sharedTurnBasedEventHandlerSelector = mkSelector "sharedTurnBasedEventHandler"

