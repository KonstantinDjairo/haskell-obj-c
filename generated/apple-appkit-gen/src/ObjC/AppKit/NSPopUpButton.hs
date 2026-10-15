{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @NSPopUpButton@.
module ObjC.AppKit.NSPopUpButton
  ( NSPopUpButton
  , IsNSPopUpButton(..)
  , initWithFrame_pullsDown
  , addItemWithTitle
  , addItemsWithTitles
  , insertItemWithTitle_atIndex
  , removeItemWithTitle
  , removeItemAtIndex
  , removeAllItems
  , indexOfItem
  , indexOfItemWithTitle
  , indexOfItemWithTag
  , indexOfItemWithRepresentedObject
  , indexOfItemWithTarget_andAction
  , itemAtIndex
  , itemWithTitle
  , selectItem
  , selectItemAtIndex
  , selectItemWithTitle
  , selectItemWithTag
  , setTitle
  , synchronizeTitleAndSelectedItem
  , itemTitleAtIndex
  , menu
  , setMenu
  , pullsDown
  , setPullsDown
  , autoenablesItems
  , setAutoenablesItems
  , preferredEdge
  , setPreferredEdge
  , itemArray
  , numberOfItems
  , lastItem
  , selectedItem
  , indexOfSelectedItem
  , selectedTag
  , itemTitles
  , titleOfSelectedItem
  , addItemWithTitleSelector
  , addItemsWithTitlesSelector
  , autoenablesItemsSelector
  , indexOfItemSelector
  , indexOfItemWithRepresentedObjectSelector
  , indexOfItemWithTagSelector
  , indexOfItemWithTarget_andActionSelector
  , indexOfItemWithTitleSelector
  , indexOfSelectedItemSelector
  , initWithFrame_pullsDownSelector
  , insertItemWithTitle_atIndexSelector
  , itemArraySelector
  , itemAtIndexSelector
  , itemTitleAtIndexSelector
  , itemTitlesSelector
  , itemWithTitleSelector
  , lastItemSelector
  , menuSelector
  , numberOfItemsSelector
  , preferredEdgeSelector
  , pullsDownSelector
  , removeAllItemsSelector
  , removeItemAtIndexSelector
  , removeItemWithTitleSelector
  , selectItemAtIndexSelector
  , selectItemSelector
  , selectItemWithTagSelector
  , selectItemWithTitleSelector
  , selectedItemSelector
  , selectedTagSelector
  , setAutoenablesItemsSelector
  , setMenuSelector
  , setPreferredEdgeSelector
  , setPullsDownSelector
  , setTitleSelector
  , synchronizeTitleAndSelectedItemSelector
  , titleOfSelectedItemSelector

  -- * Enum types
  , NSRectEdge(NSRectEdge)
  , pattern NSRectEdgeMinX
  , pattern NSRectEdgeMinY
  , pattern NSRectEdgeMaxX
  , pattern NSRectEdgeMaxY
  , pattern NSMinXEdge
  , pattern NSMinYEdge
  , pattern NSMaxXEdge
  , pattern NSMaxYEdge

  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AppKit.Internal.Classes
import ObjC.Foundation.Internal.Structs
import ObjC.Foundation.Internal.Enums
import ObjC.Foundation.Internal.Classes

-- | @- initWithFrame:pullsDown:@
initWithFrame_pullsDown :: IsNSPopUpButton nsPopUpButton => nsPopUpButton -> NSRect -> Bool -> IO (Id NSPopUpButton)
initWithFrame_pullsDown nsPopUpButton buttonFrame flag =
  sendOwnedMessage nsPopUpButton initWithFrame_pullsDownSelector buttonFrame flag

-- | @- addItemWithTitle:@
addItemWithTitle :: (IsNSPopUpButton nsPopUpButton, IsNSString title) => nsPopUpButton -> title -> IO ()
addItemWithTitle nsPopUpButton title =
  sendMessage nsPopUpButton addItemWithTitleSelector (toNSString title)

-- | @- addItemsWithTitles:@
addItemsWithTitles :: (IsNSPopUpButton nsPopUpButton, IsNSArray itemTitles) => nsPopUpButton -> itemTitles -> IO ()
addItemsWithTitles nsPopUpButton itemTitles =
  sendMessage nsPopUpButton addItemsWithTitlesSelector (toNSArray itemTitles)

-- | @- insertItemWithTitle:atIndex:@
insertItemWithTitle_atIndex :: (IsNSPopUpButton nsPopUpButton, IsNSString title) => nsPopUpButton -> title -> CLong -> IO ()
insertItemWithTitle_atIndex nsPopUpButton title index =
  sendMessage nsPopUpButton insertItemWithTitle_atIndexSelector (toNSString title) index

-- | @- removeItemWithTitle:@
removeItemWithTitle :: (IsNSPopUpButton nsPopUpButton, IsNSString title) => nsPopUpButton -> title -> IO ()
removeItemWithTitle nsPopUpButton title =
  sendMessage nsPopUpButton removeItemWithTitleSelector (toNSString title)

-- | @- removeItemAtIndex:@
removeItemAtIndex :: IsNSPopUpButton nsPopUpButton => nsPopUpButton -> CLong -> IO ()
removeItemAtIndex nsPopUpButton index =
  sendMessage nsPopUpButton removeItemAtIndexSelector index

-- | @- removeAllItems@
removeAllItems :: IsNSPopUpButton nsPopUpButton => nsPopUpButton -> IO ()
removeAllItems nsPopUpButton =
  sendMessage nsPopUpButton removeAllItemsSelector

-- | @- indexOfItem:@
indexOfItem :: (IsNSPopUpButton nsPopUpButton, IsNSMenuItem item) => nsPopUpButton -> item -> IO CLong
indexOfItem nsPopUpButton item =
  sendMessage nsPopUpButton indexOfItemSelector (toNSMenuItem item)

-- | @- indexOfItemWithTitle:@
indexOfItemWithTitle :: (IsNSPopUpButton nsPopUpButton, IsNSString title) => nsPopUpButton -> title -> IO CLong
indexOfItemWithTitle nsPopUpButton title =
  sendMessage nsPopUpButton indexOfItemWithTitleSelector (toNSString title)

-- | @- indexOfItemWithTag:@
indexOfItemWithTag :: IsNSPopUpButton nsPopUpButton => nsPopUpButton -> CLong -> IO CLong
indexOfItemWithTag nsPopUpButton tag =
  sendMessage nsPopUpButton indexOfItemWithTagSelector tag

-- | @- indexOfItemWithRepresentedObject:@
indexOfItemWithRepresentedObject :: IsNSPopUpButton nsPopUpButton => nsPopUpButton -> RawId -> IO CLong
indexOfItemWithRepresentedObject nsPopUpButton obj_ =
  sendMessage nsPopUpButton indexOfItemWithRepresentedObjectSelector obj_

-- | @- indexOfItemWithTarget:andAction:@
indexOfItemWithTarget_andAction :: IsNSPopUpButton nsPopUpButton => nsPopUpButton -> RawId -> Sel -> IO CLong
indexOfItemWithTarget_andAction nsPopUpButton target actionSelector =
  sendMessage nsPopUpButton indexOfItemWithTarget_andActionSelector target actionSelector

-- | @- itemAtIndex:@
itemAtIndex :: IsNSPopUpButton nsPopUpButton => nsPopUpButton -> CLong -> IO (Id NSMenuItem)
itemAtIndex nsPopUpButton index =
  sendMessage nsPopUpButton itemAtIndexSelector index

-- | @- itemWithTitle:@
itemWithTitle :: (IsNSPopUpButton nsPopUpButton, IsNSString title) => nsPopUpButton -> title -> IO (Id NSMenuItem)
itemWithTitle nsPopUpButton title =
  sendMessage nsPopUpButton itemWithTitleSelector (toNSString title)

-- | @- selectItem:@
selectItem :: (IsNSPopUpButton nsPopUpButton, IsNSMenuItem item) => nsPopUpButton -> item -> IO ()
selectItem nsPopUpButton item =
  sendMessage nsPopUpButton selectItemSelector (toNSMenuItem item)

-- | @- selectItemAtIndex:@
selectItemAtIndex :: IsNSPopUpButton nsPopUpButton => nsPopUpButton -> CLong -> IO ()
selectItemAtIndex nsPopUpButton index =
  sendMessage nsPopUpButton selectItemAtIndexSelector index

-- | @- selectItemWithTitle:@
selectItemWithTitle :: (IsNSPopUpButton nsPopUpButton, IsNSString title) => nsPopUpButton -> title -> IO ()
selectItemWithTitle nsPopUpButton title =
  sendMessage nsPopUpButton selectItemWithTitleSelector (toNSString title)

-- | @- selectItemWithTag:@
selectItemWithTag :: IsNSPopUpButton nsPopUpButton => nsPopUpButton -> CLong -> IO Bool
selectItemWithTag nsPopUpButton tag =
  sendMessage nsPopUpButton selectItemWithTagSelector tag

-- | @- setTitle:@
setTitle :: (IsNSPopUpButton nsPopUpButton, IsNSString string) => nsPopUpButton -> string -> IO ()
setTitle nsPopUpButton string =
  sendMessage nsPopUpButton setTitleSelector (toNSString string)

-- | @- synchronizeTitleAndSelectedItem@
synchronizeTitleAndSelectedItem :: IsNSPopUpButton nsPopUpButton => nsPopUpButton -> IO ()
synchronizeTitleAndSelectedItem nsPopUpButton =
  sendMessage nsPopUpButton synchronizeTitleAndSelectedItemSelector

-- | @- itemTitleAtIndex:@
itemTitleAtIndex :: IsNSPopUpButton nsPopUpButton => nsPopUpButton -> CLong -> IO (Id NSString)
itemTitleAtIndex nsPopUpButton index =
  sendMessage nsPopUpButton itemTitleAtIndexSelector index

-- | @- menu@
menu :: IsNSPopUpButton nsPopUpButton => nsPopUpButton -> IO (Id NSMenu)
menu nsPopUpButton =
  sendMessage nsPopUpButton menuSelector

-- | @- setMenu:@
setMenu :: (IsNSPopUpButton nsPopUpButton, IsNSMenu value) => nsPopUpButton -> value -> IO ()
setMenu nsPopUpButton value =
  sendMessage nsPopUpButton setMenuSelector (toNSMenu value)

-- | @- pullsDown@
pullsDown :: IsNSPopUpButton nsPopUpButton => nsPopUpButton -> IO Bool
pullsDown nsPopUpButton =
  sendMessage nsPopUpButton pullsDownSelector

-- | @- setPullsDown:@
setPullsDown :: IsNSPopUpButton nsPopUpButton => nsPopUpButton -> Bool -> IO ()
setPullsDown nsPopUpButton value =
  sendMessage nsPopUpButton setPullsDownSelector value

-- | @- autoenablesItems@
autoenablesItems :: IsNSPopUpButton nsPopUpButton => nsPopUpButton -> IO Bool
autoenablesItems nsPopUpButton =
  sendMessage nsPopUpButton autoenablesItemsSelector

-- | @- setAutoenablesItems:@
setAutoenablesItems :: IsNSPopUpButton nsPopUpButton => nsPopUpButton -> Bool -> IO ()
setAutoenablesItems nsPopUpButton value =
  sendMessage nsPopUpButton setAutoenablesItemsSelector value

-- | @- preferredEdge@
preferredEdge :: IsNSPopUpButton nsPopUpButton => nsPopUpButton -> IO NSRectEdge
preferredEdge nsPopUpButton =
  sendMessage nsPopUpButton preferredEdgeSelector

-- | @- setPreferredEdge:@
setPreferredEdge :: IsNSPopUpButton nsPopUpButton => nsPopUpButton -> NSRectEdge -> IO ()
setPreferredEdge nsPopUpButton value =
  sendMessage nsPopUpButton setPreferredEdgeSelector value

-- | @- itemArray@
itemArray :: IsNSPopUpButton nsPopUpButton => nsPopUpButton -> IO (Id NSArray)
itemArray nsPopUpButton =
  sendMessage nsPopUpButton itemArraySelector

-- | @- numberOfItems@
numberOfItems :: IsNSPopUpButton nsPopUpButton => nsPopUpButton -> IO CLong
numberOfItems nsPopUpButton =
  sendMessage nsPopUpButton numberOfItemsSelector

-- | @- lastItem@
lastItem :: IsNSPopUpButton nsPopUpButton => nsPopUpButton -> IO (Id NSMenuItem)
lastItem nsPopUpButton =
  sendMessage nsPopUpButton lastItemSelector

-- | @- selectedItem@
selectedItem :: IsNSPopUpButton nsPopUpButton => nsPopUpButton -> IO (Id NSMenuItem)
selectedItem nsPopUpButton =
  sendMessage nsPopUpButton selectedItemSelector

-- | @- indexOfSelectedItem@
indexOfSelectedItem :: IsNSPopUpButton nsPopUpButton => nsPopUpButton -> IO CLong
indexOfSelectedItem nsPopUpButton =
  sendMessage nsPopUpButton indexOfSelectedItemSelector

-- | @- selectedTag@
selectedTag :: IsNSPopUpButton nsPopUpButton => nsPopUpButton -> IO CLong
selectedTag nsPopUpButton =
  sendMessage nsPopUpButton selectedTagSelector

-- | @- itemTitles@
itemTitles :: IsNSPopUpButton nsPopUpButton => nsPopUpButton -> IO (Id NSArray)
itemTitles nsPopUpButton =
  sendMessage nsPopUpButton itemTitlesSelector

-- | @- titleOfSelectedItem@
titleOfSelectedItem :: IsNSPopUpButton nsPopUpButton => nsPopUpButton -> IO (Id NSString)
titleOfSelectedItem nsPopUpButton =
  sendMessage nsPopUpButton titleOfSelectedItemSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithFrame:pullsDown:@
initWithFrame_pullsDownSelector :: Selector '[NSRect, Bool] (Id NSPopUpButton)
initWithFrame_pullsDownSelector = mkSelector "initWithFrame:pullsDown:"

-- | @Selector@ for @addItemWithTitle:@
addItemWithTitleSelector :: Selector '[Id NSString] ()
addItemWithTitleSelector = mkSelector "addItemWithTitle:"

-- | @Selector@ for @addItemsWithTitles:@
addItemsWithTitlesSelector :: Selector '[Id NSArray] ()
addItemsWithTitlesSelector = mkSelector "addItemsWithTitles:"

-- | @Selector@ for @insertItemWithTitle:atIndex:@
insertItemWithTitle_atIndexSelector :: Selector '[Id NSString, CLong] ()
insertItemWithTitle_atIndexSelector = mkSelector "insertItemWithTitle:atIndex:"

-- | @Selector@ for @removeItemWithTitle:@
removeItemWithTitleSelector :: Selector '[Id NSString] ()
removeItemWithTitleSelector = mkSelector "removeItemWithTitle:"

-- | @Selector@ for @removeItemAtIndex:@
removeItemAtIndexSelector :: Selector '[CLong] ()
removeItemAtIndexSelector = mkSelector "removeItemAtIndex:"

-- | @Selector@ for @removeAllItems@
removeAllItemsSelector :: Selector '[] ()
removeAllItemsSelector = mkSelector "removeAllItems"

-- | @Selector@ for @indexOfItem:@
indexOfItemSelector :: Selector '[Id NSMenuItem] CLong
indexOfItemSelector = mkSelector "indexOfItem:"

-- | @Selector@ for @indexOfItemWithTitle:@
indexOfItemWithTitleSelector :: Selector '[Id NSString] CLong
indexOfItemWithTitleSelector = mkSelector "indexOfItemWithTitle:"

-- | @Selector@ for @indexOfItemWithTag:@
indexOfItemWithTagSelector :: Selector '[CLong] CLong
indexOfItemWithTagSelector = mkSelector "indexOfItemWithTag:"

-- | @Selector@ for @indexOfItemWithRepresentedObject:@
indexOfItemWithRepresentedObjectSelector :: Selector '[RawId] CLong
indexOfItemWithRepresentedObjectSelector = mkSelector "indexOfItemWithRepresentedObject:"

-- | @Selector@ for @indexOfItemWithTarget:andAction:@
indexOfItemWithTarget_andActionSelector :: Selector '[RawId, Sel] CLong
indexOfItemWithTarget_andActionSelector = mkSelector "indexOfItemWithTarget:andAction:"

-- | @Selector@ for @itemAtIndex:@
itemAtIndexSelector :: Selector '[CLong] (Id NSMenuItem)
itemAtIndexSelector = mkSelector "itemAtIndex:"

-- | @Selector@ for @itemWithTitle:@
itemWithTitleSelector :: Selector '[Id NSString] (Id NSMenuItem)
itemWithTitleSelector = mkSelector "itemWithTitle:"

-- | @Selector@ for @selectItem:@
selectItemSelector :: Selector '[Id NSMenuItem] ()
selectItemSelector = mkSelector "selectItem:"

-- | @Selector@ for @selectItemAtIndex:@
selectItemAtIndexSelector :: Selector '[CLong] ()
selectItemAtIndexSelector = mkSelector "selectItemAtIndex:"

-- | @Selector@ for @selectItemWithTitle:@
selectItemWithTitleSelector :: Selector '[Id NSString] ()
selectItemWithTitleSelector = mkSelector "selectItemWithTitle:"

-- | @Selector@ for @selectItemWithTag:@
selectItemWithTagSelector :: Selector '[CLong] Bool
selectItemWithTagSelector = mkSelector "selectItemWithTag:"

-- | @Selector@ for @setTitle:@
setTitleSelector :: Selector '[Id NSString] ()
setTitleSelector = mkSelector "setTitle:"

-- | @Selector@ for @synchronizeTitleAndSelectedItem@
synchronizeTitleAndSelectedItemSelector :: Selector '[] ()
synchronizeTitleAndSelectedItemSelector = mkSelector "synchronizeTitleAndSelectedItem"

-- | @Selector@ for @itemTitleAtIndex:@
itemTitleAtIndexSelector :: Selector '[CLong] (Id NSString)
itemTitleAtIndexSelector = mkSelector "itemTitleAtIndex:"

-- | @Selector@ for @menu@
menuSelector :: Selector '[] (Id NSMenu)
menuSelector = mkSelector "menu"

-- | @Selector@ for @setMenu:@
setMenuSelector :: Selector '[Id NSMenu] ()
setMenuSelector = mkSelector "setMenu:"

-- | @Selector@ for @pullsDown@
pullsDownSelector :: Selector '[] Bool
pullsDownSelector = mkSelector "pullsDown"

-- | @Selector@ for @setPullsDown:@
setPullsDownSelector :: Selector '[Bool] ()
setPullsDownSelector = mkSelector "setPullsDown:"

-- | @Selector@ for @autoenablesItems@
autoenablesItemsSelector :: Selector '[] Bool
autoenablesItemsSelector = mkSelector "autoenablesItems"

-- | @Selector@ for @setAutoenablesItems:@
setAutoenablesItemsSelector :: Selector '[Bool] ()
setAutoenablesItemsSelector = mkSelector "setAutoenablesItems:"

-- | @Selector@ for @preferredEdge@
preferredEdgeSelector :: Selector '[] NSRectEdge
preferredEdgeSelector = mkSelector "preferredEdge"

-- | @Selector@ for @setPreferredEdge:@
setPreferredEdgeSelector :: Selector '[NSRectEdge] ()
setPreferredEdgeSelector = mkSelector "setPreferredEdge:"

-- | @Selector@ for @itemArray@
itemArraySelector :: Selector '[] (Id NSArray)
itemArraySelector = mkSelector "itemArray"

-- | @Selector@ for @numberOfItems@
numberOfItemsSelector :: Selector '[] CLong
numberOfItemsSelector = mkSelector "numberOfItems"

-- | @Selector@ for @lastItem@
lastItemSelector :: Selector '[] (Id NSMenuItem)
lastItemSelector = mkSelector "lastItem"

-- | @Selector@ for @selectedItem@
selectedItemSelector :: Selector '[] (Id NSMenuItem)
selectedItemSelector = mkSelector "selectedItem"

-- | @Selector@ for @indexOfSelectedItem@
indexOfSelectedItemSelector :: Selector '[] CLong
indexOfSelectedItemSelector = mkSelector "indexOfSelectedItem"

-- | @Selector@ for @selectedTag@
selectedTagSelector :: Selector '[] CLong
selectedTagSelector = mkSelector "selectedTag"

-- | @Selector@ for @itemTitles@
itemTitlesSelector :: Selector '[] (Id NSArray)
itemTitlesSelector = mkSelector "itemTitles"

-- | @Selector@ for @titleOfSelectedItem@
titleOfSelectedItemSelector :: Selector '[] (Id NSString)
titleOfSelectedItemSelector = mkSelector "titleOfSelectedItem"

