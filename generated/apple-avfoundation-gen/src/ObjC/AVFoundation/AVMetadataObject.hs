{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | AVMetadataObject
--
-- AVMetadataObject is an abstract class that defines an interface for a metadata object used by AVFoundation.
--
-- AVMetadataObject provides an abstract interface for metadata associated with a piece of media. One example is face metadata that might be detected in a picture. All metadata objects have a time, duration, bounds, and type.
--
-- The concrete AVMetadataFaceObject is used by AVCaptureMetadataOutput for face detection.
--
-- Generated bindings for @AVMetadataObject@.
module ObjC.AVFoundation.AVMetadataObject
  ( AVMetadataObject
  , IsAVMetadataObject(..)
  , init_
  , new
  , type_
  , initSelector
  , newSelector
  , typeSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AVFoundation.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- init@
init_ :: IsAVMetadataObject avMetadataObject => avMetadataObject -> IO (Id AVMetadataObject)
init_ avMetadataObject =
  sendOwnedMessage avMetadataObject initSelector

-- | @+ new@
new :: IO (Id AVMetadataObject)
new  =
  do
    cls' <- getRequiredClass "AVMetadataObject"
    sendOwnedClassMessage cls' newSelector

-- | type
--
-- An identifier for the metadata object.
--
-- The value of this property is an AVMetadataObjectType representing the type of the metadata object. Clients inspecting a collection of metadata objects can use this property to filter objects with a matching type.
--
-- ObjC selector: @- type@
type_ :: IsAVMetadataObject avMetadataObject => avMetadataObject -> IO (Id NSString)
type_ avMetadataObject =
  sendMessage avMetadataObject typeSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id AVMetadataObject)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id AVMetadataObject)
newSelector = mkSelector "new"

-- | @Selector@ for @type@
typeSelector :: Selector '[] (Id NSString)
typeSelector = mkSelector "type"

