{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | NEHotspotHS20Settings
--
-- NEHotspotHS20Settings class provides a set of properties that are required   to discover and negotiate Hotspot 2.0 Wi-Fi networks.
--
-- Generated bindings for @NEHotspotHS20Settings@.
module ObjC.NetworkExtension.NEHotspotHS20Settings
  ( NEHotspotHS20Settings
  , IsNEHotspotHS20Settings(..)
  , initWithDomainName_roamingEnabled
  , domainName
  , roamingEnabled
  , setRoamingEnabled
  , domainNameSelector
  , initWithDomainName_roamingEnabledSelector
  , roamingEnabledSelector
  , setRoamingEnabledSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.NetworkExtension.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | initWithDomainName:roamingEnabled
--
-- A designated initializer to instantiate a new NEHotspotHSSettings object.   This initializer is used to configure Legacy Hotspot or HS2.0 Wi-Fi Networks.
--
-- @domainName@ — The domain name of HS2.0 Wi-Fi Network
--
-- @roamingEnabled@ — If YES, allows connections to networks of roaming service providers.
--
-- ObjC selector: @- initWithDomainName:roamingEnabled:@
initWithDomainName_roamingEnabled :: (IsNEHotspotHS20Settings neHotspotHS20Settings, IsNSString domainName) => neHotspotHS20Settings -> domainName -> Bool -> IO (Id NEHotspotHS20Settings)
initWithDomainName_roamingEnabled neHotspotHS20Settings domainName roamingEnabled =
  sendOwnedMessage neHotspotHS20Settings initWithDomainName_roamingEnabledSelector (toNSString domainName) roamingEnabled

-- | domainName
--
-- Domain Name of Legacy Hotspot or Hotspot 2.0 Wi-Fi Network.   This Domain Name is used for Wi-Fi Hotspot 2.0 negotiation.
--
-- ObjC selector: @- domainName@
domainName :: IsNEHotspotHS20Settings neHotspotHS20Settings => neHotspotHS20Settings -> IO RawId
domainName neHotspotHS20Settings =
  sendMessage neHotspotHS20Settings domainNameSelector

-- | roamingEnabled
--
-- If set to YES, allows connection to networks of roaming service   providers. Defaults to NO.
--
-- ObjC selector: @- roamingEnabled@
roamingEnabled :: IsNEHotspotHS20Settings neHotspotHS20Settings => neHotspotHS20Settings -> IO Bool
roamingEnabled neHotspotHS20Settings =
  sendMessage neHotspotHS20Settings roamingEnabledSelector

-- | roamingEnabled
--
-- If set to YES, allows connection to networks of roaming service   providers. Defaults to NO.
--
-- ObjC selector: @- setRoamingEnabled:@
setRoamingEnabled :: IsNEHotspotHS20Settings neHotspotHS20Settings => neHotspotHS20Settings -> Bool -> IO ()
setRoamingEnabled neHotspotHS20Settings value =
  sendMessage neHotspotHS20Settings setRoamingEnabledSelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithDomainName:roamingEnabled:@
initWithDomainName_roamingEnabledSelector :: Selector '[Id NSString, Bool] (Id NEHotspotHS20Settings)
initWithDomainName_roamingEnabledSelector = mkSelector "initWithDomainName:roamingEnabled:"

-- | @Selector@ for @domainName@
domainNameSelector :: Selector '[] RawId
domainNameSelector = mkSelector "domainName"

-- | @Selector@ for @roamingEnabled@
roamingEnabledSelector :: Selector '[] Bool
roamingEnabledSelector = mkSelector "roamingEnabled"

-- | @Selector@ for @setRoamingEnabled:@
setRoamingEnabledSelector :: Selector '[Bool] ()
setRoamingEnabledSelector = mkSelector "setRoamingEnabled:"

