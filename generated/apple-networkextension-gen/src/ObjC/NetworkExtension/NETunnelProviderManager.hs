{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | NETunnelProviderManager
--
-- The NETunnelProviderManager class declares the programmatic interface for an object that is used to configure and control network tunnels provided by NETunnelProviders.
--
-- Instances of this class are thread safe.
--
-- Generated bindings for @NETunnelProviderManager@.
module ObjC.NetworkExtension.NETunnelProviderManager
  ( NETunnelProviderManager
  , IsNETunnelProviderManager(..)
  , forPerAppVPN
  , copyAppRules
  , routingMethod
  , copyAppRulesSelector
  , forPerAppVPNSelector
  , routingMethodSelector

  -- * Enum types
  , NETunnelProviderRoutingMethod(NETunnelProviderRoutingMethod)
  , pattern NETunnelProviderRoutingMethodDestinationIP
  , pattern NETunnelProviderRoutingMethodSourceApplication
  , pattern NETunnelProviderRoutingMethodNetworkRule

  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.NetworkExtension.Internal.Classes
import ObjC.NetworkExtension.Internal.Enums
import ObjC.Foundation.Internal.Classes

-- | forPerAppVPN
--
-- Create a NETunnelProviderManager instance that is used to manage a per-app VPN configuration.
--
-- ObjC selector: @+ forPerAppVPN@
forPerAppVPN :: IO (Id NETunnelProviderManager)
forPerAppVPN  =
  do
    cls' <- getRequiredClass "NETunnelProviderManager"
    sendClassMessage cls' forPerAppVPNSelector

-- | copyAppRules
--
-- This function returns an array of NEAppRule objects.
--
-- ObjC selector: @- copyAppRules@
copyAppRules :: IsNETunnelProviderManager neTunnelProviderManager => neTunnelProviderManager -> IO (Id NSArray)
copyAppRules neTunnelProviderManager =
  sendOwnedMessage neTunnelProviderManager copyAppRulesSelector

-- | routingMethod
--
-- The method by which network traffic is routed to the tunnel. The default is NETunnelProviderRoutingMethodDestinationIP.
--
-- ObjC selector: @- routingMethod@
routingMethod :: IsNETunnelProviderManager neTunnelProviderManager => neTunnelProviderManager -> IO NETunnelProviderRoutingMethod
routingMethod neTunnelProviderManager =
  sendMessage neTunnelProviderManager routingMethodSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @forPerAppVPN@
forPerAppVPNSelector :: Selector '[] (Id NETunnelProviderManager)
forPerAppVPNSelector = mkSelector "forPerAppVPN"

-- | @Selector@ for @copyAppRules@
copyAppRulesSelector :: Selector '[] (Id NSArray)
copyAppRulesSelector = mkSelector "copyAppRules"

-- | @Selector@ for @routingMethod@
routingMethodSelector :: Selector '[] NETunnelProviderRoutingMethod
routingMethodSelector = mkSelector "routingMethod"

