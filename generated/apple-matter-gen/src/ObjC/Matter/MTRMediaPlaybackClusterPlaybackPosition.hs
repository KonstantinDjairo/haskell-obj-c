{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRMediaPlaybackClusterPlaybackPosition@.
module ObjC.Matter.MTRMediaPlaybackClusterPlaybackPosition
  ( MTRMediaPlaybackClusterPlaybackPosition
  , IsMTRMediaPlaybackClusterPlaybackPosition(..)
  , init_
  , copyWithZone
  , updatedAt
  , setUpdatedAt
  , position
  , setPosition
  , copyWithZoneSelector
  , initSelector
  , positionSelector
  , setPositionSelector
  , setUpdatedAtSelector
  , updatedAtSelector


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
init_ :: IsMTRMediaPlaybackClusterPlaybackPosition mtrMediaPlaybackClusterPlaybackPosition => mtrMediaPlaybackClusterPlaybackPosition -> IO (Id MTRMediaPlaybackClusterPlaybackPosition)
init_ mtrMediaPlaybackClusterPlaybackPosition =
  sendOwnedMessage mtrMediaPlaybackClusterPlaybackPosition initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRMediaPlaybackClusterPlaybackPosition mtrMediaPlaybackClusterPlaybackPosition => mtrMediaPlaybackClusterPlaybackPosition -> Ptr () -> IO RawId
copyWithZone mtrMediaPlaybackClusterPlaybackPosition zone =
  sendOwnedMessage mtrMediaPlaybackClusterPlaybackPosition copyWithZoneSelector zone

-- | @- updatedAt@
updatedAt :: IsMTRMediaPlaybackClusterPlaybackPosition mtrMediaPlaybackClusterPlaybackPosition => mtrMediaPlaybackClusterPlaybackPosition -> IO (Id NSNumber)
updatedAt mtrMediaPlaybackClusterPlaybackPosition =
  sendMessage mtrMediaPlaybackClusterPlaybackPosition updatedAtSelector

-- | @- setUpdatedAt:@
setUpdatedAt :: (IsMTRMediaPlaybackClusterPlaybackPosition mtrMediaPlaybackClusterPlaybackPosition, IsNSNumber value) => mtrMediaPlaybackClusterPlaybackPosition -> value -> IO ()
setUpdatedAt mtrMediaPlaybackClusterPlaybackPosition value =
  sendMessage mtrMediaPlaybackClusterPlaybackPosition setUpdatedAtSelector (toNSNumber value)

-- | @- position@
position :: IsMTRMediaPlaybackClusterPlaybackPosition mtrMediaPlaybackClusterPlaybackPosition => mtrMediaPlaybackClusterPlaybackPosition -> IO (Id NSNumber)
position mtrMediaPlaybackClusterPlaybackPosition =
  sendMessage mtrMediaPlaybackClusterPlaybackPosition positionSelector

-- | @- setPosition:@
setPosition :: (IsMTRMediaPlaybackClusterPlaybackPosition mtrMediaPlaybackClusterPlaybackPosition, IsNSNumber value) => mtrMediaPlaybackClusterPlaybackPosition -> value -> IO ()
setPosition mtrMediaPlaybackClusterPlaybackPosition value =
  sendMessage mtrMediaPlaybackClusterPlaybackPosition setPositionSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRMediaPlaybackClusterPlaybackPosition)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @updatedAt@
updatedAtSelector :: Selector '[] (Id NSNumber)
updatedAtSelector = mkSelector "updatedAt"

-- | @Selector@ for @setUpdatedAt:@
setUpdatedAtSelector :: Selector '[Id NSNumber] ()
setUpdatedAtSelector = mkSelector "setUpdatedAt:"

-- | @Selector@ for @position@
positionSelector :: Selector '[] (Id NSNumber)
positionSelector = mkSelector "position"

-- | @Selector@ for @setPosition:@
setPositionSelector :: Selector '[Id NSNumber] ()
setPositionSelector = mkSelector "setPosition:"

