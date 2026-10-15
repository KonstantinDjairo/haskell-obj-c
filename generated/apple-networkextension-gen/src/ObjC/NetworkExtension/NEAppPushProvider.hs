{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | NEAppPushProvider
--
-- The NEAppPushProvider class declares a programmatic interface to manage a life cycle of app push provider. It also allows the provider to handle outgoing communication message from the containing app, and pass incoming call message to the containing app. NEAppPushProvider is part of NetworkExtension.framework
--
-- Generated bindings for @NEAppPushProvider@.
module ObjC.NetworkExtension.NEAppPushProvider
  ( NEAppPushProvider
  , IsNEAppPushProvider(..)
  , startWithCompletionHandler
  , start
  , stopWithReason_completionHandler
  , reportIncomingCallWithUserInfo
  , handleTimerEvent
  , handleTimerEventSelector
  , reportIncomingCallWithUserInfoSelector
  , startSelector
  , startWithCompletionHandlerSelector
  , stopWithReason_completionHandlerSelector

  -- * Enum types
  , NEProviderStopReason(NEProviderStopReason)
  , pattern NEProviderStopReasonNone
  , pattern NEProviderStopReasonUserInitiated
  , pattern NEProviderStopReasonProviderFailed
  , pattern NEProviderStopReasonNoNetworkAvailable
  , pattern NEProviderStopReasonUnrecoverableNetworkChange
  , pattern NEProviderStopReasonProviderDisabled
  , pattern NEProviderStopReasonAuthenticationCanceled
  , pattern NEProviderStopReasonConfigurationFailed
  , pattern NEProviderStopReasonIdleTimeout
  , pattern NEProviderStopReasonConfigurationDisabled
  , pattern NEProviderStopReasonConfigurationRemoved
  , pattern NEProviderStopReasonSuperceded
  , pattern NEProviderStopReasonUserLogout
  , pattern NEProviderStopReasonUserSwitch
  , pattern NEProviderStopReasonConnectionFailed
  , pattern NEProviderStopReasonSleep
  , pattern NEProviderStopReasonAppUpdate

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

-- | startWithCompletionHandler:completionHandler:
--
-- This method is called by the framework when the provider is started. Subclasses must override this method to create a connection with its server.
--
-- @completionHandler@ — A block that must be called when the provider establishes a connection with the server. If the providers fails to create a connection, the subclass' implementation of this method must pass a non-nil NSError object to this block. A value of nil passed to the completion handler indicates that the connection was successfully created.
--
-- ObjC selector: @- startWithCompletionHandler:@
startWithCompletionHandler :: IsNEAppPushProvider neAppPushProvider => neAppPushProvider -> Ptr () -> IO ()
startWithCompletionHandler neAppPushProvider completionHandler =
  sendMessage neAppPushProvider startWithCompletionHandlerSelector completionHandler

-- | start
--
-- This method is called by the framework when the provider is started. Subclasses must override this method to create a connection with its server.
--
-- ObjC selector: @- start@
start :: IsNEAppPushProvider neAppPushProvider => neAppPushProvider -> IO ()
start neAppPushProvider =
  sendMessage neAppPushProvider startSelector

-- | stopWithReason:reason:completionHandler:
--
-- This method is called by the framework when the app push provider needs to be stopped. Subclasses must override this method to perform necessary tasks.
--
-- @reason@ — An NEProviderStopReason indicating why the provider was stopped.
--
-- @completionHandler@ — A block that must be called when the provider is completely stopped.
--
-- ObjC selector: @- stopWithReason:completionHandler:@
stopWithReason_completionHandler :: IsNEAppPushProvider neAppPushProvider => neAppPushProvider -> NEProviderStopReason -> Ptr () -> IO ()
stopWithReason_completionHandler neAppPushProvider reason completionHandler =
  sendMessage neAppPushProvider stopWithReason_completionHandlerSelector reason completionHandler

-- | reportIncomingCallWithUserInfo:userinfo:
--
-- This function is called by the provider when it determines incoming call on the conection.
--
-- @userInfo@ — A dictionary of custom information associated with the incoming call. This dictionary is passed to containg app as-is.
--
-- ObjC selector: @- reportIncomingCallWithUserInfo:@
reportIncomingCallWithUserInfo :: (IsNEAppPushProvider neAppPushProvider, IsNSDictionary userInfo) => neAppPushProvider -> userInfo -> IO ()
reportIncomingCallWithUserInfo neAppPushProvider userInfo =
  sendMessage neAppPushProvider reportIncomingCallWithUserInfoSelector (toNSDictionary userInfo)

-- | handleTimerEvent
--
-- This method is called by the framework periodically after every 60 seconds. Subclasses must override this method to perform necessary tasks.
--
-- ObjC selector: @- handleTimerEvent@
handleTimerEvent :: IsNEAppPushProvider neAppPushProvider => neAppPushProvider -> IO ()
handleTimerEvent neAppPushProvider =
  sendMessage neAppPushProvider handleTimerEventSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @startWithCompletionHandler:@
startWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
startWithCompletionHandlerSelector = mkSelector "startWithCompletionHandler:"

-- | @Selector@ for @start@
startSelector :: Selector '[] ()
startSelector = mkSelector "start"

-- | @Selector@ for @stopWithReason:completionHandler:@
stopWithReason_completionHandlerSelector :: Selector '[NEProviderStopReason, Ptr ()] ()
stopWithReason_completionHandlerSelector = mkSelector "stopWithReason:completionHandler:"

-- | @Selector@ for @reportIncomingCallWithUserInfo:@
reportIncomingCallWithUserInfoSelector :: Selector '[Id NSDictionary] ()
reportIncomingCallWithUserInfoSelector = mkSelector "reportIncomingCallWithUserInfo:"

-- | @Selector@ for @handleTimerEvent@
handleTimerEventSelector :: Selector '[] ()
handleTimerEventSelector = mkSelector "handleTimerEvent"

