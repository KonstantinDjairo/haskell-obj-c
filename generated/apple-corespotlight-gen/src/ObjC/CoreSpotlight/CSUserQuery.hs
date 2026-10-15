{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @CSUserQuery@.
module ObjC.CoreSpotlight.CSUserQuery
  ( CSUserQuery
  , IsCSUserQuery(..)
  , initWithUserQueryString_userQueryContext
  , start
  , cancel
  , foundSuggestionCount
  , cancelSelector
  , foundSuggestionCountSelector
  , initWithUserQueryString_userQueryContextSelector
  , startSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.CoreSpotlight.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- initWithUserQueryString:userQueryContext:@
initWithUserQueryString_userQueryContext :: (IsCSUserQuery csUserQuery, IsNSString userQueryString, IsCSUserQueryContext userQueryContext) => csUserQuery -> userQueryString -> userQueryContext -> IO (Id CSUserQuery)
initWithUserQueryString_userQueryContext csUserQuery userQueryString userQueryContext =
  sendOwnedMessage csUserQuery initWithUserQueryString_userQueryContextSelector (toNSString userQueryString) (toCSUserQueryContext userQueryContext)

-- | @- start@
start :: IsCSUserQuery csUserQuery => csUserQuery -> IO ()
start csUserQuery =
  sendMessage csUserQuery startSelector

-- | @- cancel@
cancel :: IsCSUserQuery csUserQuery => csUserQuery -> IO ()
cancel csUserQuery =
  sendMessage csUserQuery cancelSelector

-- | @- foundSuggestionCount@
foundSuggestionCount :: IsCSUserQuery csUserQuery => csUserQuery -> IO CLong
foundSuggestionCount csUserQuery =
  sendMessage csUserQuery foundSuggestionCountSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithUserQueryString:userQueryContext:@
initWithUserQueryString_userQueryContextSelector :: Selector '[Id NSString, Id CSUserQueryContext] (Id CSUserQuery)
initWithUserQueryString_userQueryContextSelector = mkSelector "initWithUserQueryString:userQueryContext:"

-- | @Selector@ for @start@
startSelector :: Selector '[] ()
startSelector = mkSelector "start"

-- | @Selector@ for @cancel@
cancelSelector :: Selector '[] ()
cancelSelector = mkSelector "cancel"

-- | @Selector@ for @foundSuggestionCount@
foundSuggestionCountSelector :: Selector '[] CLong
foundSuggestionCountSelector = mkSelector "foundSuggestionCount"

