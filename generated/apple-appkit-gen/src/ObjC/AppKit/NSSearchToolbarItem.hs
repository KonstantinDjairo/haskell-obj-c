{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @NSSearchToolbarItem@.
module ObjC.AppKit.NSSearchToolbarItem
  ( NSSearchToolbarItem
  , IsNSSearchToolbarItem(..)
  , beginSearchInteraction
  , endSearchInteraction
  , searchField
  , setSearchField
  , view
  , setView
  , resignsFirstResponderWithCancel
  , setResignsFirstResponderWithCancel
  , preferredWidthForSearchField
  , setPreferredWidthForSearchField
  , beginSearchInteractionSelector
  , endSearchInteractionSelector
  , preferredWidthForSearchFieldSelector
  , resignsFirstResponderWithCancelSelector
  , searchFieldSelector
  , setPreferredWidthForSearchFieldSelector
  , setResignsFirstResponderWithCancelSelector
  , setSearchFieldSelector
  , setViewSelector
  , viewSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AppKit.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- beginSearchInteraction@
beginSearchInteraction :: IsNSSearchToolbarItem nsSearchToolbarItem => nsSearchToolbarItem -> IO ()
beginSearchInteraction nsSearchToolbarItem =
  sendMessage nsSearchToolbarItem beginSearchInteractionSelector

-- | @- endSearchInteraction@
endSearchInteraction :: IsNSSearchToolbarItem nsSearchToolbarItem => nsSearchToolbarItem -> IO ()
endSearchInteraction nsSearchToolbarItem =
  sendMessage nsSearchToolbarItem endSearchInteractionSelector

-- | @- searchField@
searchField :: IsNSSearchToolbarItem nsSearchToolbarItem => nsSearchToolbarItem -> IO (Id NSSearchField)
searchField nsSearchToolbarItem =
  sendMessage nsSearchToolbarItem searchFieldSelector

-- | @- setSearchField:@
setSearchField :: (IsNSSearchToolbarItem nsSearchToolbarItem, IsNSSearchField value) => nsSearchToolbarItem -> value -> IO ()
setSearchField nsSearchToolbarItem value =
  sendMessage nsSearchToolbarItem setSearchFieldSelector (toNSSearchField value)

-- | @- view@
view :: IsNSSearchToolbarItem nsSearchToolbarItem => nsSearchToolbarItem -> IO RawId
view nsSearchToolbarItem =
  sendMessage nsSearchToolbarItem viewSelector

-- | @- setView:@
setView :: IsNSSearchToolbarItem nsSearchToolbarItem => nsSearchToolbarItem -> RawId -> IO ()
setView nsSearchToolbarItem value =
  sendMessage nsSearchToolbarItem setViewSelector value

-- | @- resignsFirstResponderWithCancel@
resignsFirstResponderWithCancel :: IsNSSearchToolbarItem nsSearchToolbarItem => nsSearchToolbarItem -> IO Bool
resignsFirstResponderWithCancel nsSearchToolbarItem =
  sendMessage nsSearchToolbarItem resignsFirstResponderWithCancelSelector

-- | @- setResignsFirstResponderWithCancel:@
setResignsFirstResponderWithCancel :: IsNSSearchToolbarItem nsSearchToolbarItem => nsSearchToolbarItem -> Bool -> IO ()
setResignsFirstResponderWithCancel nsSearchToolbarItem value =
  sendMessage nsSearchToolbarItem setResignsFirstResponderWithCancelSelector value

-- | @- preferredWidthForSearchField@
preferredWidthForSearchField :: IsNSSearchToolbarItem nsSearchToolbarItem => nsSearchToolbarItem -> IO CDouble
preferredWidthForSearchField nsSearchToolbarItem =
  sendMessage nsSearchToolbarItem preferredWidthForSearchFieldSelector

-- | @- setPreferredWidthForSearchField:@
setPreferredWidthForSearchField :: IsNSSearchToolbarItem nsSearchToolbarItem => nsSearchToolbarItem -> CDouble -> IO ()
setPreferredWidthForSearchField nsSearchToolbarItem value =
  sendMessage nsSearchToolbarItem setPreferredWidthForSearchFieldSelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @beginSearchInteraction@
beginSearchInteractionSelector :: Selector '[] ()
beginSearchInteractionSelector = mkSelector "beginSearchInteraction"

-- | @Selector@ for @endSearchInteraction@
endSearchInteractionSelector :: Selector '[] ()
endSearchInteractionSelector = mkSelector "endSearchInteraction"

-- | @Selector@ for @searchField@
searchFieldSelector :: Selector '[] (Id NSSearchField)
searchFieldSelector = mkSelector "searchField"

-- | @Selector@ for @setSearchField:@
setSearchFieldSelector :: Selector '[Id NSSearchField] ()
setSearchFieldSelector = mkSelector "setSearchField:"

-- | @Selector@ for @view@
viewSelector :: Selector '[] RawId
viewSelector = mkSelector "view"

-- | @Selector@ for @setView:@
setViewSelector :: Selector '[RawId] ()
setViewSelector = mkSelector "setView:"

-- | @Selector@ for @resignsFirstResponderWithCancel@
resignsFirstResponderWithCancelSelector :: Selector '[] Bool
resignsFirstResponderWithCancelSelector = mkSelector "resignsFirstResponderWithCancel"

-- | @Selector@ for @setResignsFirstResponderWithCancel:@
setResignsFirstResponderWithCancelSelector :: Selector '[Bool] ()
setResignsFirstResponderWithCancelSelector = mkSelector "setResignsFirstResponderWithCancel:"

-- | @Selector@ for @preferredWidthForSearchField@
preferredWidthForSearchFieldSelector :: Selector '[] CDouble
preferredWidthForSearchFieldSelector = mkSelector "preferredWidthForSearchField"

-- | @Selector@ for @setPreferredWidthForSearchField:@
setPreferredWidthForSearchFieldSelector :: Selector '[CDouble] ()
setPreferredWidthForSearchFieldSelector = mkSelector "setPreferredWidthForSearchField:"

