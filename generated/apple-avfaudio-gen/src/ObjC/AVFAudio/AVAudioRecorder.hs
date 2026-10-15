{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @AVAudioRecorder@.
module ObjC.AVFAudio.AVAudioRecorder
  ( AVAudioRecorder
  , IsAVAudioRecorder(..)
  , initWithURL_settings_error
  , initWithURL_format_error
  , prepareToRecord
  , record
  , recordAtTime
  , recordForDuration
  , recordAtTime_forDuration
  , pause
  , stop
  , deleteRecording
  , updateMeters
  , peakPowerForChannel
  , averagePowerForChannel
  , recording
  , url
  , settings
  , format
  , delegate
  , setDelegate
  , currentTime
  , deviceCurrentTime
  , meteringEnabled
  , setMeteringEnabled
  , channelAssignments
  , setChannelAssignments
  , averagePowerForChannelSelector
  , channelAssignmentsSelector
  , currentTimeSelector
  , delegateSelector
  , deleteRecordingSelector
  , deviceCurrentTimeSelector
  , formatSelector
  , initWithURL_format_errorSelector
  , initWithURL_settings_errorSelector
  , meteringEnabledSelector
  , pauseSelector
  , peakPowerForChannelSelector
  , prepareToRecordSelector
  , recordAtTimeSelector
  , recordAtTime_forDurationSelector
  , recordForDurationSelector
  , recordSelector
  , recordingSelector
  , setChannelAssignmentsSelector
  , setDelegateSelector
  , setMeteringEnabledSelector
  , settingsSelector
  , stopSelector
  , updateMetersSelector
  , urlSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AVFAudio.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- initWithURL:settings:error:@
initWithURL_settings_error :: (IsAVAudioRecorder avAudioRecorder, IsNSURL url, IsNSDictionary settings, IsNSError outError) => avAudioRecorder -> url -> settings -> outError -> IO (Id AVAudioRecorder)
initWithURL_settings_error avAudioRecorder url settings outError =
  sendOwnedMessage avAudioRecorder initWithURL_settings_errorSelector (toNSURL url) (toNSDictionary settings) (toNSError outError)

-- | @- initWithURL:format:error:@
initWithURL_format_error :: (IsAVAudioRecorder avAudioRecorder, IsNSURL url, IsAVAudioFormat format, IsNSError outError) => avAudioRecorder -> url -> format -> outError -> IO (Id AVAudioRecorder)
initWithURL_format_error avAudioRecorder url format outError =
  sendOwnedMessage avAudioRecorder initWithURL_format_errorSelector (toNSURL url) (toAVAudioFormat format) (toNSError outError)

-- | @- prepareToRecord@
prepareToRecord :: IsAVAudioRecorder avAudioRecorder => avAudioRecorder -> IO Bool
prepareToRecord avAudioRecorder =
  sendMessage avAudioRecorder prepareToRecordSelector

-- | @- record@
record :: IsAVAudioRecorder avAudioRecorder => avAudioRecorder -> IO Bool
record avAudioRecorder =
  sendMessage avAudioRecorder recordSelector

-- | @- recordAtTime:@
recordAtTime :: IsAVAudioRecorder avAudioRecorder => avAudioRecorder -> CDouble -> IO Bool
recordAtTime avAudioRecorder time =
  sendMessage avAudioRecorder recordAtTimeSelector time

-- | @- recordForDuration:@
recordForDuration :: IsAVAudioRecorder avAudioRecorder => avAudioRecorder -> CDouble -> IO Bool
recordForDuration avAudioRecorder duration =
  sendMessage avAudioRecorder recordForDurationSelector duration

-- | @- recordAtTime:forDuration:@
recordAtTime_forDuration :: IsAVAudioRecorder avAudioRecorder => avAudioRecorder -> CDouble -> CDouble -> IO Bool
recordAtTime_forDuration avAudioRecorder time duration =
  sendMessage avAudioRecorder recordAtTime_forDurationSelector time duration

-- | @- pause@
pause :: IsAVAudioRecorder avAudioRecorder => avAudioRecorder -> IO ()
pause avAudioRecorder =
  sendMessage avAudioRecorder pauseSelector

-- | @- stop@
stop :: IsAVAudioRecorder avAudioRecorder => avAudioRecorder -> IO ()
stop avAudioRecorder =
  sendMessage avAudioRecorder stopSelector

-- | @- deleteRecording@
deleteRecording :: IsAVAudioRecorder avAudioRecorder => avAudioRecorder -> IO Bool
deleteRecording avAudioRecorder =
  sendMessage avAudioRecorder deleteRecordingSelector

-- | @- updateMeters@
updateMeters :: IsAVAudioRecorder avAudioRecorder => avAudioRecorder -> IO ()
updateMeters avAudioRecorder =
  sendMessage avAudioRecorder updateMetersSelector

-- | @- peakPowerForChannel:@
peakPowerForChannel :: IsAVAudioRecorder avAudioRecorder => avAudioRecorder -> CULong -> IO CFloat
peakPowerForChannel avAudioRecorder channelNumber =
  sendMessage avAudioRecorder peakPowerForChannelSelector channelNumber

-- | @- averagePowerForChannel:@
averagePowerForChannel :: IsAVAudioRecorder avAudioRecorder => avAudioRecorder -> CULong -> IO CFloat
averagePowerForChannel avAudioRecorder channelNumber =
  sendMessage avAudioRecorder averagePowerForChannelSelector channelNumber

-- | @- recording@
recording :: IsAVAudioRecorder avAudioRecorder => avAudioRecorder -> IO Bool
recording avAudioRecorder =
  sendMessage avAudioRecorder recordingSelector

-- | @- url@
url :: IsAVAudioRecorder avAudioRecorder => avAudioRecorder -> IO (Id NSURL)
url avAudioRecorder =
  sendMessage avAudioRecorder urlSelector

-- | @- settings@
settings :: IsAVAudioRecorder avAudioRecorder => avAudioRecorder -> IO (Id NSDictionary)
settings avAudioRecorder =
  sendMessage avAudioRecorder settingsSelector

-- | @- format@
format :: IsAVAudioRecorder avAudioRecorder => avAudioRecorder -> IO (Id AVAudioFormat)
format avAudioRecorder =
  sendMessage avAudioRecorder formatSelector

-- | @- delegate@
delegate :: IsAVAudioRecorder avAudioRecorder => avAudioRecorder -> IO RawId
delegate avAudioRecorder =
  sendMessage avAudioRecorder delegateSelector

-- | @- setDelegate:@
setDelegate :: IsAVAudioRecorder avAudioRecorder => avAudioRecorder -> RawId -> IO ()
setDelegate avAudioRecorder value =
  sendMessage avAudioRecorder setDelegateSelector value

-- | @- currentTime@
currentTime :: IsAVAudioRecorder avAudioRecorder => avAudioRecorder -> IO CDouble
currentTime avAudioRecorder =
  sendMessage avAudioRecorder currentTimeSelector

-- | @- deviceCurrentTime@
deviceCurrentTime :: IsAVAudioRecorder avAudioRecorder => avAudioRecorder -> IO CDouble
deviceCurrentTime avAudioRecorder =
  sendMessage avAudioRecorder deviceCurrentTimeSelector

-- | @- meteringEnabled@
meteringEnabled :: IsAVAudioRecorder avAudioRecorder => avAudioRecorder -> IO Bool
meteringEnabled avAudioRecorder =
  sendMessage avAudioRecorder meteringEnabledSelector

-- | @- setMeteringEnabled:@
setMeteringEnabled :: IsAVAudioRecorder avAudioRecorder => avAudioRecorder -> Bool -> IO ()
setMeteringEnabled avAudioRecorder value =
  sendMessage avAudioRecorder setMeteringEnabledSelector value

-- | @- channelAssignments@
channelAssignments :: IsAVAudioRecorder avAudioRecorder => avAudioRecorder -> IO (Id NSArray)
channelAssignments avAudioRecorder =
  sendMessage avAudioRecorder channelAssignmentsSelector

-- | @- setChannelAssignments:@
setChannelAssignments :: (IsAVAudioRecorder avAudioRecorder, IsNSArray value) => avAudioRecorder -> value -> IO ()
setChannelAssignments avAudioRecorder value =
  sendMessage avAudioRecorder setChannelAssignmentsSelector (toNSArray value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithURL:settings:error:@
initWithURL_settings_errorSelector :: Selector '[Id NSURL, Id NSDictionary, Id NSError] (Id AVAudioRecorder)
initWithURL_settings_errorSelector = mkSelector "initWithURL:settings:error:"

-- | @Selector@ for @initWithURL:format:error:@
initWithURL_format_errorSelector :: Selector '[Id NSURL, Id AVAudioFormat, Id NSError] (Id AVAudioRecorder)
initWithURL_format_errorSelector = mkSelector "initWithURL:format:error:"

-- | @Selector@ for @prepareToRecord@
prepareToRecordSelector :: Selector '[] Bool
prepareToRecordSelector = mkSelector "prepareToRecord"

-- | @Selector@ for @record@
recordSelector :: Selector '[] Bool
recordSelector = mkSelector "record"

-- | @Selector@ for @recordAtTime:@
recordAtTimeSelector :: Selector '[CDouble] Bool
recordAtTimeSelector = mkSelector "recordAtTime:"

-- | @Selector@ for @recordForDuration:@
recordForDurationSelector :: Selector '[CDouble] Bool
recordForDurationSelector = mkSelector "recordForDuration:"

-- | @Selector@ for @recordAtTime:forDuration:@
recordAtTime_forDurationSelector :: Selector '[CDouble, CDouble] Bool
recordAtTime_forDurationSelector = mkSelector "recordAtTime:forDuration:"

-- | @Selector@ for @pause@
pauseSelector :: Selector '[] ()
pauseSelector = mkSelector "pause"

-- | @Selector@ for @stop@
stopSelector :: Selector '[] ()
stopSelector = mkSelector "stop"

-- | @Selector@ for @deleteRecording@
deleteRecordingSelector :: Selector '[] Bool
deleteRecordingSelector = mkSelector "deleteRecording"

-- | @Selector@ for @updateMeters@
updateMetersSelector :: Selector '[] ()
updateMetersSelector = mkSelector "updateMeters"

-- | @Selector@ for @peakPowerForChannel:@
peakPowerForChannelSelector :: Selector '[CULong] CFloat
peakPowerForChannelSelector = mkSelector "peakPowerForChannel:"

-- | @Selector@ for @averagePowerForChannel:@
averagePowerForChannelSelector :: Selector '[CULong] CFloat
averagePowerForChannelSelector = mkSelector "averagePowerForChannel:"

-- | @Selector@ for @recording@
recordingSelector :: Selector '[] Bool
recordingSelector = mkSelector "recording"

-- | @Selector@ for @url@
urlSelector :: Selector '[] (Id NSURL)
urlSelector = mkSelector "url"

-- | @Selector@ for @settings@
settingsSelector :: Selector '[] (Id NSDictionary)
settingsSelector = mkSelector "settings"

-- | @Selector@ for @format@
formatSelector :: Selector '[] (Id AVAudioFormat)
formatSelector = mkSelector "format"

-- | @Selector@ for @delegate@
delegateSelector :: Selector '[] RawId
delegateSelector = mkSelector "delegate"

-- | @Selector@ for @setDelegate:@
setDelegateSelector :: Selector '[RawId] ()
setDelegateSelector = mkSelector "setDelegate:"

-- | @Selector@ for @currentTime@
currentTimeSelector :: Selector '[] CDouble
currentTimeSelector = mkSelector "currentTime"

-- | @Selector@ for @deviceCurrentTime@
deviceCurrentTimeSelector :: Selector '[] CDouble
deviceCurrentTimeSelector = mkSelector "deviceCurrentTime"

-- | @Selector@ for @meteringEnabled@
meteringEnabledSelector :: Selector '[] Bool
meteringEnabledSelector = mkSelector "meteringEnabled"

-- | @Selector@ for @setMeteringEnabled:@
setMeteringEnabledSelector :: Selector '[Bool] ()
setMeteringEnabledSelector = mkSelector "setMeteringEnabled:"

-- | @Selector@ for @channelAssignments@
channelAssignmentsSelector :: Selector '[] (Id NSArray)
channelAssignmentsSelector = mkSelector "channelAssignments"

-- | @Selector@ for @setChannelAssignments:@
setChannelAssignmentsSelector :: Selector '[Id NSArray] ()
setChannelAssignmentsSelector = mkSelector "setChannelAssignments:"

