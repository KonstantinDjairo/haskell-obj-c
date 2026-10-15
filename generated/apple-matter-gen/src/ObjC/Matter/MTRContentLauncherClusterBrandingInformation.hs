{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRContentLauncherClusterBrandingInformation@.
module ObjC.Matter.MTRContentLauncherClusterBrandingInformation
  ( MTRContentLauncherClusterBrandingInformation
  , IsMTRContentLauncherClusterBrandingInformation(..)
  , init_
  , copyWithZone
  , providerName
  , setProviderName
  , background
  , setBackground
  , logo
  , setLogo
  , progressBar
  , setProgressBar
  , splash
  , setSplash
  , waterMark
  , setWaterMark
  , backgroundSelector
  , copyWithZoneSelector
  , initSelector
  , logoSelector
  , progressBarSelector
  , providerNameSelector
  , setBackgroundSelector
  , setLogoSelector
  , setProgressBarSelector
  , setProviderNameSelector
  , setSplashSelector
  , setWaterMarkSelector
  , splashSelector
  , waterMarkSelector


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
init_ :: IsMTRContentLauncherClusterBrandingInformation mtrContentLauncherClusterBrandingInformation => mtrContentLauncherClusterBrandingInformation -> IO (Id MTRContentLauncherClusterBrandingInformation)
init_ mtrContentLauncherClusterBrandingInformation =
  sendOwnedMessage mtrContentLauncherClusterBrandingInformation initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRContentLauncherClusterBrandingInformation mtrContentLauncherClusterBrandingInformation => mtrContentLauncherClusterBrandingInformation -> Ptr () -> IO RawId
copyWithZone mtrContentLauncherClusterBrandingInformation zone =
  sendOwnedMessage mtrContentLauncherClusterBrandingInformation copyWithZoneSelector zone

-- | @- providerName@
providerName :: IsMTRContentLauncherClusterBrandingInformation mtrContentLauncherClusterBrandingInformation => mtrContentLauncherClusterBrandingInformation -> IO (Id NSString)
providerName mtrContentLauncherClusterBrandingInformation =
  sendMessage mtrContentLauncherClusterBrandingInformation providerNameSelector

-- | @- setProviderName:@
setProviderName :: (IsMTRContentLauncherClusterBrandingInformation mtrContentLauncherClusterBrandingInformation, IsNSString value) => mtrContentLauncherClusterBrandingInformation -> value -> IO ()
setProviderName mtrContentLauncherClusterBrandingInformation value =
  sendMessage mtrContentLauncherClusterBrandingInformation setProviderNameSelector (toNSString value)

-- | @- background@
background :: IsMTRContentLauncherClusterBrandingInformation mtrContentLauncherClusterBrandingInformation => mtrContentLauncherClusterBrandingInformation -> IO (Id MTRContentLauncherClusterStyleInformation)
background mtrContentLauncherClusterBrandingInformation =
  sendMessage mtrContentLauncherClusterBrandingInformation backgroundSelector

-- | @- setBackground:@
setBackground :: (IsMTRContentLauncherClusterBrandingInformation mtrContentLauncherClusterBrandingInformation, IsMTRContentLauncherClusterStyleInformation value) => mtrContentLauncherClusterBrandingInformation -> value -> IO ()
setBackground mtrContentLauncherClusterBrandingInformation value =
  sendMessage mtrContentLauncherClusterBrandingInformation setBackgroundSelector (toMTRContentLauncherClusterStyleInformation value)

-- | @- logo@
logo :: IsMTRContentLauncherClusterBrandingInformation mtrContentLauncherClusterBrandingInformation => mtrContentLauncherClusterBrandingInformation -> IO (Id MTRContentLauncherClusterStyleInformation)
logo mtrContentLauncherClusterBrandingInformation =
  sendMessage mtrContentLauncherClusterBrandingInformation logoSelector

-- | @- setLogo:@
setLogo :: (IsMTRContentLauncherClusterBrandingInformation mtrContentLauncherClusterBrandingInformation, IsMTRContentLauncherClusterStyleInformation value) => mtrContentLauncherClusterBrandingInformation -> value -> IO ()
setLogo mtrContentLauncherClusterBrandingInformation value =
  sendMessage mtrContentLauncherClusterBrandingInformation setLogoSelector (toMTRContentLauncherClusterStyleInformation value)

-- | @- progressBar@
progressBar :: IsMTRContentLauncherClusterBrandingInformation mtrContentLauncherClusterBrandingInformation => mtrContentLauncherClusterBrandingInformation -> IO (Id MTRContentLauncherClusterStyleInformation)
progressBar mtrContentLauncherClusterBrandingInformation =
  sendMessage mtrContentLauncherClusterBrandingInformation progressBarSelector

-- | @- setProgressBar:@
setProgressBar :: (IsMTRContentLauncherClusterBrandingInformation mtrContentLauncherClusterBrandingInformation, IsMTRContentLauncherClusterStyleInformation value) => mtrContentLauncherClusterBrandingInformation -> value -> IO ()
setProgressBar mtrContentLauncherClusterBrandingInformation value =
  sendMessage mtrContentLauncherClusterBrandingInformation setProgressBarSelector (toMTRContentLauncherClusterStyleInformation value)

-- | @- splash@
splash :: IsMTRContentLauncherClusterBrandingInformation mtrContentLauncherClusterBrandingInformation => mtrContentLauncherClusterBrandingInformation -> IO (Id MTRContentLauncherClusterStyleInformation)
splash mtrContentLauncherClusterBrandingInformation =
  sendMessage mtrContentLauncherClusterBrandingInformation splashSelector

-- | @- setSplash:@
setSplash :: (IsMTRContentLauncherClusterBrandingInformation mtrContentLauncherClusterBrandingInformation, IsMTRContentLauncherClusterStyleInformation value) => mtrContentLauncherClusterBrandingInformation -> value -> IO ()
setSplash mtrContentLauncherClusterBrandingInformation value =
  sendMessage mtrContentLauncherClusterBrandingInformation setSplashSelector (toMTRContentLauncherClusterStyleInformation value)

-- | @- waterMark@
waterMark :: IsMTRContentLauncherClusterBrandingInformation mtrContentLauncherClusterBrandingInformation => mtrContentLauncherClusterBrandingInformation -> IO (Id MTRContentLauncherClusterStyleInformation)
waterMark mtrContentLauncherClusterBrandingInformation =
  sendMessage mtrContentLauncherClusterBrandingInformation waterMarkSelector

-- | @- setWaterMark:@
setWaterMark :: (IsMTRContentLauncherClusterBrandingInformation mtrContentLauncherClusterBrandingInformation, IsMTRContentLauncherClusterStyleInformation value) => mtrContentLauncherClusterBrandingInformation -> value -> IO ()
setWaterMark mtrContentLauncherClusterBrandingInformation value =
  sendMessage mtrContentLauncherClusterBrandingInformation setWaterMarkSelector (toMTRContentLauncherClusterStyleInformation value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRContentLauncherClusterBrandingInformation)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @providerName@
providerNameSelector :: Selector '[] (Id NSString)
providerNameSelector = mkSelector "providerName"

-- | @Selector@ for @setProviderName:@
setProviderNameSelector :: Selector '[Id NSString] ()
setProviderNameSelector = mkSelector "setProviderName:"

-- | @Selector@ for @background@
backgroundSelector :: Selector '[] (Id MTRContentLauncherClusterStyleInformation)
backgroundSelector = mkSelector "background"

-- | @Selector@ for @setBackground:@
setBackgroundSelector :: Selector '[Id MTRContentLauncherClusterStyleInformation] ()
setBackgroundSelector = mkSelector "setBackground:"

-- | @Selector@ for @logo@
logoSelector :: Selector '[] (Id MTRContentLauncherClusterStyleInformation)
logoSelector = mkSelector "logo"

-- | @Selector@ for @setLogo:@
setLogoSelector :: Selector '[Id MTRContentLauncherClusterStyleInformation] ()
setLogoSelector = mkSelector "setLogo:"

-- | @Selector@ for @progressBar@
progressBarSelector :: Selector '[] (Id MTRContentLauncherClusterStyleInformation)
progressBarSelector = mkSelector "progressBar"

-- | @Selector@ for @setProgressBar:@
setProgressBarSelector :: Selector '[Id MTRContentLauncherClusterStyleInformation] ()
setProgressBarSelector = mkSelector "setProgressBar:"

-- | @Selector@ for @splash@
splashSelector :: Selector '[] (Id MTRContentLauncherClusterStyleInformation)
splashSelector = mkSelector "splash"

-- | @Selector@ for @setSplash:@
setSplashSelector :: Selector '[Id MTRContentLauncherClusterStyleInformation] ()
setSplashSelector = mkSelector "setSplash:"

-- | @Selector@ for @waterMark@
waterMarkSelector :: Selector '[] (Id MTRContentLauncherClusterStyleInformation)
waterMarkSelector = mkSelector "waterMark"

-- | @Selector@ for @setWaterMark:@
setWaterMarkSelector :: Selector '[Id MTRContentLauncherClusterStyleInformation] ()
setWaterMarkSelector = mkSelector "setWaterMark:"

