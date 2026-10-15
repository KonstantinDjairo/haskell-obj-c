{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | AVCustomRoutingEvent
--
-- This class represents an event that occurs on a route.
--
-- Depending on the reason for the event, clients are expected to establish or tear down the connection to the given route.
--
-- Generated bindings for @AVCustomRoutingEvent@.
module ObjC.AVRouting.AVCustomRoutingEvent
  ( AVCustomRoutingEvent
  , IsAVCustomRoutingEvent(..)
  , reason
  , route
  , reasonSelector
  , routeSelector

  -- * Enum types
  , AVCustomRoutingEventReason(AVCustomRoutingEventReason)
  , pattern AVCustomRoutingEventReasonActivate
  , pattern AVCustomRoutingEventReasonDeactivate
  , pattern AVCustomRoutingEventReasonReactivate

  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AVRouting.Internal.Classes
import ObjC.AVRouting.Internal.Enums
import ObjC.Foundation.Internal.Classes

-- | reason
--
-- The reason for the event.
--
-- ObjC selector: @- reason@
reason :: IsAVCustomRoutingEvent avCustomRoutingEvent => avCustomRoutingEvent -> IO AVCustomRoutingEventReason
reason avCustomRoutingEvent =
  sendMessage avCustomRoutingEvent reasonSelector

-- | route
--
-- The route associated with the event.
--
-- ObjC selector: @- route@
route :: IsAVCustomRoutingEvent avCustomRoutingEvent => avCustomRoutingEvent -> IO RawId
route avCustomRoutingEvent =
  sendMessage avCustomRoutingEvent routeSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @reason@
reasonSelector :: Selector '[] AVCustomRoutingEventReason
reasonSelector = mkSelector "reason"

-- | @Selector@ for @route@
routeSelector :: Selector '[] RawId
routeSelector = mkSelector "route"

