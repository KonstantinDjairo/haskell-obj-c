{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRContentLauncherClusterStyleInformation@.
module ObjC.Matter.MTRContentLauncherClusterStyleInformation
  ( MTRContentLauncherClusterStyleInformation
  , IsMTRContentLauncherClusterStyleInformation(..)
  , init_
  , copyWithZone
  , imageUrl
  , setImageUrl
  , color
  , setColor
  , size
  , setSize
  , colorSelector
  , copyWithZoneSelector
  , imageUrlSelector
  , initSelector
  , setColorSelector
  , setImageUrlSelector
  , setSizeSelector
  , sizeSelector


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
init_ :: IsMTRContentLauncherClusterStyleInformation mtrContentLauncherClusterStyleInformation => mtrContentLauncherClusterStyleInformation -> IO (Id MTRContentLauncherClusterStyleInformation)
init_ mtrContentLauncherClusterStyleInformation =
  sendOwnedMessage mtrContentLauncherClusterStyleInformation initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRContentLauncherClusterStyleInformation mtrContentLauncherClusterStyleInformation => mtrContentLauncherClusterStyleInformation -> Ptr () -> IO RawId
copyWithZone mtrContentLauncherClusterStyleInformation zone =
  sendOwnedMessage mtrContentLauncherClusterStyleInformation copyWithZoneSelector zone

-- | @- imageUrl@
imageUrl :: IsMTRContentLauncherClusterStyleInformation mtrContentLauncherClusterStyleInformation => mtrContentLauncherClusterStyleInformation -> IO (Id NSString)
imageUrl mtrContentLauncherClusterStyleInformation =
  sendMessage mtrContentLauncherClusterStyleInformation imageUrlSelector

-- | @- setImageUrl:@
setImageUrl :: (IsMTRContentLauncherClusterStyleInformation mtrContentLauncherClusterStyleInformation, IsNSString value) => mtrContentLauncherClusterStyleInformation -> value -> IO ()
setImageUrl mtrContentLauncherClusterStyleInformation value =
  sendMessage mtrContentLauncherClusterStyleInformation setImageUrlSelector (toNSString value)

-- | @- color@
color :: IsMTRContentLauncherClusterStyleInformation mtrContentLauncherClusterStyleInformation => mtrContentLauncherClusterStyleInformation -> IO (Id NSString)
color mtrContentLauncherClusterStyleInformation =
  sendMessage mtrContentLauncherClusterStyleInformation colorSelector

-- | @- setColor:@
setColor :: (IsMTRContentLauncherClusterStyleInformation mtrContentLauncherClusterStyleInformation, IsNSString value) => mtrContentLauncherClusterStyleInformation -> value -> IO ()
setColor mtrContentLauncherClusterStyleInformation value =
  sendMessage mtrContentLauncherClusterStyleInformation setColorSelector (toNSString value)

-- | @- size@
size :: IsMTRContentLauncherClusterStyleInformation mtrContentLauncherClusterStyleInformation => mtrContentLauncherClusterStyleInformation -> IO (Id MTRContentLauncherClusterDimension)
size mtrContentLauncherClusterStyleInformation =
  sendMessage mtrContentLauncherClusterStyleInformation sizeSelector

-- | @- setSize:@
setSize :: (IsMTRContentLauncherClusterStyleInformation mtrContentLauncherClusterStyleInformation, IsMTRContentLauncherClusterDimension value) => mtrContentLauncherClusterStyleInformation -> value -> IO ()
setSize mtrContentLauncherClusterStyleInformation value =
  sendMessage mtrContentLauncherClusterStyleInformation setSizeSelector (toMTRContentLauncherClusterDimension value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRContentLauncherClusterStyleInformation)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @imageUrl@
imageUrlSelector :: Selector '[] (Id NSString)
imageUrlSelector = mkSelector "imageUrl"

-- | @Selector@ for @setImageUrl:@
setImageUrlSelector :: Selector '[Id NSString] ()
setImageUrlSelector = mkSelector "setImageUrl:"

-- | @Selector@ for @color@
colorSelector :: Selector '[] (Id NSString)
colorSelector = mkSelector "color"

-- | @Selector@ for @setColor:@
setColorSelector :: Selector '[Id NSString] ()
setColorSelector = mkSelector "setColor:"

-- | @Selector@ for @size@
sizeSelector :: Selector '[] (Id MTRContentLauncherClusterDimension)
sizeSelector = mkSelector "size"

-- | @Selector@ for @setSize:@
setSizeSelector :: Selector '[Id MTRContentLauncherClusterDimension] ()
setSizeSelector = mkSelector "setSize:"

