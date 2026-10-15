{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @SFSpeechRecognizer@.
module ObjC.Speech.SFSpeechRecognizer
  ( SFSpeechRecognizer
  , IsSFSpeechRecognizer(..)
  , supportedLocales
  , authorizationStatus
  , requestAuthorization
  , init_
  , initWithLocale
  , recognitionTaskWithRequest_resultHandler
  , recognitionTaskWithRequest_delegate
  , available
  , locale
  , supportsOnDeviceRecognition
  , setSupportsOnDeviceRecognition
  , delegate
  , setDelegate
  , defaultTaskHint
  , setDefaultTaskHint
  , queue
  , setQueue
  , authorizationStatusSelector
  , availableSelector
  , defaultTaskHintSelector
  , delegateSelector
  , initSelector
  , initWithLocaleSelector
  , localeSelector
  , queueSelector
  , recognitionTaskWithRequest_delegateSelector
  , recognitionTaskWithRequest_resultHandlerSelector
  , requestAuthorizationSelector
  , setDefaultTaskHintSelector
  , setDelegateSelector
  , setQueueSelector
  , setSupportsOnDeviceRecognitionSelector
  , supportedLocalesSelector
  , supportsOnDeviceRecognitionSelector

  -- * Enum types
  , SFSpeechRecognitionTaskHint(SFSpeechRecognitionTaskHint)
  , pattern SFSpeechRecognitionTaskHintUnspecified
  , pattern SFSpeechRecognitionTaskHintDictation
  , pattern SFSpeechRecognitionTaskHintSearch
  , pattern SFSpeechRecognitionTaskHintConfirmation
  , SFSpeechRecognizerAuthorizationStatus(SFSpeechRecognizerAuthorizationStatus)
  , pattern SFSpeechRecognizerAuthorizationStatusNotDetermined
  , pattern SFSpeechRecognizerAuthorizationStatusDenied
  , pattern SFSpeechRecognizerAuthorizationStatusRestricted
  , pattern SFSpeechRecognizerAuthorizationStatusAuthorized

  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.Speech.Internal.Classes
import ObjC.Speech.Internal.Enums
import ObjC.Foundation.Internal.Classes

-- | @+ supportedLocales@
supportedLocales :: IO (Id NSSet)
supportedLocales  =
  do
    cls' <- getRequiredClass "SFSpeechRecognizer"
    sendClassMessage cls' supportedLocalesSelector

-- | @+ authorizationStatus@
authorizationStatus :: IO SFSpeechRecognizerAuthorizationStatus
authorizationStatus  =
  do
    cls' <- getRequiredClass "SFSpeechRecognizer"
    sendClassMessage cls' authorizationStatusSelector

-- | @+ requestAuthorization:@
requestAuthorization :: Ptr () -> IO ()
requestAuthorization handler =
  do
    cls' <- getRequiredClass "SFSpeechRecognizer"
    sendClassMessage cls' requestAuthorizationSelector handler

-- | @- init@
init_ :: IsSFSpeechRecognizer sfSpeechRecognizer => sfSpeechRecognizer -> IO (Id SFSpeechRecognizer)
init_ sfSpeechRecognizer =
  sendOwnedMessage sfSpeechRecognizer initSelector

-- | @- initWithLocale:@
initWithLocale :: (IsSFSpeechRecognizer sfSpeechRecognizer, IsNSLocale locale) => sfSpeechRecognizer -> locale -> IO (Id SFSpeechRecognizer)
initWithLocale sfSpeechRecognizer locale =
  sendOwnedMessage sfSpeechRecognizer initWithLocaleSelector (toNSLocale locale)

-- | @- recognitionTaskWithRequest:resultHandler:@
recognitionTaskWithRequest_resultHandler :: (IsSFSpeechRecognizer sfSpeechRecognizer, IsSFSpeechRecognitionRequest request) => sfSpeechRecognizer -> request -> Ptr () -> IO (Id SFSpeechRecognitionTask)
recognitionTaskWithRequest_resultHandler sfSpeechRecognizer request resultHandler =
  sendMessage sfSpeechRecognizer recognitionTaskWithRequest_resultHandlerSelector (toSFSpeechRecognitionRequest request) resultHandler

-- | @- recognitionTaskWithRequest:delegate:@
recognitionTaskWithRequest_delegate :: (IsSFSpeechRecognizer sfSpeechRecognizer, IsSFSpeechRecognitionRequest request) => sfSpeechRecognizer -> request -> RawId -> IO (Id SFSpeechRecognitionTask)
recognitionTaskWithRequest_delegate sfSpeechRecognizer request delegate =
  sendMessage sfSpeechRecognizer recognitionTaskWithRequest_delegateSelector (toSFSpeechRecognitionRequest request) delegate

-- | @- available@
available :: IsSFSpeechRecognizer sfSpeechRecognizer => sfSpeechRecognizer -> IO Bool
available sfSpeechRecognizer =
  sendMessage sfSpeechRecognizer availableSelector

-- | @- locale@
locale :: IsSFSpeechRecognizer sfSpeechRecognizer => sfSpeechRecognizer -> IO (Id NSLocale)
locale sfSpeechRecognizer =
  sendMessage sfSpeechRecognizer localeSelector

-- | @- supportsOnDeviceRecognition@
supportsOnDeviceRecognition :: IsSFSpeechRecognizer sfSpeechRecognizer => sfSpeechRecognizer -> IO Bool
supportsOnDeviceRecognition sfSpeechRecognizer =
  sendMessage sfSpeechRecognizer supportsOnDeviceRecognitionSelector

-- | @- setSupportsOnDeviceRecognition:@
setSupportsOnDeviceRecognition :: IsSFSpeechRecognizer sfSpeechRecognizer => sfSpeechRecognizer -> Bool -> IO ()
setSupportsOnDeviceRecognition sfSpeechRecognizer value =
  sendMessage sfSpeechRecognizer setSupportsOnDeviceRecognitionSelector value

-- | @- delegate@
delegate :: IsSFSpeechRecognizer sfSpeechRecognizer => sfSpeechRecognizer -> IO RawId
delegate sfSpeechRecognizer =
  sendMessage sfSpeechRecognizer delegateSelector

-- | @- setDelegate:@
setDelegate :: IsSFSpeechRecognizer sfSpeechRecognizer => sfSpeechRecognizer -> RawId -> IO ()
setDelegate sfSpeechRecognizer value =
  sendMessage sfSpeechRecognizer setDelegateSelector value

-- | @- defaultTaskHint@
defaultTaskHint :: IsSFSpeechRecognizer sfSpeechRecognizer => sfSpeechRecognizer -> IO SFSpeechRecognitionTaskHint
defaultTaskHint sfSpeechRecognizer =
  sendMessage sfSpeechRecognizer defaultTaskHintSelector

-- | @- setDefaultTaskHint:@
setDefaultTaskHint :: IsSFSpeechRecognizer sfSpeechRecognizer => sfSpeechRecognizer -> SFSpeechRecognitionTaskHint -> IO ()
setDefaultTaskHint sfSpeechRecognizer value =
  sendMessage sfSpeechRecognizer setDefaultTaskHintSelector value

-- | @- queue@
queue :: IsSFSpeechRecognizer sfSpeechRecognizer => sfSpeechRecognizer -> IO (Id NSOperationQueue)
queue sfSpeechRecognizer =
  sendMessage sfSpeechRecognizer queueSelector

-- | @- setQueue:@
setQueue :: (IsSFSpeechRecognizer sfSpeechRecognizer, IsNSOperationQueue value) => sfSpeechRecognizer -> value -> IO ()
setQueue sfSpeechRecognizer value =
  sendMessage sfSpeechRecognizer setQueueSelector (toNSOperationQueue value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @supportedLocales@
supportedLocalesSelector :: Selector '[] (Id NSSet)
supportedLocalesSelector = mkSelector "supportedLocales"

-- | @Selector@ for @authorizationStatus@
authorizationStatusSelector :: Selector '[] SFSpeechRecognizerAuthorizationStatus
authorizationStatusSelector = mkSelector "authorizationStatus"

-- | @Selector@ for @requestAuthorization:@
requestAuthorizationSelector :: Selector '[Ptr ()] ()
requestAuthorizationSelector = mkSelector "requestAuthorization:"

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id SFSpeechRecognizer)
initSelector = mkSelector "init"

-- | @Selector@ for @initWithLocale:@
initWithLocaleSelector :: Selector '[Id NSLocale] (Id SFSpeechRecognizer)
initWithLocaleSelector = mkSelector "initWithLocale:"

-- | @Selector@ for @recognitionTaskWithRequest:resultHandler:@
recognitionTaskWithRequest_resultHandlerSelector :: Selector '[Id SFSpeechRecognitionRequest, Ptr ()] (Id SFSpeechRecognitionTask)
recognitionTaskWithRequest_resultHandlerSelector = mkSelector "recognitionTaskWithRequest:resultHandler:"

-- | @Selector@ for @recognitionTaskWithRequest:delegate:@
recognitionTaskWithRequest_delegateSelector :: Selector '[Id SFSpeechRecognitionRequest, RawId] (Id SFSpeechRecognitionTask)
recognitionTaskWithRequest_delegateSelector = mkSelector "recognitionTaskWithRequest:delegate:"

-- | @Selector@ for @available@
availableSelector :: Selector '[] Bool
availableSelector = mkSelector "available"

-- | @Selector@ for @locale@
localeSelector :: Selector '[] (Id NSLocale)
localeSelector = mkSelector "locale"

-- | @Selector@ for @supportsOnDeviceRecognition@
supportsOnDeviceRecognitionSelector :: Selector '[] Bool
supportsOnDeviceRecognitionSelector = mkSelector "supportsOnDeviceRecognition"

-- | @Selector@ for @setSupportsOnDeviceRecognition:@
setSupportsOnDeviceRecognitionSelector :: Selector '[Bool] ()
setSupportsOnDeviceRecognitionSelector = mkSelector "setSupportsOnDeviceRecognition:"

-- | @Selector@ for @delegate@
delegateSelector :: Selector '[] RawId
delegateSelector = mkSelector "delegate"

-- | @Selector@ for @setDelegate:@
setDelegateSelector :: Selector '[RawId] ()
setDelegateSelector = mkSelector "setDelegate:"

-- | @Selector@ for @defaultTaskHint@
defaultTaskHintSelector :: Selector '[] SFSpeechRecognitionTaskHint
defaultTaskHintSelector = mkSelector "defaultTaskHint"

-- | @Selector@ for @setDefaultTaskHint:@
setDefaultTaskHintSelector :: Selector '[SFSpeechRecognitionTaskHint] ()
setDefaultTaskHintSelector = mkSelector "setDefaultTaskHint:"

-- | @Selector@ for @queue@
queueSelector :: Selector '[] (Id NSOperationQueue)
queueSelector = mkSelector "queue"

-- | @Selector@ for @setQueue:@
setQueueSelector :: Selector '[Id NSOperationQueue] ()
setQueueSelector = mkSelector "setQueue:"

