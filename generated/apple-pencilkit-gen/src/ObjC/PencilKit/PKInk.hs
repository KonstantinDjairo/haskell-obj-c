{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | PKInk provides a description of how marks on a PKCanvas render and are created.
--
-- Generated bindings for @PKInk@.
module ObjC.PencilKit.PKInk
  ( PKInk
  , IsPKInk(..)
  , initWithInkType_color
  , inkType
  , color
  , colorSelector
  , initWithInkType_colorSelector
  , inkTypeSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.PencilKit.Internal.Classes
import ObjC.AppKit.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- initWithInkType:color:@
initWithInkType_color :: (IsPKInk pkInk, IsNSString type_, IsNSColor color) => pkInk -> type_ -> color -> IO (Id PKInk)
initWithInkType_color pkInk type_ color =
  sendOwnedMessage pkInk initWithInkType_colorSelector (toNSString type_) (toNSColor color)

-- | The type of ink, eg. pen, pencil...
--
-- ObjC selector: @- inkType@
inkType :: IsPKInk pkInk => pkInk -> IO (Id NSString)
inkType pkInk =
  sendMessage pkInk inkTypeSelector

-- | @- color@
color :: IsPKInk pkInk => pkInk -> IO (Id NSColor)
color pkInk =
  sendMessage pkInk colorSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithInkType:color:@
initWithInkType_colorSelector :: Selector '[Id NSString, Id NSColor] (Id PKInk)
initWithInkType_colorSelector = mkSelector "initWithInkType:color:"

-- | @Selector@ for @inkType@
inkTypeSelector :: Selector '[] (Id NSString)
inkTypeSelector = mkSelector "inkType"

-- | @Selector@ for @color@
colorSelector :: Selector '[] (Id NSColor)
colorSelector = mkSelector "color"

