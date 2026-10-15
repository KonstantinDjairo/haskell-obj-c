{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Manages Exposure Notification functionality.
--
-- Generated bindings for @ENManager@.
module ObjC.ExposureNotification.ENManager
  ( ENManager
  , IsENManager(..)
  , activateWithCompletionHandler
  , invalidate
  , getUserTraveledWithCompletionHandler
  , setExposureNotificationEnabled_completionHandler
  , detectExposuresWithConfiguration_completionHandler
  , detectExposuresWithConfiguration_diagnosisKeyURLs_completionHandler
  , getExposureInfoFromSummary_userExplanation_completionHandler
  , getExposureWindowsFromSummary_completionHandler
  , getDiagnosisKeysWithCompletionHandler
  , getTestDiagnosisKeysWithCompletionHandler
  , preAuthorizeDiagnosisKeysWithCompletionHandler
  , requestPreAuthorizedDiagnosisKeysWithCompletionHandler
  , activityHandler
  , setActivityHandler
  , dispatchQueue
  , setDispatchQueue
  , exposureNotificationStatus
  , invalidationHandler
  , setInvalidationHandler
  , authorizationStatus
  , exposureNotificationEnabled
  , diagnosisKeysAvailableHandler
  , setDiagnosisKeysAvailableHandler
  , activateWithCompletionHandlerSelector
  , activityHandlerSelector
  , authorizationStatusSelector
  , detectExposuresWithConfiguration_completionHandlerSelector
  , detectExposuresWithConfiguration_diagnosisKeyURLs_completionHandlerSelector
  , diagnosisKeysAvailableHandlerSelector
  , dispatchQueueSelector
  , exposureNotificationEnabledSelector
  , exposureNotificationStatusSelector
  , getDiagnosisKeysWithCompletionHandlerSelector
  , getExposureInfoFromSummary_userExplanation_completionHandlerSelector
  , getExposureWindowsFromSummary_completionHandlerSelector
  , getTestDiagnosisKeysWithCompletionHandlerSelector
  , getUserTraveledWithCompletionHandlerSelector
  , invalidateSelector
  , invalidationHandlerSelector
  , preAuthorizeDiagnosisKeysWithCompletionHandlerSelector
  , requestPreAuthorizedDiagnosisKeysWithCompletionHandlerSelector
  , setActivityHandlerSelector
  , setDiagnosisKeysAvailableHandlerSelector
  , setDispatchQueueSelector
  , setExposureNotificationEnabled_completionHandlerSelector
  , setInvalidationHandlerSelector

  -- * Enum types
  , ENAuthorizationStatus(ENAuthorizationStatus)
  , pattern ENAuthorizationStatusUnknown
  , pattern ENAuthorizationStatusRestricted
  , pattern ENAuthorizationStatusNotAuthorized
  , pattern ENAuthorizationStatusAuthorized
  , ENStatus(ENStatus)
  , pattern ENStatusUnknown
  , pattern ENStatusActive
  , pattern ENStatusDisabled
  , pattern ENStatusBluetoothOff
  , pattern ENStatusRestricted
  , pattern ENStatusPaused
  , pattern ENStatusUnauthorized

  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.ExposureNotification.Internal.Classes
import ObjC.ExposureNotification.Internal.Enums
import ObjC.Foundation.Internal.Classes

-- | Activates the object to prepare it for use. Properties may not be usable until the completion handler reports success.
--
-- ObjC selector: @- activateWithCompletionHandler:@
activateWithCompletionHandler :: IsENManager enManager => enManager -> Ptr () -> IO ()
activateWithCompletionHandler enManager completionHandler =
  sendMessage enManager activateWithCompletionHandlerSelector completionHandler

-- | Stops any outstanding operations and invalidates this object. Once this is called, the object can no longer be used. To start using ENManager again, a new instance of the class must be created and activated.
--
-- ObjC selector: @- invalidate@
invalidate :: IsENManager enManager => enManager -> IO ()
invalidate enManager =
  sendMessage enManager invalidateSelector

-- | Reports if the user traveled within an exposure period (e.g. 14 days).
--
-- ObjC selector: @- getUserTraveledWithCompletionHandler:@
getUserTraveledWithCompletionHandler :: IsENManager enManager => enManager -> Ptr () -> IO ()
getUserTraveledWithCompletionHandler enManager completionHandler =
  sendMessage enManager getUserTraveledWithCompletionHandlerSelector completionHandler

-- | Enables or disables Exposure Notification. If not previously authorized, this shows a user dialog for consent to enable Exposure Notification. Note: Disabling stops Bluetooth advertising and scanning related to Exposure Notification, but the  Diagnosis Keys and data will remain.
--
-- ObjC selector: @- setExposureNotificationEnabled:completionHandler:@
setExposureNotificationEnabled_completionHandler :: IsENManager enManager => enManager -> Bool -> Ptr () -> IO ()
setExposureNotificationEnabled_completionHandler enManager enabled completionHandler =
  sendMessage enManager setExposureNotificationEnabled_completionHandlerSelector enabled completionHandler

-- | Detects exposures using the specified configuration to control the scoring algorithm. This uses the diagnosis keys already known to the system. Only available to apps with ENAPIVersion 2 or higher.
--
-- ObjC selector: @- detectExposuresWithConfiguration:completionHandler:@
detectExposuresWithConfiguration_completionHandler :: (IsENManager enManager, IsENExposureConfiguration configuration) => enManager -> configuration -> Ptr () -> IO (Id NSProgress)
detectExposuresWithConfiguration_completionHandler enManager configuration completionHandler =
  sendMessage enManager detectExposuresWithConfiguration_completionHandlerSelector (toENExposureConfiguration configuration) completionHandler

-- | Detects exposures using the specified configuration to control the scoring algorithm and URLs to specify the  files containing diagnosis keys the app has downloaded. The diagnosis key files must be signed appropriately. When the app's ENAPIVersion is 2 or higher, keys already known to the system are included in the analysis.
--
-- ObjC selector: @- detectExposuresWithConfiguration:diagnosisKeyURLs:completionHandler:@
detectExposuresWithConfiguration_diagnosisKeyURLs_completionHandler :: (IsENManager enManager, IsENExposureConfiguration configuration, IsNSArray diagnosisKeyURLs) => enManager -> configuration -> diagnosisKeyURLs -> Ptr () -> IO (Id NSProgress)
detectExposuresWithConfiguration_diagnosisKeyURLs_completionHandler enManager configuration diagnosisKeyURLs completionHandler =
  sendMessage enManager detectExposuresWithConfiguration_diagnosisKeyURLs_completionHandlerSelector (toENExposureConfiguration configuration) (toNSArray diagnosisKeyURLs) completionHandler

-- | Gets info about each exposure from the summary provided when exposure detection completes. Using this API will inform the user that their exposure details have been revealed to the app. The user explanation string will be displayed as part of the UI to inform the user of using this API.
--
-- ObjC selector: @- getExposureInfoFromSummary:userExplanation:completionHandler:@
getExposureInfoFromSummary_userExplanation_completionHandler :: (IsENManager enManager, IsENExposureDetectionSummary summary, IsNSString userExplanation) => enManager -> summary -> userExplanation -> Ptr () -> IO (Id NSProgress)
getExposureInfoFromSummary_userExplanation_completionHandler enManager summary userExplanation completionHandler =
  sendMessage enManager getExposureInfoFromSummary_userExplanation_completionHandlerSelector (toENExposureDetectionSummary summary) (toNSString userExplanation) completionHandler

-- | Gets info about each exposure window from the summary provided when exposure detection completes.
--
-- ObjC selector: @- getExposureWindowsFromSummary:completionHandler:@
getExposureWindowsFromSummary_completionHandler :: (IsENManager enManager, IsENExposureDetectionSummary summary) => enManager -> summary -> Ptr () -> IO (Id NSProgress)
getExposureWindowsFromSummary_completionHandler enManager summary completionHandler =
  sendMessage enManager getExposureWindowsFromSummary_completionHandlerSelector (toENExposureDetectionSummary summary) completionHandler

-- | Requests the temporary exposure keys used by this device to share with a server. Each use of this API will present the user with system UI to authorize it.
--
-- ObjC selector: @- getDiagnosisKeysWithCompletionHandler:@
getDiagnosisKeysWithCompletionHandler :: IsENManager enManager => enManager -> Ptr () -> IO ()
getDiagnosisKeysWithCompletionHandler enManager completionHandler =
  sendMessage enManager getDiagnosisKeysWithCompletionHandlerSelector completionHandler

-- | Requests the temporary exposure keys, including the current key, used by this device for testing. Each use of this API will present the user with system UI to authorize it. WARNING: This API is only for use by developers. It requires a special entitlement that is not allowed in the app store. It's only intended to allow developers to test without needing to wait 24 hours for a key to be released.
--
-- ObjC selector: @- getTestDiagnosisKeysWithCompletionHandler:@
getTestDiagnosisKeysWithCompletionHandler :: IsENManager enManager => enManager -> Ptr () -> IO ()
getTestDiagnosisKeysWithCompletionHandler enManager completionHandler =
  sendMessage enManager getTestDiagnosisKeysWithCompletionHandlerSelector completionHandler

-- | Authorizes a one-time, future release of diagnosis keys without a user prompt at the time of release. This allows the user to authorize ahead of time in case they are unable to approve at the time of positive diagnosis. WARNING: Application should be in foreground to request the authorization
--
-- ObjC selector: @- preAuthorizeDiagnosisKeysWithCompletionHandler:@
preAuthorizeDiagnosisKeysWithCompletionHandler :: IsENManager enManager => enManager -> Ptr () -> IO ()
preAuthorizeDiagnosisKeysWithCompletionHandler enManager completionHandler =
  sendMessage enManager preAuthorizeDiagnosisKeysWithCompletionHandlerSelector completionHandler

-- | Requests diagnosis keys after previously using preAuthorizeDiagnosisKeys successfully. This will display a notification to the user for the user to know the keys will be returned. Keys are returned by invoking diagnosisKeysAvailable, which must be set before calling this.
--
-- ObjC selector: @- requestPreAuthorizedDiagnosisKeysWithCompletionHandler:@
requestPreAuthorizedDiagnosisKeysWithCompletionHandler :: IsENManager enManager => enManager -> Ptr () -> IO ()
requestPreAuthorizedDiagnosisKeysWithCompletionHandler enManager completionHandler =
  sendMessage enManager requestPreAuthorizedDiagnosisKeysWithCompletionHandlerSelector completionHandler

-- | Invoked when the app is launched for an activity while it might not be running. When the app is launched, it should create an ENManager instance, set this handler, and then activate the manager.
--
-- ObjC selector: @- activityHandler@
activityHandler :: IsENManager enManager => enManager -> IO (Ptr ())
activityHandler enManager =
  sendMessage enManager activityHandlerSelector

-- | Invoked when the app is launched for an activity while it might not be running. When the app is launched, it should create an ENManager instance, set this handler, and then activate the manager.
--
-- ObjC selector: @- setActivityHandler:@
setActivityHandler :: IsENManager enManager => enManager -> Ptr () -> IO ()
setActivityHandler enManager value =
  sendMessage enManager setActivityHandlerSelector value

-- | @- dispatchQueue@
dispatchQueue :: IsENManager enManager => enManager -> IO (Id NSObject)
dispatchQueue enManager =
  sendMessage enManager dispatchQueueSelector

-- | @- setDispatchQueue:@
setDispatchQueue :: (IsENManager enManager, IsNSObject value) => enManager -> value -> IO ()
setDispatchQueue enManager value =
  sendMessage enManager setDispatchQueueSelector (toNSObject value)

-- | Overall status of Exposure Notification. KVO may be used to monitor for changes.
--
-- ObjC selector: @- exposureNotificationStatus@
exposureNotificationStatus :: IsENManager enManager => enManager -> IO ENStatus
exposureNotificationStatus enManager =
  sendMessage enManager exposureNotificationStatusSelector

-- | Invoked exactly once when invalidation completes. This property is cleared before it's invoked to break retain cycles.
--
-- ObjC selector: @- invalidationHandler@
invalidationHandler :: IsENManager enManager => enManager -> IO (Ptr ())
invalidationHandler enManager =
  sendMessage enManager invalidationHandlerSelector

-- | Invoked exactly once when invalidation completes. This property is cleared before it's invoked to break retain cycles.
--
-- ObjC selector: @- setInvalidationHandler:@
setInvalidationHandler :: IsENManager enManager => enManager -> Ptr () -> IO ()
setInvalidationHandler enManager value =
  sendMessage enManager setInvalidationHandlerSelector value

-- | Reports the current authorization status of the app. Apps can use this property to preflight authorization in order to determine if the user will be prompted.
--
-- ObjC selector: @+ authorizationStatus@
authorizationStatus :: IO ENAuthorizationStatus
authorizationStatus  =
  do
    cls' <- getRequiredClass "ENManager"
    sendClassMessage cls' authorizationStatusSelector

-- | Indicates if Exposure Notification is enabled on the system. KVO may be used to monitor for changes. This will be NO until activateWithCompletionHandler has completed successfully. Note that even if it's enabled, it may be inactive for other reasons, such as Bluetooth being turned off. The exposureNotificationStatus property can be monitored for the overall status of Exposure Notification.
--
-- ObjC selector: @- exposureNotificationEnabled@
exposureNotificationEnabled :: IsENManager enManager => enManager -> IO Bool
exposureNotificationEnabled enManager =
  sendMessage enManager exposureNotificationEnabledSelector

-- | Invoked after requestPreAuthorizedDiagnosisKeys if user authorization is still valid.
--
-- ObjC selector: @- diagnosisKeysAvailableHandler@
diagnosisKeysAvailableHandler :: IsENManager enManager => enManager -> IO (Ptr ())
diagnosisKeysAvailableHandler enManager =
  sendMessage enManager diagnosisKeysAvailableHandlerSelector

-- | Invoked after requestPreAuthorizedDiagnosisKeys if user authorization is still valid.
--
-- ObjC selector: @- setDiagnosisKeysAvailableHandler:@
setDiagnosisKeysAvailableHandler :: IsENManager enManager => enManager -> Ptr () -> IO ()
setDiagnosisKeysAvailableHandler enManager value =
  sendMessage enManager setDiagnosisKeysAvailableHandlerSelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @activateWithCompletionHandler:@
activateWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
activateWithCompletionHandlerSelector = mkSelector "activateWithCompletionHandler:"

-- | @Selector@ for @invalidate@
invalidateSelector :: Selector '[] ()
invalidateSelector = mkSelector "invalidate"

-- | @Selector@ for @getUserTraveledWithCompletionHandler:@
getUserTraveledWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
getUserTraveledWithCompletionHandlerSelector = mkSelector "getUserTraveledWithCompletionHandler:"

-- | @Selector@ for @setExposureNotificationEnabled:completionHandler:@
setExposureNotificationEnabled_completionHandlerSelector :: Selector '[Bool, Ptr ()] ()
setExposureNotificationEnabled_completionHandlerSelector = mkSelector "setExposureNotificationEnabled:completionHandler:"

-- | @Selector@ for @detectExposuresWithConfiguration:completionHandler:@
detectExposuresWithConfiguration_completionHandlerSelector :: Selector '[Id ENExposureConfiguration, Ptr ()] (Id NSProgress)
detectExposuresWithConfiguration_completionHandlerSelector = mkSelector "detectExposuresWithConfiguration:completionHandler:"

-- | @Selector@ for @detectExposuresWithConfiguration:diagnosisKeyURLs:completionHandler:@
detectExposuresWithConfiguration_diagnosisKeyURLs_completionHandlerSelector :: Selector '[Id ENExposureConfiguration, Id NSArray, Ptr ()] (Id NSProgress)
detectExposuresWithConfiguration_diagnosisKeyURLs_completionHandlerSelector = mkSelector "detectExposuresWithConfiguration:diagnosisKeyURLs:completionHandler:"

-- | @Selector@ for @getExposureInfoFromSummary:userExplanation:completionHandler:@
getExposureInfoFromSummary_userExplanation_completionHandlerSelector :: Selector '[Id ENExposureDetectionSummary, Id NSString, Ptr ()] (Id NSProgress)
getExposureInfoFromSummary_userExplanation_completionHandlerSelector = mkSelector "getExposureInfoFromSummary:userExplanation:completionHandler:"

-- | @Selector@ for @getExposureWindowsFromSummary:completionHandler:@
getExposureWindowsFromSummary_completionHandlerSelector :: Selector '[Id ENExposureDetectionSummary, Ptr ()] (Id NSProgress)
getExposureWindowsFromSummary_completionHandlerSelector = mkSelector "getExposureWindowsFromSummary:completionHandler:"

-- | @Selector@ for @getDiagnosisKeysWithCompletionHandler:@
getDiagnosisKeysWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
getDiagnosisKeysWithCompletionHandlerSelector = mkSelector "getDiagnosisKeysWithCompletionHandler:"

-- | @Selector@ for @getTestDiagnosisKeysWithCompletionHandler:@
getTestDiagnosisKeysWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
getTestDiagnosisKeysWithCompletionHandlerSelector = mkSelector "getTestDiagnosisKeysWithCompletionHandler:"

-- | @Selector@ for @preAuthorizeDiagnosisKeysWithCompletionHandler:@
preAuthorizeDiagnosisKeysWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
preAuthorizeDiagnosisKeysWithCompletionHandlerSelector = mkSelector "preAuthorizeDiagnosisKeysWithCompletionHandler:"

-- | @Selector@ for @requestPreAuthorizedDiagnosisKeysWithCompletionHandler:@
requestPreAuthorizedDiagnosisKeysWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
requestPreAuthorizedDiagnosisKeysWithCompletionHandlerSelector = mkSelector "requestPreAuthorizedDiagnosisKeysWithCompletionHandler:"

-- | @Selector@ for @activityHandler@
activityHandlerSelector :: Selector '[] (Ptr ())
activityHandlerSelector = mkSelector "activityHandler"

-- | @Selector@ for @setActivityHandler:@
setActivityHandlerSelector :: Selector '[Ptr ()] ()
setActivityHandlerSelector = mkSelector "setActivityHandler:"

-- | @Selector@ for @dispatchQueue@
dispatchQueueSelector :: Selector '[] (Id NSObject)
dispatchQueueSelector = mkSelector "dispatchQueue"

-- | @Selector@ for @setDispatchQueue:@
setDispatchQueueSelector :: Selector '[Id NSObject] ()
setDispatchQueueSelector = mkSelector "setDispatchQueue:"

-- | @Selector@ for @exposureNotificationStatus@
exposureNotificationStatusSelector :: Selector '[] ENStatus
exposureNotificationStatusSelector = mkSelector "exposureNotificationStatus"

-- | @Selector@ for @invalidationHandler@
invalidationHandlerSelector :: Selector '[] (Ptr ())
invalidationHandlerSelector = mkSelector "invalidationHandler"

-- | @Selector@ for @setInvalidationHandler:@
setInvalidationHandlerSelector :: Selector '[Ptr ()] ()
setInvalidationHandlerSelector = mkSelector "setInvalidationHandler:"

-- | @Selector@ for @authorizationStatus@
authorizationStatusSelector :: Selector '[] ENAuthorizationStatus
authorizationStatusSelector = mkSelector "authorizationStatus"

-- | @Selector@ for @exposureNotificationEnabled@
exposureNotificationEnabledSelector :: Selector '[] Bool
exposureNotificationEnabledSelector = mkSelector "exposureNotificationEnabled"

-- | @Selector@ for @diagnosisKeysAvailableHandler@
diagnosisKeysAvailableHandlerSelector :: Selector '[] (Ptr ())
diagnosisKeysAvailableHandlerSelector = mkSelector "diagnosisKeysAvailableHandler"

-- | @Selector@ for @setDiagnosisKeysAvailableHandler:@
setDiagnosisKeysAvailableHandlerSelector :: Selector '[Ptr ()] ()
setDiagnosisKeysAvailableHandlerSelector = mkSelector "setDiagnosisKeysAvailableHandler:"

