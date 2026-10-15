{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | AVCustomRoutingController
--
-- When a user selects / deselects a 3rd party device in the route picker, this class delegates the activation / deactivation of that device to the client of this class via AVCustomRoutingEvents.
--
-- This class also informs the client which routes have been previously authorized, allowing them to reconnect if appropriate.
--
-- Generated bindings for @AVCustomRoutingController@.
module ObjC.AVRouting.AVCustomRoutingController
  ( AVCustomRoutingController
  , IsAVCustomRoutingController(..)
  , invalidateAuthorizationForRoute
  , setActive_forRoute
  , isRouteActive
  , invalidateAuthorizationForRouteSelector
  , isRouteActiveSelector
  , setActive_forRouteSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AVRouting.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | invalidateAuthorization
--
-- @route@ — The route for which to invalidate authorization.
--
-- Calling this method revokes the app's authorization to connect to a route. The route will only become authorized again if the user selects it via the route picker.
--
-- ObjC selector: @- invalidateAuthorizationForRoute:@
invalidateAuthorizationForRoute :: (IsAVCustomRoutingController avCustomRoutingController, IsAVCustomDeviceRoute route) => avCustomRoutingController -> route -> IO ()
invalidateAuthorizationForRoute avCustomRoutingController route =
  sendMessage avCustomRoutingController invalidateAuthorizationForRouteSelector (toAVCustomDeviceRoute route)

-- | setActive:forRoute:
--
-- @active@ — Whether or not the route is active.
--
-- @route@ — The route to set as active or inactive.
--
-- Set this to NO if the connection to the route temporarily drops, and set it to YES once the connection is reestablished.
--
-- ObjC selector: @- setActive:forRoute:@
setActive_forRoute :: (IsAVCustomRoutingController avCustomRoutingController, IsAVCustomDeviceRoute route) => avCustomRoutingController -> Bool -> route -> IO ()
setActive_forRoute avCustomRoutingController active route =
  sendMessage avCustomRoutingController setActive_forRouteSelector active (toAVCustomDeviceRoute route)

-- | isRouteActive:
--
-- @route@ — The route for which to check active status.
--
-- Returns whether or not the given route is active.
--
-- ObjC selector: @- isRouteActive:@
isRouteActive :: (IsAVCustomRoutingController avCustomRoutingController, IsAVCustomDeviceRoute route) => avCustomRoutingController -> route -> IO Bool
isRouteActive avCustomRoutingController route =
  sendMessage avCustomRoutingController isRouteActiveSelector (toAVCustomDeviceRoute route)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @invalidateAuthorizationForRoute:@
invalidateAuthorizationForRouteSelector :: Selector '[Id AVCustomDeviceRoute] ()
invalidateAuthorizationForRouteSelector = mkSelector "invalidateAuthorizationForRoute:"

-- | @Selector@ for @setActive:forRoute:@
setActive_forRouteSelector :: Selector '[Bool, Id AVCustomDeviceRoute] ()
setActive_forRouteSelector = mkSelector "setActive:forRoute:"

-- | @Selector@ for @isRouteActive:@
isRouteActiveSelector :: Selector '[Id AVCustomDeviceRoute] Bool
isRouteActiveSelector = mkSelector "isRouteActive:"

