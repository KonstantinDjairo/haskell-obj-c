{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @NSToolbar@.
module ObjC.AppKit.NSToolbar
  ( NSToolbar
  , IsNSToolbar(..)
  , initWithIdentifier
  , init_
  , insertItemWithItemIdentifier_atIndex
  , removeItemAtIndex
  , runCustomizationPalette
  , setConfigurationFromDictionary
  , validateVisibleItems
  , delegate
  , setDelegate
  , visible
  , setVisible
  , customizationPaletteIsRunning
  , displayMode
  , setDisplayMode
  , selectedItemIdentifier
  , setSelectedItemIdentifier
  , sizeMode
  , setSizeMode
  , showsBaselineSeparator
  , setShowsBaselineSeparator
  , allowsUserCustomization
  , setAllowsUserCustomization
  , identifier
  , items
  , visibleItems
  , centeredItemIdentifiers
  , setCenteredItemIdentifiers
  , centeredItemIdentifier
  , setCenteredItemIdentifier
  , autosavesConfiguration
  , setAutosavesConfiguration
  , configurationDictionary
  , allowsExtensionItems
  , setAllowsExtensionItems
  , fullScreenAccessoryView
  , setFullScreenAccessoryView
  , fullScreenAccessoryViewMinHeight
  , setFullScreenAccessoryViewMinHeight
  , fullScreenAccessoryViewMaxHeight
  , setFullScreenAccessoryViewMaxHeight
  , allowsExtensionItemsSelector
  , allowsUserCustomizationSelector
  , autosavesConfigurationSelector
  , centeredItemIdentifierSelector
  , centeredItemIdentifiersSelector
  , configurationDictionarySelector
  , customizationPaletteIsRunningSelector
  , delegateSelector
  , displayModeSelector
  , fullScreenAccessoryViewMaxHeightSelector
  , fullScreenAccessoryViewMinHeightSelector
  , fullScreenAccessoryViewSelector
  , identifierSelector
  , initSelector
  , initWithIdentifierSelector
  , insertItemWithItemIdentifier_atIndexSelector
  , itemsSelector
  , removeItemAtIndexSelector
  , runCustomizationPaletteSelector
  , selectedItemIdentifierSelector
  , setAllowsExtensionItemsSelector
  , setAllowsUserCustomizationSelector
  , setAutosavesConfigurationSelector
  , setCenteredItemIdentifierSelector
  , setCenteredItemIdentifiersSelector
  , setConfigurationFromDictionarySelector
  , setDelegateSelector
  , setDisplayModeSelector
  , setFullScreenAccessoryViewMaxHeightSelector
  , setFullScreenAccessoryViewMinHeightSelector
  , setFullScreenAccessoryViewSelector
  , setSelectedItemIdentifierSelector
  , setShowsBaselineSeparatorSelector
  , setSizeModeSelector
  , setVisibleSelector
  , showsBaselineSeparatorSelector
  , sizeModeSelector
  , validateVisibleItemsSelector
  , visibleItemsSelector
  , visibleSelector

  -- * Enum types
  , NSToolbarDisplayMode(NSToolbarDisplayMode)
  , pattern NSToolbarDisplayModeDefault
  , pattern NSToolbarDisplayModeIconAndLabel
  , pattern NSToolbarDisplayModeIconOnly
  , pattern NSToolbarDisplayModeLabelOnly
  , NSToolbarSizeMode(NSToolbarSizeMode)
  , pattern NSToolbarSizeModeDefault
  , pattern NSToolbarSizeModeRegular
  , pattern NSToolbarSizeModeSmall

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

-- | @- initWithIdentifier:@
initWithIdentifier :: (IsNSToolbar nsToolbar, IsNSString identifier) => nsToolbar -> identifier -> IO (Id NSToolbar)
initWithIdentifier nsToolbar identifier =
  sendOwnedMessage nsToolbar initWithIdentifierSelector (toNSString identifier)

-- | @- init@
init_ :: IsNSToolbar nsToolbar => nsToolbar -> IO (Id NSToolbar)
init_ nsToolbar =
  sendOwnedMessage nsToolbar initSelector

-- | @- insertItemWithItemIdentifier:atIndex:@
insertItemWithItemIdentifier_atIndex :: (IsNSToolbar nsToolbar, IsNSString itemIdentifier) => nsToolbar -> itemIdentifier -> CLong -> IO ()
insertItemWithItemIdentifier_atIndex nsToolbar itemIdentifier index =
  sendMessage nsToolbar insertItemWithItemIdentifier_atIndexSelector (toNSString itemIdentifier) index

-- | @- removeItemAtIndex:@
removeItemAtIndex :: IsNSToolbar nsToolbar => nsToolbar -> CLong -> IO ()
removeItemAtIndex nsToolbar index =
  sendMessage nsToolbar removeItemAtIndexSelector index

-- | @- runCustomizationPalette:@
runCustomizationPalette :: IsNSToolbar nsToolbar => nsToolbar -> RawId -> IO ()
runCustomizationPalette nsToolbar sender =
  sendMessage nsToolbar runCustomizationPaletteSelector sender

-- | @- setConfigurationFromDictionary:@
setConfigurationFromDictionary :: (IsNSToolbar nsToolbar, IsNSDictionary configDict) => nsToolbar -> configDict -> IO ()
setConfigurationFromDictionary nsToolbar configDict =
  sendMessage nsToolbar setConfigurationFromDictionarySelector (toNSDictionary configDict)

-- | @- validateVisibleItems@
validateVisibleItems :: IsNSToolbar nsToolbar => nsToolbar -> IO ()
validateVisibleItems nsToolbar =
  sendMessage nsToolbar validateVisibleItemsSelector

-- | @- delegate@
delegate :: IsNSToolbar nsToolbar => nsToolbar -> IO RawId
delegate nsToolbar =
  sendMessage nsToolbar delegateSelector

-- | @- setDelegate:@
setDelegate :: IsNSToolbar nsToolbar => nsToolbar -> RawId -> IO ()
setDelegate nsToolbar value =
  sendMessage nsToolbar setDelegateSelector value

-- | @- visible@
visible :: IsNSToolbar nsToolbar => nsToolbar -> IO Bool
visible nsToolbar =
  sendMessage nsToolbar visibleSelector

-- | @- setVisible:@
setVisible :: IsNSToolbar nsToolbar => nsToolbar -> Bool -> IO ()
setVisible nsToolbar value =
  sendMessage nsToolbar setVisibleSelector value

-- | @- customizationPaletteIsRunning@
customizationPaletteIsRunning :: IsNSToolbar nsToolbar => nsToolbar -> IO Bool
customizationPaletteIsRunning nsToolbar =
  sendMessage nsToolbar customizationPaletteIsRunningSelector

-- | @- displayMode@
displayMode :: IsNSToolbar nsToolbar => nsToolbar -> IO NSToolbarDisplayMode
displayMode nsToolbar =
  sendMessage nsToolbar displayModeSelector

-- | @- setDisplayMode:@
setDisplayMode :: IsNSToolbar nsToolbar => nsToolbar -> NSToolbarDisplayMode -> IO ()
setDisplayMode nsToolbar value =
  sendMessage nsToolbar setDisplayModeSelector value

-- | @- selectedItemIdentifier@
selectedItemIdentifier :: IsNSToolbar nsToolbar => nsToolbar -> IO (Id NSString)
selectedItemIdentifier nsToolbar =
  sendMessage nsToolbar selectedItemIdentifierSelector

-- | @- setSelectedItemIdentifier:@
setSelectedItemIdentifier :: (IsNSToolbar nsToolbar, IsNSString value) => nsToolbar -> value -> IO ()
setSelectedItemIdentifier nsToolbar value =
  sendMessage nsToolbar setSelectedItemIdentifierSelector (toNSString value)

-- | @- sizeMode@
sizeMode :: IsNSToolbar nsToolbar => nsToolbar -> IO NSToolbarSizeMode
sizeMode nsToolbar =
  sendMessage nsToolbar sizeModeSelector

-- | @- setSizeMode:@
setSizeMode :: IsNSToolbar nsToolbar => nsToolbar -> NSToolbarSizeMode -> IO ()
setSizeMode nsToolbar value =
  sendMessage nsToolbar setSizeModeSelector value

-- | @- showsBaselineSeparator@
showsBaselineSeparator :: IsNSToolbar nsToolbar => nsToolbar -> IO Bool
showsBaselineSeparator nsToolbar =
  sendMessage nsToolbar showsBaselineSeparatorSelector

-- | @- setShowsBaselineSeparator:@
setShowsBaselineSeparator :: IsNSToolbar nsToolbar => nsToolbar -> Bool -> IO ()
setShowsBaselineSeparator nsToolbar value =
  sendMessage nsToolbar setShowsBaselineSeparatorSelector value

-- | @- allowsUserCustomization@
allowsUserCustomization :: IsNSToolbar nsToolbar => nsToolbar -> IO Bool
allowsUserCustomization nsToolbar =
  sendMessage nsToolbar allowsUserCustomizationSelector

-- | @- setAllowsUserCustomization:@
setAllowsUserCustomization :: IsNSToolbar nsToolbar => nsToolbar -> Bool -> IO ()
setAllowsUserCustomization nsToolbar value =
  sendMessage nsToolbar setAllowsUserCustomizationSelector value

-- | @- identifier@
identifier :: IsNSToolbar nsToolbar => nsToolbar -> IO (Id NSString)
identifier nsToolbar =
  sendMessage nsToolbar identifierSelector

-- | @- items@
items :: IsNSToolbar nsToolbar => nsToolbar -> IO (Id NSArray)
items nsToolbar =
  sendMessage nsToolbar itemsSelector

-- | @- visibleItems@
visibleItems :: IsNSToolbar nsToolbar => nsToolbar -> IO (Id NSArray)
visibleItems nsToolbar =
  sendMessage nsToolbar visibleItemsSelector

-- | Items with centered identifiers will be centered together in the Toolbar relative to the window assuming space allows. The order of items is initially defined by the default set of identifiers, but may be customized by the user. Centered items may not be moved outside of the center set of items by the user.
--
-- This property is archived.
--
-- ObjC selector: @- centeredItemIdentifiers@
centeredItemIdentifiers :: IsNSToolbar nsToolbar => nsToolbar -> IO (Id NSSet)
centeredItemIdentifiers nsToolbar =
  sendMessage nsToolbar centeredItemIdentifiersSelector

-- | Items with centered identifiers will be centered together in the Toolbar relative to the window assuming space allows. The order of items is initially defined by the default set of identifiers, but may be customized by the user. Centered items may not be moved outside of the center set of items by the user.
--
-- This property is archived.
--
-- ObjC selector: @- setCenteredItemIdentifiers:@
setCenteredItemIdentifiers :: (IsNSToolbar nsToolbar, IsNSSet value) => nsToolbar -> value -> IO ()
setCenteredItemIdentifiers nsToolbar value =
  sendMessage nsToolbar setCenteredItemIdentifiersSelector (toNSSet value)

-- | @- centeredItemIdentifier@
centeredItemIdentifier :: IsNSToolbar nsToolbar => nsToolbar -> IO (Id NSString)
centeredItemIdentifier nsToolbar =
  sendMessage nsToolbar centeredItemIdentifierSelector

-- | @- setCenteredItemIdentifier:@
setCenteredItemIdentifier :: (IsNSToolbar nsToolbar, IsNSString value) => nsToolbar -> value -> IO ()
setCenteredItemIdentifier nsToolbar value =
  sendMessage nsToolbar setCenteredItemIdentifierSelector (toNSString value)

-- | @- autosavesConfiguration@
autosavesConfiguration :: IsNSToolbar nsToolbar => nsToolbar -> IO Bool
autosavesConfiguration nsToolbar =
  sendMessage nsToolbar autosavesConfigurationSelector

-- | @- setAutosavesConfiguration:@
setAutosavesConfiguration :: IsNSToolbar nsToolbar => nsToolbar -> Bool -> IO ()
setAutosavesConfiguration nsToolbar value =
  sendMessage nsToolbar setAutosavesConfigurationSelector value

-- | @- configurationDictionary@
configurationDictionary :: IsNSToolbar nsToolbar => nsToolbar -> IO (Id NSDictionary)
configurationDictionary nsToolbar =
  sendMessage nsToolbar configurationDictionarySelector

-- | @- allowsExtensionItems@
allowsExtensionItems :: IsNSToolbar nsToolbar => nsToolbar -> IO Bool
allowsExtensionItems nsToolbar =
  sendMessage nsToolbar allowsExtensionItemsSelector

-- | @- setAllowsExtensionItems:@
setAllowsExtensionItems :: IsNSToolbar nsToolbar => nsToolbar -> Bool -> IO ()
setAllowsExtensionItems nsToolbar value =
  sendMessage nsToolbar setAllowsExtensionItemsSelector value

-- | @- fullScreenAccessoryView@
fullScreenAccessoryView :: IsNSToolbar nsToolbar => nsToolbar -> IO RawId
fullScreenAccessoryView nsToolbar =
  sendMessage nsToolbar fullScreenAccessoryViewSelector

-- | @- setFullScreenAccessoryView:@
setFullScreenAccessoryView :: IsNSToolbar nsToolbar => nsToolbar -> RawId -> IO ()
setFullScreenAccessoryView nsToolbar value =
  sendMessage nsToolbar setFullScreenAccessoryViewSelector value

-- | @- fullScreenAccessoryViewMinHeight@
fullScreenAccessoryViewMinHeight :: IsNSToolbar nsToolbar => nsToolbar -> IO CDouble
fullScreenAccessoryViewMinHeight nsToolbar =
  sendMessage nsToolbar fullScreenAccessoryViewMinHeightSelector

-- | @- setFullScreenAccessoryViewMinHeight:@
setFullScreenAccessoryViewMinHeight :: IsNSToolbar nsToolbar => nsToolbar -> CDouble -> IO ()
setFullScreenAccessoryViewMinHeight nsToolbar value =
  sendMessage nsToolbar setFullScreenAccessoryViewMinHeightSelector value

-- | @- fullScreenAccessoryViewMaxHeight@
fullScreenAccessoryViewMaxHeight :: IsNSToolbar nsToolbar => nsToolbar -> IO CDouble
fullScreenAccessoryViewMaxHeight nsToolbar =
  sendMessage nsToolbar fullScreenAccessoryViewMaxHeightSelector

-- | @- setFullScreenAccessoryViewMaxHeight:@
setFullScreenAccessoryViewMaxHeight :: IsNSToolbar nsToolbar => nsToolbar -> CDouble -> IO ()
setFullScreenAccessoryViewMaxHeight nsToolbar value =
  sendMessage nsToolbar setFullScreenAccessoryViewMaxHeightSelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithIdentifier:@
initWithIdentifierSelector :: Selector '[Id NSString] (Id NSToolbar)
initWithIdentifierSelector = mkSelector "initWithIdentifier:"

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id NSToolbar)
initSelector = mkSelector "init"

-- | @Selector@ for @insertItemWithItemIdentifier:atIndex:@
insertItemWithItemIdentifier_atIndexSelector :: Selector '[Id NSString, CLong] ()
insertItemWithItemIdentifier_atIndexSelector = mkSelector "insertItemWithItemIdentifier:atIndex:"

-- | @Selector@ for @removeItemAtIndex:@
removeItemAtIndexSelector :: Selector '[CLong] ()
removeItemAtIndexSelector = mkSelector "removeItemAtIndex:"

-- | @Selector@ for @runCustomizationPalette:@
runCustomizationPaletteSelector :: Selector '[RawId] ()
runCustomizationPaletteSelector = mkSelector "runCustomizationPalette:"

-- | @Selector@ for @setConfigurationFromDictionary:@
setConfigurationFromDictionarySelector :: Selector '[Id NSDictionary] ()
setConfigurationFromDictionarySelector = mkSelector "setConfigurationFromDictionary:"

-- | @Selector@ for @validateVisibleItems@
validateVisibleItemsSelector :: Selector '[] ()
validateVisibleItemsSelector = mkSelector "validateVisibleItems"

-- | @Selector@ for @delegate@
delegateSelector :: Selector '[] RawId
delegateSelector = mkSelector "delegate"

-- | @Selector@ for @setDelegate:@
setDelegateSelector :: Selector '[RawId] ()
setDelegateSelector = mkSelector "setDelegate:"

-- | @Selector@ for @visible@
visibleSelector :: Selector '[] Bool
visibleSelector = mkSelector "visible"

-- | @Selector@ for @setVisible:@
setVisibleSelector :: Selector '[Bool] ()
setVisibleSelector = mkSelector "setVisible:"

-- | @Selector@ for @customizationPaletteIsRunning@
customizationPaletteIsRunningSelector :: Selector '[] Bool
customizationPaletteIsRunningSelector = mkSelector "customizationPaletteIsRunning"

-- | @Selector@ for @displayMode@
displayModeSelector :: Selector '[] NSToolbarDisplayMode
displayModeSelector = mkSelector "displayMode"

-- | @Selector@ for @setDisplayMode:@
setDisplayModeSelector :: Selector '[NSToolbarDisplayMode] ()
setDisplayModeSelector = mkSelector "setDisplayMode:"

-- | @Selector@ for @selectedItemIdentifier@
selectedItemIdentifierSelector :: Selector '[] (Id NSString)
selectedItemIdentifierSelector = mkSelector "selectedItemIdentifier"

-- | @Selector@ for @setSelectedItemIdentifier:@
setSelectedItemIdentifierSelector :: Selector '[Id NSString] ()
setSelectedItemIdentifierSelector = mkSelector "setSelectedItemIdentifier:"

-- | @Selector@ for @sizeMode@
sizeModeSelector :: Selector '[] NSToolbarSizeMode
sizeModeSelector = mkSelector "sizeMode"

-- | @Selector@ for @setSizeMode:@
setSizeModeSelector :: Selector '[NSToolbarSizeMode] ()
setSizeModeSelector = mkSelector "setSizeMode:"

-- | @Selector@ for @showsBaselineSeparator@
showsBaselineSeparatorSelector :: Selector '[] Bool
showsBaselineSeparatorSelector = mkSelector "showsBaselineSeparator"

-- | @Selector@ for @setShowsBaselineSeparator:@
setShowsBaselineSeparatorSelector :: Selector '[Bool] ()
setShowsBaselineSeparatorSelector = mkSelector "setShowsBaselineSeparator:"

-- | @Selector@ for @allowsUserCustomization@
allowsUserCustomizationSelector :: Selector '[] Bool
allowsUserCustomizationSelector = mkSelector "allowsUserCustomization"

-- | @Selector@ for @setAllowsUserCustomization:@
setAllowsUserCustomizationSelector :: Selector '[Bool] ()
setAllowsUserCustomizationSelector = mkSelector "setAllowsUserCustomization:"

-- | @Selector@ for @identifier@
identifierSelector :: Selector '[] (Id NSString)
identifierSelector = mkSelector "identifier"

-- | @Selector@ for @items@
itemsSelector :: Selector '[] (Id NSArray)
itemsSelector = mkSelector "items"

-- | @Selector@ for @visibleItems@
visibleItemsSelector :: Selector '[] (Id NSArray)
visibleItemsSelector = mkSelector "visibleItems"

-- | @Selector@ for @centeredItemIdentifiers@
centeredItemIdentifiersSelector :: Selector '[] (Id NSSet)
centeredItemIdentifiersSelector = mkSelector "centeredItemIdentifiers"

-- | @Selector@ for @setCenteredItemIdentifiers:@
setCenteredItemIdentifiersSelector :: Selector '[Id NSSet] ()
setCenteredItemIdentifiersSelector = mkSelector "setCenteredItemIdentifiers:"

-- | @Selector@ for @centeredItemIdentifier@
centeredItemIdentifierSelector :: Selector '[] (Id NSString)
centeredItemIdentifierSelector = mkSelector "centeredItemIdentifier"

-- | @Selector@ for @setCenteredItemIdentifier:@
setCenteredItemIdentifierSelector :: Selector '[Id NSString] ()
setCenteredItemIdentifierSelector = mkSelector "setCenteredItemIdentifier:"

-- | @Selector@ for @autosavesConfiguration@
autosavesConfigurationSelector :: Selector '[] Bool
autosavesConfigurationSelector = mkSelector "autosavesConfiguration"

-- | @Selector@ for @setAutosavesConfiguration:@
setAutosavesConfigurationSelector :: Selector '[Bool] ()
setAutosavesConfigurationSelector = mkSelector "setAutosavesConfiguration:"

-- | @Selector@ for @configurationDictionary@
configurationDictionarySelector :: Selector '[] (Id NSDictionary)
configurationDictionarySelector = mkSelector "configurationDictionary"

-- | @Selector@ for @allowsExtensionItems@
allowsExtensionItemsSelector :: Selector '[] Bool
allowsExtensionItemsSelector = mkSelector "allowsExtensionItems"

-- | @Selector@ for @setAllowsExtensionItems:@
setAllowsExtensionItemsSelector :: Selector '[Bool] ()
setAllowsExtensionItemsSelector = mkSelector "setAllowsExtensionItems:"

-- | @Selector@ for @fullScreenAccessoryView@
fullScreenAccessoryViewSelector :: Selector '[] RawId
fullScreenAccessoryViewSelector = mkSelector "fullScreenAccessoryView"

-- | @Selector@ for @setFullScreenAccessoryView:@
setFullScreenAccessoryViewSelector :: Selector '[RawId] ()
setFullScreenAccessoryViewSelector = mkSelector "setFullScreenAccessoryView:"

-- | @Selector@ for @fullScreenAccessoryViewMinHeight@
fullScreenAccessoryViewMinHeightSelector :: Selector '[] CDouble
fullScreenAccessoryViewMinHeightSelector = mkSelector "fullScreenAccessoryViewMinHeight"

-- | @Selector@ for @setFullScreenAccessoryViewMinHeight:@
setFullScreenAccessoryViewMinHeightSelector :: Selector '[CDouble] ()
setFullScreenAccessoryViewMinHeightSelector = mkSelector "setFullScreenAccessoryViewMinHeight:"

-- | @Selector@ for @fullScreenAccessoryViewMaxHeight@
fullScreenAccessoryViewMaxHeightSelector :: Selector '[] CDouble
fullScreenAccessoryViewMaxHeightSelector = mkSelector "fullScreenAccessoryViewMaxHeight"

-- | @Selector@ for @setFullScreenAccessoryViewMaxHeight:@
setFullScreenAccessoryViewMaxHeightSelector :: Selector '[CDouble] ()
setFullScreenAccessoryViewMaxHeightSelector = mkSelector "setFullScreenAccessoryViewMaxHeight:"

