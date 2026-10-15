{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | A WKWebViewConfiguration object is a collection of properties with which to initialize a web view.
--
-- Contains properties used to configure a
--
-- WKWebView
--
-- .
--
-- Generated bindings for @WKWebViewConfiguration@.
module ObjC.WebKit.WKWebViewConfiguration
  ( WKWebViewConfiguration
  , IsWKWebViewConfiguration(..)
  , setURLSchemeHandler_forURLScheme
  , urlSchemeHandlerForURLScheme
  , processPool
  , setProcessPool
  , preferences
  , setPreferences
  , userContentController
  , setUserContentController
  , websiteDataStore
  , setWebsiteDataStore
  , suppressesIncrementalRendering
  , setSuppressesIncrementalRendering
  , applicationNameForUserAgent
  , setApplicationNameForUserAgent
  , allowsAirPlayForMediaPlayback
  , setAllowsAirPlayForMediaPlayback
  , upgradeKnownHostsToHTTPS
  , setUpgradeKnownHostsToHTTPS
  , mediaTypesRequiringUserActionForPlayback
  , setMediaTypesRequiringUserActionForPlayback
  , defaultWebpagePreferences
  , setDefaultWebpagePreferences
  , limitsNavigationsToAppBoundDomains
  , setLimitsNavigationsToAppBoundDomains
  , userInterfaceDirectionPolicy
  , setUserInterfaceDirectionPolicy
  , allowsAirPlayForMediaPlaybackSelector
  , applicationNameForUserAgentSelector
  , defaultWebpagePreferencesSelector
  , limitsNavigationsToAppBoundDomainsSelector
  , mediaTypesRequiringUserActionForPlaybackSelector
  , preferencesSelector
  , processPoolSelector
  , setAllowsAirPlayForMediaPlaybackSelector
  , setApplicationNameForUserAgentSelector
  , setDefaultWebpagePreferencesSelector
  , setLimitsNavigationsToAppBoundDomainsSelector
  , setMediaTypesRequiringUserActionForPlaybackSelector
  , setPreferencesSelector
  , setProcessPoolSelector
  , setSuppressesIncrementalRenderingSelector
  , setURLSchemeHandler_forURLSchemeSelector
  , setUpgradeKnownHostsToHTTPSSelector
  , setUserContentControllerSelector
  , setUserInterfaceDirectionPolicySelector
  , setWebsiteDataStoreSelector
  , suppressesIncrementalRenderingSelector
  , upgradeKnownHostsToHTTPSSelector
  , urlSchemeHandlerForURLSchemeSelector
  , userContentControllerSelector
  , userInterfaceDirectionPolicySelector
  , websiteDataStoreSelector

  -- * Enum types
  , WKAudiovisualMediaTypes(WKAudiovisualMediaTypes)
  , pattern WKAudiovisualMediaTypeNone
  , pattern WKAudiovisualMediaTypeAudio
  , pattern WKAudiovisualMediaTypeVideo
  , pattern WKAudiovisualMediaTypeAll
  , WKUserInterfaceDirectionPolicy(WKUserInterfaceDirectionPolicy)
  , pattern WKUserInterfaceDirectionPolicyContent
  , pattern WKUserInterfaceDirectionPolicySystem

  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.WebKit.Internal.Classes
import ObjC.WebKit.Internal.Enums
import ObjC.Foundation.Internal.Classes

-- | @- setURLSchemeHandler:forURLScheme:@
setURLSchemeHandler_forURLScheme :: (IsWKWebViewConfiguration wkWebViewConfiguration, IsNSString urlScheme) => wkWebViewConfiguration -> RawId -> urlScheme -> IO ()
setURLSchemeHandler_forURLScheme wkWebViewConfiguration urlSchemeHandler urlScheme =
  sendMessage wkWebViewConfiguration setURLSchemeHandler_forURLSchemeSelector urlSchemeHandler (toNSString urlScheme)

-- | @- urlSchemeHandlerForURLScheme:@
urlSchemeHandlerForURLScheme :: (IsWKWebViewConfiguration wkWebViewConfiguration, IsNSString urlScheme) => wkWebViewConfiguration -> urlScheme -> IO RawId
urlSchemeHandlerForURLScheme wkWebViewConfiguration urlScheme =
  sendMessage wkWebViewConfiguration urlSchemeHandlerForURLSchemeSelector (toNSString urlScheme)

-- | The process pool from which to obtain the view's web content process.
--
-- When a web view is initialized, a new web content process will be created for it from the specified pool, or an existing process in that pool will be used.
--
-- ObjC selector: @- processPool@
processPool :: IsWKWebViewConfiguration wkWebViewConfiguration => wkWebViewConfiguration -> IO (Id WKProcessPool)
processPool wkWebViewConfiguration =
  sendMessage wkWebViewConfiguration processPoolSelector

-- | The process pool from which to obtain the view's web content process.
--
-- When a web view is initialized, a new web content process will be created for it from the specified pool, or an existing process in that pool will be used.
--
-- ObjC selector: @- setProcessPool:@
setProcessPool :: (IsWKWebViewConfiguration wkWebViewConfiguration, IsWKProcessPool value) => wkWebViewConfiguration -> value -> IO ()
setProcessPool wkWebViewConfiguration value =
  sendMessage wkWebViewConfiguration setProcessPoolSelector (toWKProcessPool value)

-- | The preference settings to be used by the web view.
--
-- ObjC selector: @- preferences@
preferences :: IsWKWebViewConfiguration wkWebViewConfiguration => wkWebViewConfiguration -> IO (Id WKPreferences)
preferences wkWebViewConfiguration =
  sendMessage wkWebViewConfiguration preferencesSelector

-- | The preference settings to be used by the web view.
--
-- ObjC selector: @- setPreferences:@
setPreferences :: (IsWKWebViewConfiguration wkWebViewConfiguration, IsWKPreferences value) => wkWebViewConfiguration -> value -> IO ()
setPreferences wkWebViewConfiguration value =
  sendMessage wkWebViewConfiguration setPreferencesSelector (toWKPreferences value)

-- | The user content controller to associate with the web view.
--
-- ObjC selector: @- userContentController@
userContentController :: IsWKWebViewConfiguration wkWebViewConfiguration => wkWebViewConfiguration -> IO (Id WKUserContentController)
userContentController wkWebViewConfiguration =
  sendMessage wkWebViewConfiguration userContentControllerSelector

-- | The user content controller to associate with the web view.
--
-- ObjC selector: @- setUserContentController:@
setUserContentController :: (IsWKWebViewConfiguration wkWebViewConfiguration, IsWKUserContentController value) => wkWebViewConfiguration -> value -> IO ()
setUserContentController wkWebViewConfiguration value =
  sendMessage wkWebViewConfiguration setUserContentControllerSelector (toWKUserContentController value)

-- | The website data store to be used by the web view.
--
-- ObjC selector: @- websiteDataStore@
websiteDataStore :: IsWKWebViewConfiguration wkWebViewConfiguration => wkWebViewConfiguration -> IO (Id WKWebsiteDataStore)
websiteDataStore wkWebViewConfiguration =
  sendMessage wkWebViewConfiguration websiteDataStoreSelector

-- | The website data store to be used by the web view.
--
-- ObjC selector: @- setWebsiteDataStore:@
setWebsiteDataStore :: (IsWKWebViewConfiguration wkWebViewConfiguration, IsWKWebsiteDataStore value) => wkWebViewConfiguration -> value -> IO ()
setWebsiteDataStore wkWebViewConfiguration value =
  sendMessage wkWebViewConfiguration setWebsiteDataStoreSelector (toWKWebsiteDataStore value)

-- | A Boolean value indicating whether the web view suppresses content rendering until it is fully loaded into memory.
--
-- The default value is NO.
--
-- ObjC selector: @- suppressesIncrementalRendering@
suppressesIncrementalRendering :: IsWKWebViewConfiguration wkWebViewConfiguration => wkWebViewConfiguration -> IO Bool
suppressesIncrementalRendering wkWebViewConfiguration =
  sendMessage wkWebViewConfiguration suppressesIncrementalRenderingSelector

-- | A Boolean value indicating whether the web view suppresses content rendering until it is fully loaded into memory.
--
-- The default value is NO.
--
-- ObjC selector: @- setSuppressesIncrementalRendering:@
setSuppressesIncrementalRendering :: IsWKWebViewConfiguration wkWebViewConfiguration => wkWebViewConfiguration -> Bool -> IO ()
setSuppressesIncrementalRendering wkWebViewConfiguration value =
  sendMessage wkWebViewConfiguration setSuppressesIncrementalRenderingSelector value

-- | The name of the application as used in the user agent string.
--
-- ObjC selector: @- applicationNameForUserAgent@
applicationNameForUserAgent :: IsWKWebViewConfiguration wkWebViewConfiguration => wkWebViewConfiguration -> IO (Id NSString)
applicationNameForUserAgent wkWebViewConfiguration =
  sendMessage wkWebViewConfiguration applicationNameForUserAgentSelector

-- | The name of the application as used in the user agent string.
--
-- ObjC selector: @- setApplicationNameForUserAgent:@
setApplicationNameForUserAgent :: (IsWKWebViewConfiguration wkWebViewConfiguration, IsNSString value) => wkWebViewConfiguration -> value -> IO ()
setApplicationNameForUserAgent wkWebViewConfiguration value =
  sendMessage wkWebViewConfiguration setApplicationNameForUserAgentSelector (toNSString value)

-- | A Boolean value indicating whether AirPlay is allowed.
--
-- The default value is YES.
--
-- ObjC selector: @- allowsAirPlayForMediaPlayback@
allowsAirPlayForMediaPlayback :: IsWKWebViewConfiguration wkWebViewConfiguration => wkWebViewConfiguration -> IO Bool
allowsAirPlayForMediaPlayback wkWebViewConfiguration =
  sendMessage wkWebViewConfiguration allowsAirPlayForMediaPlaybackSelector

-- | A Boolean value indicating whether AirPlay is allowed.
--
-- The default value is YES.
--
-- ObjC selector: @- setAllowsAirPlayForMediaPlayback:@
setAllowsAirPlayForMediaPlayback :: IsWKWebViewConfiguration wkWebViewConfiguration => wkWebViewConfiguration -> Bool -> IO ()
setAllowsAirPlayForMediaPlayback wkWebViewConfiguration value =
  sendMessage wkWebViewConfiguration setAllowsAirPlayForMediaPlaybackSelector value

-- | A Boolean value indicating whether HTTP requests to servers known to support HTTPS should be automatically upgraded to HTTPS requests.
--
-- The default value is YES.
--
-- ObjC selector: @- upgradeKnownHostsToHTTPS@
upgradeKnownHostsToHTTPS :: IsWKWebViewConfiguration wkWebViewConfiguration => wkWebViewConfiguration -> IO Bool
upgradeKnownHostsToHTTPS wkWebViewConfiguration =
  sendMessage wkWebViewConfiguration upgradeKnownHostsToHTTPSSelector

-- | A Boolean value indicating whether HTTP requests to servers known to support HTTPS should be automatically upgraded to HTTPS requests.
--
-- The default value is YES.
--
-- ObjC selector: @- setUpgradeKnownHostsToHTTPS:@
setUpgradeKnownHostsToHTTPS :: IsWKWebViewConfiguration wkWebViewConfiguration => wkWebViewConfiguration -> Bool -> IO ()
setUpgradeKnownHostsToHTTPS wkWebViewConfiguration value =
  sendMessage wkWebViewConfiguration setUpgradeKnownHostsToHTTPSSelector value

-- | @- mediaTypesRequiringUserActionForPlayback@
mediaTypesRequiringUserActionForPlayback :: IsWKWebViewConfiguration wkWebViewConfiguration => wkWebViewConfiguration -> IO WKAudiovisualMediaTypes
mediaTypesRequiringUserActionForPlayback wkWebViewConfiguration =
  sendMessage wkWebViewConfiguration mediaTypesRequiringUserActionForPlaybackSelector

-- | @- setMediaTypesRequiringUserActionForPlayback:@
setMediaTypesRequiringUserActionForPlayback :: IsWKWebViewConfiguration wkWebViewConfiguration => wkWebViewConfiguration -> WKAudiovisualMediaTypes -> IO ()
setMediaTypesRequiringUserActionForPlayback wkWebViewConfiguration value =
  sendMessage wkWebViewConfiguration setMediaTypesRequiringUserActionForPlaybackSelector value

-- | The set of default webpage preferences to use when loading and rendering content.
--
-- These default webpage preferences are additionally passed to the navigation delegate in -webView:decidePolicyForNavigationAction:preferences:decisionHandler:.
--
-- ObjC selector: @- defaultWebpagePreferences@
defaultWebpagePreferences :: IsWKWebViewConfiguration wkWebViewConfiguration => wkWebViewConfiguration -> IO (Id WKWebpagePreferences)
defaultWebpagePreferences wkWebViewConfiguration =
  sendMessage wkWebViewConfiguration defaultWebpagePreferencesSelector

-- | The set of default webpage preferences to use when loading and rendering content.
--
-- These default webpage preferences are additionally passed to the navigation delegate in -webView:decidePolicyForNavigationAction:preferences:decisionHandler:.
--
-- ObjC selector: @- setDefaultWebpagePreferences:@
setDefaultWebpagePreferences :: (IsWKWebViewConfiguration wkWebViewConfiguration, IsWKWebpagePreferences value) => wkWebViewConfiguration -> value -> IO ()
setDefaultWebpagePreferences wkWebViewConfiguration value =
  sendMessage wkWebViewConfiguration setDefaultWebpagePreferencesSelector (toWKWebpagePreferences value)

-- | @- limitsNavigationsToAppBoundDomains@
limitsNavigationsToAppBoundDomains :: IsWKWebViewConfiguration wkWebViewConfiguration => wkWebViewConfiguration -> IO Bool
limitsNavigationsToAppBoundDomains wkWebViewConfiguration =
  sendMessage wkWebViewConfiguration limitsNavigationsToAppBoundDomainsSelector

-- | @- setLimitsNavigationsToAppBoundDomains:@
setLimitsNavigationsToAppBoundDomains :: IsWKWebViewConfiguration wkWebViewConfiguration => wkWebViewConfiguration -> Bool -> IO ()
setLimitsNavigationsToAppBoundDomains wkWebViewConfiguration value =
  sendMessage wkWebViewConfiguration setLimitsNavigationsToAppBoundDomainsSelector value

-- | The directionality of user interface elements.
--
-- Possible values are described in WKUserInterfaceDirectionPolicy. The default value is WKUserInterfaceDirectionPolicyContent.
--
-- ObjC selector: @- userInterfaceDirectionPolicy@
userInterfaceDirectionPolicy :: IsWKWebViewConfiguration wkWebViewConfiguration => wkWebViewConfiguration -> IO WKUserInterfaceDirectionPolicy
userInterfaceDirectionPolicy wkWebViewConfiguration =
  sendMessage wkWebViewConfiguration userInterfaceDirectionPolicySelector

-- | The directionality of user interface elements.
--
-- Possible values are described in WKUserInterfaceDirectionPolicy. The default value is WKUserInterfaceDirectionPolicyContent.
--
-- ObjC selector: @- setUserInterfaceDirectionPolicy:@
setUserInterfaceDirectionPolicy :: IsWKWebViewConfiguration wkWebViewConfiguration => wkWebViewConfiguration -> WKUserInterfaceDirectionPolicy -> IO ()
setUserInterfaceDirectionPolicy wkWebViewConfiguration value =
  sendMessage wkWebViewConfiguration setUserInterfaceDirectionPolicySelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @setURLSchemeHandler:forURLScheme:@
setURLSchemeHandler_forURLSchemeSelector :: Selector '[RawId, Id NSString] ()
setURLSchemeHandler_forURLSchemeSelector = mkSelector "setURLSchemeHandler:forURLScheme:"

-- | @Selector@ for @urlSchemeHandlerForURLScheme:@
urlSchemeHandlerForURLSchemeSelector :: Selector '[Id NSString] RawId
urlSchemeHandlerForURLSchemeSelector = mkSelector "urlSchemeHandlerForURLScheme:"

-- | @Selector@ for @processPool@
processPoolSelector :: Selector '[] (Id WKProcessPool)
processPoolSelector = mkSelector "processPool"

-- | @Selector@ for @setProcessPool:@
setProcessPoolSelector :: Selector '[Id WKProcessPool] ()
setProcessPoolSelector = mkSelector "setProcessPool:"

-- | @Selector@ for @preferences@
preferencesSelector :: Selector '[] (Id WKPreferences)
preferencesSelector = mkSelector "preferences"

-- | @Selector@ for @setPreferences:@
setPreferencesSelector :: Selector '[Id WKPreferences] ()
setPreferencesSelector = mkSelector "setPreferences:"

-- | @Selector@ for @userContentController@
userContentControllerSelector :: Selector '[] (Id WKUserContentController)
userContentControllerSelector = mkSelector "userContentController"

-- | @Selector@ for @setUserContentController:@
setUserContentControllerSelector :: Selector '[Id WKUserContentController] ()
setUserContentControllerSelector = mkSelector "setUserContentController:"

-- | @Selector@ for @websiteDataStore@
websiteDataStoreSelector :: Selector '[] (Id WKWebsiteDataStore)
websiteDataStoreSelector = mkSelector "websiteDataStore"

-- | @Selector@ for @setWebsiteDataStore:@
setWebsiteDataStoreSelector :: Selector '[Id WKWebsiteDataStore] ()
setWebsiteDataStoreSelector = mkSelector "setWebsiteDataStore:"

-- | @Selector@ for @suppressesIncrementalRendering@
suppressesIncrementalRenderingSelector :: Selector '[] Bool
suppressesIncrementalRenderingSelector = mkSelector "suppressesIncrementalRendering"

-- | @Selector@ for @setSuppressesIncrementalRendering:@
setSuppressesIncrementalRenderingSelector :: Selector '[Bool] ()
setSuppressesIncrementalRenderingSelector = mkSelector "setSuppressesIncrementalRendering:"

-- | @Selector@ for @applicationNameForUserAgent@
applicationNameForUserAgentSelector :: Selector '[] (Id NSString)
applicationNameForUserAgentSelector = mkSelector "applicationNameForUserAgent"

-- | @Selector@ for @setApplicationNameForUserAgent:@
setApplicationNameForUserAgentSelector :: Selector '[Id NSString] ()
setApplicationNameForUserAgentSelector = mkSelector "setApplicationNameForUserAgent:"

-- | @Selector@ for @allowsAirPlayForMediaPlayback@
allowsAirPlayForMediaPlaybackSelector :: Selector '[] Bool
allowsAirPlayForMediaPlaybackSelector = mkSelector "allowsAirPlayForMediaPlayback"

-- | @Selector@ for @setAllowsAirPlayForMediaPlayback:@
setAllowsAirPlayForMediaPlaybackSelector :: Selector '[Bool] ()
setAllowsAirPlayForMediaPlaybackSelector = mkSelector "setAllowsAirPlayForMediaPlayback:"

-- | @Selector@ for @upgradeKnownHostsToHTTPS@
upgradeKnownHostsToHTTPSSelector :: Selector '[] Bool
upgradeKnownHostsToHTTPSSelector = mkSelector "upgradeKnownHostsToHTTPS"

-- | @Selector@ for @setUpgradeKnownHostsToHTTPS:@
setUpgradeKnownHostsToHTTPSSelector :: Selector '[Bool] ()
setUpgradeKnownHostsToHTTPSSelector = mkSelector "setUpgradeKnownHostsToHTTPS:"

-- | @Selector@ for @mediaTypesRequiringUserActionForPlayback@
mediaTypesRequiringUserActionForPlaybackSelector :: Selector '[] WKAudiovisualMediaTypes
mediaTypesRequiringUserActionForPlaybackSelector = mkSelector "mediaTypesRequiringUserActionForPlayback"

-- | @Selector@ for @setMediaTypesRequiringUserActionForPlayback:@
setMediaTypesRequiringUserActionForPlaybackSelector :: Selector '[WKAudiovisualMediaTypes] ()
setMediaTypesRequiringUserActionForPlaybackSelector = mkSelector "setMediaTypesRequiringUserActionForPlayback:"

-- | @Selector@ for @defaultWebpagePreferences@
defaultWebpagePreferencesSelector :: Selector '[] (Id WKWebpagePreferences)
defaultWebpagePreferencesSelector = mkSelector "defaultWebpagePreferences"

-- | @Selector@ for @setDefaultWebpagePreferences:@
setDefaultWebpagePreferencesSelector :: Selector '[Id WKWebpagePreferences] ()
setDefaultWebpagePreferencesSelector = mkSelector "setDefaultWebpagePreferences:"

-- | @Selector@ for @limitsNavigationsToAppBoundDomains@
limitsNavigationsToAppBoundDomainsSelector :: Selector '[] Bool
limitsNavigationsToAppBoundDomainsSelector = mkSelector "limitsNavigationsToAppBoundDomains"

-- | @Selector@ for @setLimitsNavigationsToAppBoundDomains:@
setLimitsNavigationsToAppBoundDomainsSelector :: Selector '[Bool] ()
setLimitsNavigationsToAppBoundDomainsSelector = mkSelector "setLimitsNavigationsToAppBoundDomains:"

-- | @Selector@ for @userInterfaceDirectionPolicy@
userInterfaceDirectionPolicySelector :: Selector '[] WKUserInterfaceDirectionPolicy
userInterfaceDirectionPolicySelector = mkSelector "userInterfaceDirectionPolicy"

-- | @Selector@ for @setUserInterfaceDirectionPolicy:@
setUserInterfaceDirectionPolicySelector :: Selector '[WKUserInterfaceDirectionPolicy] ()
setUserInterfaceDirectionPolicySelector = mkSelector "setUserInterfaceDirectionPolicy:"

