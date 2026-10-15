{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @NSCollectionViewItem@.
module ObjC.AppKit.NSCollectionViewItem
  ( NSCollectionViewItem
  , IsNSCollectionViewItem(..)
  , collectionView
  , selected
  , setSelected
  , highlightState
  , setHighlightState
  , imageView
  , setImageView
  , textField
  , setTextField
  , collectionViewSelector
  , highlightStateSelector
  , imageViewSelector
  , selectedSelector
  , setHighlightStateSelector
  , setImageViewSelector
  , setSelectedSelector
  , setTextFieldSelector
  , textFieldSelector

  -- * Enum types
  , NSCollectionViewItemHighlightState(NSCollectionViewItemHighlightState)
  , pattern NSCollectionViewItemHighlightNone
  , pattern NSCollectionViewItemHighlightForSelection
  , pattern NSCollectionViewItemHighlightForDeselection
  , pattern NSCollectionViewItemHighlightAsDropTarget

  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AppKit.Internal.Classes
import ObjC.AppKit.Internal.Enums
import ObjC.Foundation.Internal.Classes

-- | @- collectionView@
collectionView :: IsNSCollectionViewItem nsCollectionViewItem => nsCollectionViewItem -> IO (Id NSCollectionView)
collectionView nsCollectionViewItem =
  sendMessage nsCollectionViewItem collectionViewSelector

-- | @- selected@
selected :: IsNSCollectionViewItem nsCollectionViewItem => nsCollectionViewItem -> IO Bool
selected nsCollectionViewItem =
  sendMessage nsCollectionViewItem selectedSelector

-- | @- setSelected:@
setSelected :: IsNSCollectionViewItem nsCollectionViewItem => nsCollectionViewItem -> Bool -> IO ()
setSelected nsCollectionViewItem value =
  sendMessage nsCollectionViewItem setSelectedSelector value

-- | @- highlightState@
highlightState :: IsNSCollectionViewItem nsCollectionViewItem => nsCollectionViewItem -> IO NSCollectionViewItemHighlightState
highlightState nsCollectionViewItem =
  sendMessage nsCollectionViewItem highlightStateSelector

-- | @- setHighlightState:@
setHighlightState :: IsNSCollectionViewItem nsCollectionViewItem => nsCollectionViewItem -> NSCollectionViewItemHighlightState -> IO ()
setHighlightState nsCollectionViewItem value =
  sendMessage nsCollectionViewItem setHighlightStateSelector value

-- | @- imageView@
imageView :: IsNSCollectionViewItem nsCollectionViewItem => nsCollectionViewItem -> IO RawId
imageView nsCollectionViewItem =
  sendMessage nsCollectionViewItem imageViewSelector

-- | @- setImageView:@
setImageView :: IsNSCollectionViewItem nsCollectionViewItem => nsCollectionViewItem -> RawId -> IO ()
setImageView nsCollectionViewItem value =
  sendMessage nsCollectionViewItem setImageViewSelector value

-- | @- textField@
textField :: IsNSCollectionViewItem nsCollectionViewItem => nsCollectionViewItem -> IO RawId
textField nsCollectionViewItem =
  sendMessage nsCollectionViewItem textFieldSelector

-- | @- setTextField:@
setTextField :: IsNSCollectionViewItem nsCollectionViewItem => nsCollectionViewItem -> RawId -> IO ()
setTextField nsCollectionViewItem value =
  sendMessage nsCollectionViewItem setTextFieldSelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @collectionView@
collectionViewSelector :: Selector '[] (Id NSCollectionView)
collectionViewSelector = mkSelector "collectionView"

-- | @Selector@ for @selected@
selectedSelector :: Selector '[] Bool
selectedSelector = mkSelector "selected"

-- | @Selector@ for @setSelected:@
setSelectedSelector :: Selector '[Bool] ()
setSelectedSelector = mkSelector "setSelected:"

-- | @Selector@ for @highlightState@
highlightStateSelector :: Selector '[] NSCollectionViewItemHighlightState
highlightStateSelector = mkSelector "highlightState"

-- | @Selector@ for @setHighlightState:@
setHighlightStateSelector :: Selector '[NSCollectionViewItemHighlightState] ()
setHighlightStateSelector = mkSelector "setHighlightState:"

-- | @Selector@ for @imageView@
imageViewSelector :: Selector '[] RawId
imageViewSelector = mkSelector "imageView"

-- | @Selector@ for @setImageView:@
setImageViewSelector :: Selector '[RawId] ()
setImageViewSelector = mkSelector "setImageView:"

-- | @Selector@ for @textField@
textFieldSelector :: Selector '[] RawId
textFieldSelector = mkSelector "textField"

-- | @Selector@ for @setTextField:@
setTextFieldSelector :: Selector '[RawId] ()
setTextFieldSelector = mkSelector "setTextField:"

