{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @CIColor@.
module ObjC.AppKit.CIColor
  ( CIColor
  , IsCIColor(..)
  , initWithColor
  , initWithColorSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AppKit.Internal.Classes
import ObjC.CoreImage.Internal.Classes

-- | @- initWithColor:@
initWithColor :: (IsCIColor ciColor, IsNSColor color) => ciColor -> color -> IO (Id CIColor)
initWithColor ciColor color =
  sendOwnedMessage ciColor initWithColorSelector (toNSColor color)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithColor:@
initWithColorSelector :: Selector '[Id NSColor] (Id CIColor)
initWithColorSelector = mkSelector "initWithColor:"

