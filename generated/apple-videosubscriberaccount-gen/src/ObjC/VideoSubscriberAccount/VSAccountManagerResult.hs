{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Represents an in-flight request to an account manger.
--
-- Generated bindings for @VSAccountManagerResult@.
module ObjC.VideoSubscriberAccount.VSAccountManagerResult
  ( VSAccountManagerResult
  , IsVSAccountManagerResult(..)
  , init_
  , cancel
  , cancelSelector
  , initSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.VideoSubscriberAccount.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- init@
init_ :: IsVSAccountManagerResult vsAccountManagerResult => vsAccountManagerResult -> IO (Id VSAccountManagerResult)
init_ vsAccountManagerResult =
  sendOwnedMessage vsAccountManagerResult initSelector

-- | Advise the account manager that the app no longer needs the requested work to be done.
--
-- ObjC selector: @- cancel@
cancel :: IsVSAccountManagerResult vsAccountManagerResult => vsAccountManagerResult -> IO ()
cancel vsAccountManagerResult =
  sendMessage vsAccountManagerResult cancelSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id VSAccountManagerResult)
initSelector = mkSelector "init"

-- | @Selector@ for @cancel@
cancelSelector :: Selector '[] ()
cancelSelector = mkSelector "cancel"

