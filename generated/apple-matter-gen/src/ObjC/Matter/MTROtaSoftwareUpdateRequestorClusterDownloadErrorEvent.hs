{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTROtaSoftwareUpdateRequestorClusterDownloadErrorEvent@.
module ObjC.Matter.MTROtaSoftwareUpdateRequestorClusterDownloadErrorEvent
  ( MTROtaSoftwareUpdateRequestorClusterDownloadErrorEvent
  , IsMTROtaSoftwareUpdateRequestorClusterDownloadErrorEvent(..)
  , init_
  , copyWithZone
  , softwareVersion
  , setSoftwareVersion
  , bytesDownloaded
  , setBytesDownloaded
  , progressPercent
  , setProgressPercent
  , platformCode
  , setPlatformCode
  , bytesDownloadedSelector
  , copyWithZoneSelector
  , initSelector
  , platformCodeSelector
  , progressPercentSelector
  , setBytesDownloadedSelector
  , setPlatformCodeSelector
  , setProgressPercentSelector
  , setSoftwareVersionSelector
  , softwareVersionSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.Matter.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- init@
init_ :: IsMTROtaSoftwareUpdateRequestorClusterDownloadErrorEvent mtrOtaSoftwareUpdateRequestorClusterDownloadErrorEvent => mtrOtaSoftwareUpdateRequestorClusterDownloadErrorEvent -> IO (Id MTROtaSoftwareUpdateRequestorClusterDownloadErrorEvent)
init_ mtrOtaSoftwareUpdateRequestorClusterDownloadErrorEvent =
  sendOwnedMessage mtrOtaSoftwareUpdateRequestorClusterDownloadErrorEvent initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTROtaSoftwareUpdateRequestorClusterDownloadErrorEvent mtrOtaSoftwareUpdateRequestorClusterDownloadErrorEvent => mtrOtaSoftwareUpdateRequestorClusterDownloadErrorEvent -> Ptr () -> IO RawId
copyWithZone mtrOtaSoftwareUpdateRequestorClusterDownloadErrorEvent zone =
  sendOwnedMessage mtrOtaSoftwareUpdateRequestorClusterDownloadErrorEvent copyWithZoneSelector zone

-- | @- softwareVersion@
softwareVersion :: IsMTROtaSoftwareUpdateRequestorClusterDownloadErrorEvent mtrOtaSoftwareUpdateRequestorClusterDownloadErrorEvent => mtrOtaSoftwareUpdateRequestorClusterDownloadErrorEvent -> IO (Id NSNumber)
softwareVersion mtrOtaSoftwareUpdateRequestorClusterDownloadErrorEvent =
  sendMessage mtrOtaSoftwareUpdateRequestorClusterDownloadErrorEvent softwareVersionSelector

-- | @- setSoftwareVersion:@
setSoftwareVersion :: (IsMTROtaSoftwareUpdateRequestorClusterDownloadErrorEvent mtrOtaSoftwareUpdateRequestorClusterDownloadErrorEvent, IsNSNumber value) => mtrOtaSoftwareUpdateRequestorClusterDownloadErrorEvent -> value -> IO ()
setSoftwareVersion mtrOtaSoftwareUpdateRequestorClusterDownloadErrorEvent value =
  sendMessage mtrOtaSoftwareUpdateRequestorClusterDownloadErrorEvent setSoftwareVersionSelector (toNSNumber value)

-- | @- bytesDownloaded@
bytesDownloaded :: IsMTROtaSoftwareUpdateRequestorClusterDownloadErrorEvent mtrOtaSoftwareUpdateRequestorClusterDownloadErrorEvent => mtrOtaSoftwareUpdateRequestorClusterDownloadErrorEvent -> IO (Id NSNumber)
bytesDownloaded mtrOtaSoftwareUpdateRequestorClusterDownloadErrorEvent =
  sendMessage mtrOtaSoftwareUpdateRequestorClusterDownloadErrorEvent bytesDownloadedSelector

-- | @- setBytesDownloaded:@
setBytesDownloaded :: (IsMTROtaSoftwareUpdateRequestorClusterDownloadErrorEvent mtrOtaSoftwareUpdateRequestorClusterDownloadErrorEvent, IsNSNumber value) => mtrOtaSoftwareUpdateRequestorClusterDownloadErrorEvent -> value -> IO ()
setBytesDownloaded mtrOtaSoftwareUpdateRequestorClusterDownloadErrorEvent value =
  sendMessage mtrOtaSoftwareUpdateRequestorClusterDownloadErrorEvent setBytesDownloadedSelector (toNSNumber value)

-- | @- progressPercent@
progressPercent :: IsMTROtaSoftwareUpdateRequestorClusterDownloadErrorEvent mtrOtaSoftwareUpdateRequestorClusterDownloadErrorEvent => mtrOtaSoftwareUpdateRequestorClusterDownloadErrorEvent -> IO (Id NSNumber)
progressPercent mtrOtaSoftwareUpdateRequestorClusterDownloadErrorEvent =
  sendMessage mtrOtaSoftwareUpdateRequestorClusterDownloadErrorEvent progressPercentSelector

-- | @- setProgressPercent:@
setProgressPercent :: (IsMTROtaSoftwareUpdateRequestorClusterDownloadErrorEvent mtrOtaSoftwareUpdateRequestorClusterDownloadErrorEvent, IsNSNumber value) => mtrOtaSoftwareUpdateRequestorClusterDownloadErrorEvent -> value -> IO ()
setProgressPercent mtrOtaSoftwareUpdateRequestorClusterDownloadErrorEvent value =
  sendMessage mtrOtaSoftwareUpdateRequestorClusterDownloadErrorEvent setProgressPercentSelector (toNSNumber value)

-- | @- platformCode@
platformCode :: IsMTROtaSoftwareUpdateRequestorClusterDownloadErrorEvent mtrOtaSoftwareUpdateRequestorClusterDownloadErrorEvent => mtrOtaSoftwareUpdateRequestorClusterDownloadErrorEvent -> IO (Id NSNumber)
platformCode mtrOtaSoftwareUpdateRequestorClusterDownloadErrorEvent =
  sendMessage mtrOtaSoftwareUpdateRequestorClusterDownloadErrorEvent platformCodeSelector

-- | @- setPlatformCode:@
setPlatformCode :: (IsMTROtaSoftwareUpdateRequestorClusterDownloadErrorEvent mtrOtaSoftwareUpdateRequestorClusterDownloadErrorEvent, IsNSNumber value) => mtrOtaSoftwareUpdateRequestorClusterDownloadErrorEvent -> value -> IO ()
setPlatformCode mtrOtaSoftwareUpdateRequestorClusterDownloadErrorEvent value =
  sendMessage mtrOtaSoftwareUpdateRequestorClusterDownloadErrorEvent setPlatformCodeSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTROtaSoftwareUpdateRequestorClusterDownloadErrorEvent)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @softwareVersion@
softwareVersionSelector :: Selector '[] (Id NSNumber)
softwareVersionSelector = mkSelector "softwareVersion"

-- | @Selector@ for @setSoftwareVersion:@
setSoftwareVersionSelector :: Selector '[Id NSNumber] ()
setSoftwareVersionSelector = mkSelector "setSoftwareVersion:"

-- | @Selector@ for @bytesDownloaded@
bytesDownloadedSelector :: Selector '[] (Id NSNumber)
bytesDownloadedSelector = mkSelector "bytesDownloaded"

-- | @Selector@ for @setBytesDownloaded:@
setBytesDownloadedSelector :: Selector '[Id NSNumber] ()
setBytesDownloadedSelector = mkSelector "setBytesDownloaded:"

-- | @Selector@ for @progressPercent@
progressPercentSelector :: Selector '[] (Id NSNumber)
progressPercentSelector = mkSelector "progressPercent"

-- | @Selector@ for @setProgressPercent:@
setProgressPercentSelector :: Selector '[Id NSNumber] ()
setProgressPercentSelector = mkSelector "setProgressPercent:"

-- | @Selector@ for @platformCode@
platformCodeSelector :: Selector '[] (Id NSNumber)
platformCodeSelector = mkSelector "platformCode"

-- | @Selector@ for @setPlatformCode:@
setPlatformCodeSelector :: Selector '[Id NSNumber] ()
setPlatformCodeSelector = mkSelector "setPlatformCode:"

