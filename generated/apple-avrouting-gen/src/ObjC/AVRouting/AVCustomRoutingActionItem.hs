{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | AVCustomRoutingActionItem
--
-- AVCustomRoutingActionItem objects can be created by 3rd parties to inject custom action items into the route picker.
--
-- An item can be any action the app wants to provide as menu items besides the discovered routes.    Tapping on the custom items dismisses the picker and invokes a callback to the app telling it which item was tapped. (See -[AVCustomRoutingController customRoutingController:didSelectItem:])
--
-- Generated bindings for @AVCustomRoutingActionItem@.
module ObjC.AVRouting.AVCustomRoutingActionItem
  ( AVCustomRoutingActionItem
  , IsAVCustomRoutingActionItem(..)
  , type_
  , setType
  , overrideTitle
  , setOverrideTitle
  , overrideTitleSelector
  , setOverrideTitleSelector
  , setTypeSelector
  , typeSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AVRouting.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | type
--
-- A UTType with an identifier which matches a UTType in the info.plist.
--
-- Provide a UTTypeSymbolName and description in the info.plist.
--
-- ObjC selector: @- type@
type_ :: IsAVCustomRoutingActionItem avCustomRoutingActionItem => avCustomRoutingActionItem -> IO RawId
type_ avCustomRoutingActionItem =
  sendMessage avCustomRoutingActionItem typeSelector

-- | type
--
-- A UTType with an identifier which matches a UTType in the info.plist.
--
-- Provide a UTTypeSymbolName and description in the info.plist.
--
-- ObjC selector: @- setType:@
setType :: IsAVCustomRoutingActionItem avCustomRoutingActionItem => avCustomRoutingActionItem -> RawId -> IO ()
setType avCustomRoutingActionItem value =
  sendMessage avCustomRoutingActionItem setTypeSelector value

-- | overrideTitle
--
-- A title which overrides the title of the UTType.
--
-- Use this to dynamically override the title of the custom item.
--
-- ObjC selector: @- overrideTitle@
overrideTitle :: IsAVCustomRoutingActionItem avCustomRoutingActionItem => avCustomRoutingActionItem -> IO RawId
overrideTitle avCustomRoutingActionItem =
  sendMessage avCustomRoutingActionItem overrideTitleSelector

-- | overrideTitle
--
-- A title which overrides the title of the UTType.
--
-- Use this to dynamically override the title of the custom item.
--
-- ObjC selector: @- setOverrideTitle:@
setOverrideTitle :: IsAVCustomRoutingActionItem avCustomRoutingActionItem => avCustomRoutingActionItem -> RawId -> IO ()
setOverrideTitle avCustomRoutingActionItem value =
  sendMessage avCustomRoutingActionItem setOverrideTitleSelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @type@
typeSelector :: Selector '[] RawId
typeSelector = mkSelector "type"

-- | @Selector@ for @setType:@
setTypeSelector :: Selector '[RawId] ()
setTypeSelector = mkSelector "setType:"

-- | @Selector@ for @overrideTitle@
overrideTitleSelector :: Selector '[] RawId
overrideTitleSelector = mkSelector "overrideTitle"

-- | @Selector@ for @setOverrideTitle:@
setOverrideTitleSelector :: Selector '[RawId] ()
setOverrideTitleSelector = mkSelector "setOverrideTitle:"

