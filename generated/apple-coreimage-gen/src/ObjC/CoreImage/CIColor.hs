{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @CIColor@.
module ObjC.CoreImage.CIColor
  ( CIColor
  , IsCIColor(..)
  , colorWithCGColor
  , colorWithRed_green_blue_alpha
  , colorWithRed_green_blue
  , colorWithRed_green_blue_alpha_colorSpace
  , colorWithRed_green_blue_colorSpace
  , colorWithString
  , initWithCGColor
  , initWithRed_green_blue_alpha
  , initWithRed_green_blue
  , initWithRed_green_blue_alpha_colorSpace
  , initWithRed_green_blue_colorSpace
  , numberOfComponents
  , components
  , alpha
  , colorSpace
  , red
  , green
  , blue
  , stringRepresentation
  , blackColor
  , whiteColor
  , grayColor
  , redColor
  , greenColor
  , blueColor
  , cyanColor
  , magentaColor
  , yellowColor
  , clearColor
  , alphaSelector
  , blackColorSelector
  , blueColorSelector
  , blueSelector
  , clearColorSelector
  , colorSpaceSelector
  , colorWithCGColorSelector
  , colorWithRed_green_blueSelector
  , colorWithRed_green_blue_alphaSelector
  , colorWithRed_green_blue_alpha_colorSpaceSelector
  , colorWithRed_green_blue_colorSpaceSelector
  , colorWithStringSelector
  , componentsSelector
  , cyanColorSelector
  , grayColorSelector
  , greenColorSelector
  , greenSelector
  , initWithCGColorSelector
  , initWithRed_green_blueSelector
  , initWithRed_green_blue_alphaSelector
  , initWithRed_green_blue_alpha_colorSpaceSelector
  , initWithRed_green_blue_colorSpaceSelector
  , magentaColorSelector
  , numberOfComponentsSelector
  , redColorSelector
  , redSelector
  , stringRepresentationSelector
  , whiteColorSelector
  , yellowColorSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.CoreImage.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @+ colorWithCGColor:@
colorWithCGColor :: Ptr () -> IO (Id CIColor)
colorWithCGColor c =
  do
    cls' <- getRequiredClass "CIColor"
    sendClassMessage cls' colorWithCGColorSelector c

-- | @+ colorWithRed:green:blue:alpha:@
colorWithRed_green_blue_alpha :: CDouble -> CDouble -> CDouble -> CDouble -> IO (Id CIColor)
colorWithRed_green_blue_alpha r g b a =
  do
    cls' <- getRequiredClass "CIColor"
    sendClassMessage cls' colorWithRed_green_blue_alphaSelector r g b a

-- | @+ colorWithRed:green:blue:@
colorWithRed_green_blue :: CDouble -> CDouble -> CDouble -> IO (Id CIColor)
colorWithRed_green_blue r g b =
  do
    cls' <- getRequiredClass "CIColor"
    sendClassMessage cls' colorWithRed_green_blueSelector r g b

-- | @+ colorWithRed:green:blue:alpha:colorSpace:@
colorWithRed_green_blue_alpha_colorSpace :: CDouble -> CDouble -> CDouble -> CDouble -> Ptr () -> IO (Id CIColor)
colorWithRed_green_blue_alpha_colorSpace r g b a colorSpace =
  do
    cls' <- getRequiredClass "CIColor"
    sendClassMessage cls' colorWithRed_green_blue_alpha_colorSpaceSelector r g b a colorSpace

-- | @+ colorWithRed:green:blue:colorSpace:@
colorWithRed_green_blue_colorSpace :: CDouble -> CDouble -> CDouble -> Ptr () -> IO (Id CIColor)
colorWithRed_green_blue_colorSpace r g b colorSpace =
  do
    cls' <- getRequiredClass "CIColor"
    sendClassMessage cls' colorWithRed_green_blue_colorSpaceSelector r g b colorSpace

-- | @+ colorWithString:@
colorWithString :: IsNSString representation => representation -> IO (Id CIColor)
colorWithString representation =
  do
    cls' <- getRequiredClass "CIColor"
    sendClassMessage cls' colorWithStringSelector (toNSString representation)

-- | @- initWithCGColor:@
initWithCGColor :: IsCIColor ciColor => ciColor -> Ptr () -> IO (Id CIColor)
initWithCGColor ciColor c =
  sendOwnedMessage ciColor initWithCGColorSelector c

-- | @- initWithRed:green:blue:alpha:@
initWithRed_green_blue_alpha :: IsCIColor ciColor => ciColor -> CDouble -> CDouble -> CDouble -> CDouble -> IO (Id CIColor)
initWithRed_green_blue_alpha ciColor r g b a =
  sendOwnedMessage ciColor initWithRed_green_blue_alphaSelector r g b a

-- | @- initWithRed:green:blue:@
initWithRed_green_blue :: IsCIColor ciColor => ciColor -> CDouble -> CDouble -> CDouble -> IO (Id CIColor)
initWithRed_green_blue ciColor r g b =
  sendOwnedMessage ciColor initWithRed_green_blueSelector r g b

-- | @- initWithRed:green:blue:alpha:colorSpace:@
initWithRed_green_blue_alpha_colorSpace :: IsCIColor ciColor => ciColor -> CDouble -> CDouble -> CDouble -> CDouble -> Ptr () -> IO (Id CIColor)
initWithRed_green_blue_alpha_colorSpace ciColor r g b a colorSpace =
  sendOwnedMessage ciColor initWithRed_green_blue_alpha_colorSpaceSelector r g b a colorSpace

-- | @- initWithRed:green:blue:colorSpace:@
initWithRed_green_blue_colorSpace :: IsCIColor ciColor => ciColor -> CDouble -> CDouble -> CDouble -> Ptr () -> IO (Id CIColor)
initWithRed_green_blue_colorSpace ciColor r g b colorSpace =
  sendOwnedMessage ciColor initWithRed_green_blue_colorSpaceSelector r g b colorSpace

-- | @- numberOfComponents@
numberOfComponents :: IsCIColor ciColor => ciColor -> IO CULong
numberOfComponents ciColor =
  sendMessage ciColor numberOfComponentsSelector

-- | @- components@
components :: IsCIColor ciColor => ciColor -> IO RawId
components ciColor =
  sendMessage ciColor componentsSelector

-- | @- alpha@
alpha :: IsCIColor ciColor => ciColor -> IO CDouble
alpha ciColor =
  sendMessage ciColor alphaSelector

-- | @- colorSpace@
colorSpace :: IsCIColor ciColor => ciColor -> IO (Ptr ())
colorSpace ciColor =
  sendMessage ciColor colorSpaceSelector

-- | @- red@
red :: IsCIColor ciColor => ciColor -> IO CDouble
red ciColor =
  sendMessage ciColor redSelector

-- | @- green@
green :: IsCIColor ciColor => ciColor -> IO CDouble
green ciColor =
  sendMessage ciColor greenSelector

-- | @- blue@
blue :: IsCIColor ciColor => ciColor -> IO CDouble
blue ciColor =
  sendMessage ciColor blueSelector

-- | @- stringRepresentation@
stringRepresentation :: IsCIColor ciColor => ciColor -> IO (Id NSString)
stringRepresentation ciColor =
  sendMessage ciColor stringRepresentationSelector

-- | @+ blackColor@
blackColor :: IO RawId
blackColor  =
  do
    cls' <- getRequiredClass "CIColor"
    sendClassMessage cls' blackColorSelector

-- | @+ whiteColor@
whiteColor :: IO RawId
whiteColor  =
  do
    cls' <- getRequiredClass "CIColor"
    sendClassMessage cls' whiteColorSelector

-- | @+ grayColor@
grayColor :: IO RawId
grayColor  =
  do
    cls' <- getRequiredClass "CIColor"
    sendClassMessage cls' grayColorSelector

-- | @+ redColor@
redColor :: IO RawId
redColor  =
  do
    cls' <- getRequiredClass "CIColor"
    sendClassMessage cls' redColorSelector

-- | @+ greenColor@
greenColor :: IO RawId
greenColor  =
  do
    cls' <- getRequiredClass "CIColor"
    sendClassMessage cls' greenColorSelector

-- | @+ blueColor@
blueColor :: IO RawId
blueColor  =
  do
    cls' <- getRequiredClass "CIColor"
    sendClassMessage cls' blueColorSelector

-- | @+ cyanColor@
cyanColor :: IO RawId
cyanColor  =
  do
    cls' <- getRequiredClass "CIColor"
    sendClassMessage cls' cyanColorSelector

-- | @+ magentaColor@
magentaColor :: IO RawId
magentaColor  =
  do
    cls' <- getRequiredClass "CIColor"
    sendClassMessage cls' magentaColorSelector

-- | @+ yellowColor@
yellowColor :: IO RawId
yellowColor  =
  do
    cls' <- getRequiredClass "CIColor"
    sendClassMessage cls' yellowColorSelector

-- | @+ clearColor@
clearColor :: IO RawId
clearColor  =
  do
    cls' <- getRequiredClass "CIColor"
    sendClassMessage cls' clearColorSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @colorWithCGColor:@
colorWithCGColorSelector :: Selector '[Ptr ()] (Id CIColor)
colorWithCGColorSelector = mkSelector "colorWithCGColor:"

-- | @Selector@ for @colorWithRed:green:blue:alpha:@
colorWithRed_green_blue_alphaSelector :: Selector '[CDouble, CDouble, CDouble, CDouble] (Id CIColor)
colorWithRed_green_blue_alphaSelector = mkSelector "colorWithRed:green:blue:alpha:"

-- | @Selector@ for @colorWithRed:green:blue:@
colorWithRed_green_blueSelector :: Selector '[CDouble, CDouble, CDouble] (Id CIColor)
colorWithRed_green_blueSelector = mkSelector "colorWithRed:green:blue:"

-- | @Selector@ for @colorWithRed:green:blue:alpha:colorSpace:@
colorWithRed_green_blue_alpha_colorSpaceSelector :: Selector '[CDouble, CDouble, CDouble, CDouble, Ptr ()] (Id CIColor)
colorWithRed_green_blue_alpha_colorSpaceSelector = mkSelector "colorWithRed:green:blue:alpha:colorSpace:"

-- | @Selector@ for @colorWithRed:green:blue:colorSpace:@
colorWithRed_green_blue_colorSpaceSelector :: Selector '[CDouble, CDouble, CDouble, Ptr ()] (Id CIColor)
colorWithRed_green_blue_colorSpaceSelector = mkSelector "colorWithRed:green:blue:colorSpace:"

-- | @Selector@ for @colorWithString:@
colorWithStringSelector :: Selector '[Id NSString] (Id CIColor)
colorWithStringSelector = mkSelector "colorWithString:"

-- | @Selector@ for @initWithCGColor:@
initWithCGColorSelector :: Selector '[Ptr ()] (Id CIColor)
initWithCGColorSelector = mkSelector "initWithCGColor:"

-- | @Selector@ for @initWithRed:green:blue:alpha:@
initWithRed_green_blue_alphaSelector :: Selector '[CDouble, CDouble, CDouble, CDouble] (Id CIColor)
initWithRed_green_blue_alphaSelector = mkSelector "initWithRed:green:blue:alpha:"

-- | @Selector@ for @initWithRed:green:blue:@
initWithRed_green_blueSelector :: Selector '[CDouble, CDouble, CDouble] (Id CIColor)
initWithRed_green_blueSelector = mkSelector "initWithRed:green:blue:"

-- | @Selector@ for @initWithRed:green:blue:alpha:colorSpace:@
initWithRed_green_blue_alpha_colorSpaceSelector :: Selector '[CDouble, CDouble, CDouble, CDouble, Ptr ()] (Id CIColor)
initWithRed_green_blue_alpha_colorSpaceSelector = mkSelector "initWithRed:green:blue:alpha:colorSpace:"

-- | @Selector@ for @initWithRed:green:blue:colorSpace:@
initWithRed_green_blue_colorSpaceSelector :: Selector '[CDouble, CDouble, CDouble, Ptr ()] (Id CIColor)
initWithRed_green_blue_colorSpaceSelector = mkSelector "initWithRed:green:blue:colorSpace:"

-- | @Selector@ for @numberOfComponents@
numberOfComponentsSelector :: Selector '[] CULong
numberOfComponentsSelector = mkSelector "numberOfComponents"

-- | @Selector@ for @components@
componentsSelector :: Selector '[] RawId
componentsSelector = mkSelector "components"

-- | @Selector@ for @alpha@
alphaSelector :: Selector '[] CDouble
alphaSelector = mkSelector "alpha"

-- | @Selector@ for @colorSpace@
colorSpaceSelector :: Selector '[] (Ptr ())
colorSpaceSelector = mkSelector "colorSpace"

-- | @Selector@ for @red@
redSelector :: Selector '[] CDouble
redSelector = mkSelector "red"

-- | @Selector@ for @green@
greenSelector :: Selector '[] CDouble
greenSelector = mkSelector "green"

-- | @Selector@ for @blue@
blueSelector :: Selector '[] CDouble
blueSelector = mkSelector "blue"

-- | @Selector@ for @stringRepresentation@
stringRepresentationSelector :: Selector '[] (Id NSString)
stringRepresentationSelector = mkSelector "stringRepresentation"

-- | @Selector@ for @blackColor@
blackColorSelector :: Selector '[] RawId
blackColorSelector = mkSelector "blackColor"

-- | @Selector@ for @whiteColor@
whiteColorSelector :: Selector '[] RawId
whiteColorSelector = mkSelector "whiteColor"

-- | @Selector@ for @grayColor@
grayColorSelector :: Selector '[] RawId
grayColorSelector = mkSelector "grayColor"

-- | @Selector@ for @redColor@
redColorSelector :: Selector '[] RawId
redColorSelector = mkSelector "redColor"

-- | @Selector@ for @greenColor@
greenColorSelector :: Selector '[] RawId
greenColorSelector = mkSelector "greenColor"

-- | @Selector@ for @blueColor@
blueColorSelector :: Selector '[] RawId
blueColorSelector = mkSelector "blueColor"

-- | @Selector@ for @cyanColor@
cyanColorSelector :: Selector '[] RawId
cyanColorSelector = mkSelector "cyanColor"

-- | @Selector@ for @magentaColor@
magentaColorSelector :: Selector '[] RawId
magentaColorSelector = mkSelector "magentaColor"

-- | @Selector@ for @yellowColor@
yellowColorSelector :: Selector '[] RawId
yellowColorSelector = mkSelector "yellowColor"

-- | @Selector@ for @clearColor@
clearColorSelector :: Selector '[] RawId
clearColorSelector = mkSelector "clearColor"

