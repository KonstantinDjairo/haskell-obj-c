{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | NEAppPushManager
--
-- The NEAppPushManager class declares a programmatic interface to configure NEAppPushProvider.
--
-- NEAppPushManager declares methods and properties for configuring and managing life cycle of app push provider.
--
-- Instances of this class are thread safe.
--
-- Generated bindings for @NEAppPushManager@.
module ObjC.NetworkExtension.NEAppPushManager
  ( NEAppPushManager
  , IsNEAppPushManager(..)
  , loadFromPreferencesWithCompletionHandler
  , removeFromPreferencesWithCompletionHandler
  , saveToPreferencesWithCompletionHandler
  , providerBundleIdentifier
  , setProviderBundleIdentifier
  , delegate
  , setDelegate
  , localizedDescription
  , setLocalizedDescription
  , enabled
  , setEnabled
  , active
  , activeSelector
  , delegateSelector
  , enabledSelector
  , loadFromPreferencesWithCompletionHandlerSelector
  , localizedDescriptionSelector
  , providerBundleIdentifierSelector
  , removeFromPreferencesWithCompletionHandlerSelector
  , saveToPreferencesWithCompletionHandlerSelector
  , setDelegateSelector
  , setEnabledSelector
  , setLocalizedDescriptionSelector
  , setProviderBundleIdentifierSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.NetworkExtension.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | loadFromPreferencesWithCompletionHandler:
--
-- This method loads the saved configuration from the persistent store.
--
-- @completionHandler@ — A block that will be called when the load operation is completed. The NSError object passed to this block will be nil if the load operation succeeded, non-nil otherwise.
--
-- ObjC selector: @- loadFromPreferencesWithCompletionHandler:@
loadFromPreferencesWithCompletionHandler :: IsNEAppPushManager neAppPushManager => neAppPushManager -> Ptr () -> IO ()
loadFromPreferencesWithCompletionHandler neAppPushManager completionHandler =
  sendMessage neAppPushManager loadFromPreferencesWithCompletionHandlerSelector completionHandler

-- | removeFromPreferencesWithCompletionHandler:
--
-- This method removes the configuration from the persistent store.
--
-- @completionHandler@ — A block that will be called when the remove operation is completed. The NSError object passed to this block will be nil if the remove operation succeeded, non-nil otherwise.
--
-- ObjC selector: @- removeFromPreferencesWithCompletionHandler:@
removeFromPreferencesWithCompletionHandler :: IsNEAppPushManager neAppPushManager => neAppPushManager -> Ptr () -> IO ()
removeFromPreferencesWithCompletionHandler neAppPushManager completionHandler =
  sendMessage neAppPushManager removeFromPreferencesWithCompletionHandlerSelector completionHandler

-- | saveToPreferencesWithCompletionHandler:
--
-- This method saves the configuration in the persistent store.
--
-- @completionHandler@ — A block that will be called when the save operation is completed. The NSError object passed to this block will be nil if the save operation succeeded, non-nil otherwise.
--
-- ObjC selector: @- saveToPreferencesWithCompletionHandler:@
saveToPreferencesWithCompletionHandler :: IsNEAppPushManager neAppPushManager => neAppPushManager -> Ptr () -> IO ()
saveToPreferencesWithCompletionHandler neAppPushManager completionHandler =
  sendMessage neAppPushManager saveToPreferencesWithCompletionHandlerSelector completionHandler

-- | providerBundleIdentifier
--
-- A string containing the bundle identifier of the NEAppPushProvider.
--
-- ObjC selector: @- providerBundleIdentifier@
providerBundleIdentifier :: IsNEAppPushManager neAppPushManager => neAppPushManager -> IO RawId
providerBundleIdentifier neAppPushManager =
  sendMessage neAppPushManager providerBundleIdentifierSelector

-- | providerBundleIdentifier
--
-- A string containing the bundle identifier of the NEAppPushProvider.
--
-- ObjC selector: @- setProviderBundleIdentifier:@
setProviderBundleIdentifier :: IsNEAppPushManager neAppPushManager => neAppPushManager -> RawId -> IO ()
setProviderBundleIdentifier neAppPushManager value =
  sendMessage neAppPushManager setProviderBundleIdentifierSelector value

-- | delegate
--
-- An instance of type NEAppPushDelegate that is required to receive incoming call informarion from the provider.
--
-- ObjC selector: @- delegate@
delegate :: IsNEAppPushManager neAppPushManager => neAppPushManager -> IO RawId
delegate neAppPushManager =
  sendMessage neAppPushManager delegateSelector

-- | delegate
--
-- An instance of type NEAppPushDelegate that is required to receive incoming call informarion from the provider.
--
-- ObjC selector: @- setDelegate:@
setDelegate :: IsNEAppPushManager neAppPushManager => neAppPushManager -> RawId -> IO ()
setDelegate neAppPushManager value =
  sendMessage neAppPushManager setDelegateSelector value

-- | localizedDescription
--
-- A string containing a description of the app push manager.
--
-- ObjC selector: @- localizedDescription@
localizedDescription :: IsNEAppPushManager neAppPushManager => neAppPushManager -> IO RawId
localizedDescription neAppPushManager =
  sendMessage neAppPushManager localizedDescriptionSelector

-- | localizedDescription
--
-- A string containing a description of the app push manager.
--
-- ObjC selector: @- setLocalizedDescription:@
setLocalizedDescription :: IsNEAppPushManager neAppPushManager => neAppPushManager -> RawId -> IO ()
setLocalizedDescription neAppPushManager value =
  sendMessage neAppPushManager setLocalizedDescriptionSelector value

-- | enabled
--
-- Toggles the enabled status of the configuration. This property will be set to NO when the same app saves another configuration that overlaps with this configuration.
--
-- ObjC selector: @- enabled@
enabled :: IsNEAppPushManager neAppPushManager => neAppPushManager -> IO Bool
enabled neAppPushManager =
  sendMessage neAppPushManager enabledSelector

-- | enabled
--
-- Toggles the enabled status of the configuration. This property will be set to NO when the same app saves another configuration that overlaps with this configuration.
--
-- ObjC selector: @- setEnabled:@
setEnabled :: IsNEAppPushManager neAppPushManager => neAppPushManager -> Bool -> IO ()
setEnabled neAppPushManager value =
  sendMessage neAppPushManager setEnabledSelector value

-- | active
--
-- If set to YES, it indicates the associated configuration is in use. Use KVO to watch for changes.
--
-- ObjC selector: @- active@
active :: IsNEAppPushManager neAppPushManager => neAppPushManager -> IO Bool
active neAppPushManager =
  sendMessage neAppPushManager activeSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @loadFromPreferencesWithCompletionHandler:@
loadFromPreferencesWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
loadFromPreferencesWithCompletionHandlerSelector = mkSelector "loadFromPreferencesWithCompletionHandler:"

-- | @Selector@ for @removeFromPreferencesWithCompletionHandler:@
removeFromPreferencesWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
removeFromPreferencesWithCompletionHandlerSelector = mkSelector "removeFromPreferencesWithCompletionHandler:"

-- | @Selector@ for @saveToPreferencesWithCompletionHandler:@
saveToPreferencesWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
saveToPreferencesWithCompletionHandlerSelector = mkSelector "saveToPreferencesWithCompletionHandler:"

-- | @Selector@ for @providerBundleIdentifier@
providerBundleIdentifierSelector :: Selector '[] RawId
providerBundleIdentifierSelector = mkSelector "providerBundleIdentifier"

-- | @Selector@ for @setProviderBundleIdentifier:@
setProviderBundleIdentifierSelector :: Selector '[RawId] ()
setProviderBundleIdentifierSelector = mkSelector "setProviderBundleIdentifier:"

-- | @Selector@ for @delegate@
delegateSelector :: Selector '[] RawId
delegateSelector = mkSelector "delegate"

-- | @Selector@ for @setDelegate:@
setDelegateSelector :: Selector '[RawId] ()
setDelegateSelector = mkSelector "setDelegate:"

-- | @Selector@ for @localizedDescription@
localizedDescriptionSelector :: Selector '[] RawId
localizedDescriptionSelector = mkSelector "localizedDescription"

-- | @Selector@ for @setLocalizedDescription:@
setLocalizedDescriptionSelector :: Selector '[RawId] ()
setLocalizedDescriptionSelector = mkSelector "setLocalizedDescription:"

-- | @Selector@ for @enabled@
enabledSelector :: Selector '[] Bool
enabledSelector = mkSelector "enabled"

-- | @Selector@ for @setEnabled:@
setEnabledSelector :: Selector '[Bool] ()
setEnabledSelector = mkSelector "setEnabled:"

-- | @Selector@ for @active@
activeSelector :: Selector '[] Bool
activeSelector = mkSelector "active"

