{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @NSEPSImageRep@.
module ObjC.AppKit.NSEPSImageRep
  ( NSEPSImageRep
  , IsNSEPSImageRep(..)
  , imageRepWithData
  , initWithData
  , prepareGState
  , epsRepresentation
  , boundingBox
  , boundingBoxSelector
  , epsRepresentationSelector
  , imageRepWithDataSelector
  , initWithDataSelector
  , prepareGStateSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AppKit.Internal.Classes
import ObjC.Foundation.Internal.Structs
import ObjC.Foundation.Internal.Classes

-- | @+ imageRepWithData:@
imageRepWithData :: IsNSData epsData => epsData -> IO (Id NSEPSImageRep)
imageRepWithData epsData =
  do
    cls' <- getRequiredClass "NSEPSImageRep"
    sendClassMessage cls' imageRepWithDataSelector (toNSData epsData)

-- | @- initWithData:@
initWithData :: (IsNSEPSImageRep nsepsImageRep, IsNSData epsData) => nsepsImageRep -> epsData -> IO (Id NSEPSImageRep)
initWithData nsepsImageRep epsData =
  sendOwnedMessage nsepsImageRep initWithDataSelector (toNSData epsData)

-- | @- prepareGState@
prepareGState :: IsNSEPSImageRep nsepsImageRep => nsepsImageRep -> IO ()
prepareGState nsepsImageRep =
  sendMessage nsepsImageRep prepareGStateSelector

-- | @- EPSRepresentation@
epsRepresentation :: IsNSEPSImageRep nsepsImageRep => nsepsImageRep -> IO (Id NSData)
epsRepresentation nsepsImageRep =
  sendMessage nsepsImageRep epsRepresentationSelector

-- | @- boundingBox@
boundingBox :: IsNSEPSImageRep nsepsImageRep => nsepsImageRep -> IO NSRect
boundingBox nsepsImageRep =
  sendMessage nsepsImageRep boundingBoxSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @imageRepWithData:@
imageRepWithDataSelector :: Selector '[Id NSData] (Id NSEPSImageRep)
imageRepWithDataSelector = mkSelector "imageRepWithData:"

-- | @Selector@ for @initWithData:@
initWithDataSelector :: Selector '[Id NSData] (Id NSEPSImageRep)
initWithDataSelector = mkSelector "initWithData:"

-- | @Selector@ for @prepareGState@
prepareGStateSelector :: Selector '[] ()
prepareGStateSelector = mkSelector "prepareGState"

-- | @Selector@ for @EPSRepresentation@
epsRepresentationSelector :: Selector '[] (Id NSData)
epsRepresentationSelector = mkSelector "EPSRepresentation"

-- | @Selector@ for @boundingBox@
boundingBoxSelector :: Selector '[] NSRect
boundingBoxSelector = mkSelector "boundingBox"

