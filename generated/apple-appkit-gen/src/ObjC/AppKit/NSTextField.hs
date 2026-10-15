{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @NSTextField@.
module ObjC.AppKit.NSTextField
  ( NSTextField
  , IsNSTextField(..)
  , selectText
  , textShouldBeginEditing
  , textShouldEndEditing
  , textDidBeginEditing
  , textDidEndEditing
  , textDidChange
  , setTitleWithMnemonic
  , labelWithString
  , wrappingLabelWithString
  , labelWithAttributedString
  , textFieldWithString
  , placeholderString
  , setPlaceholderString
  , placeholderAttributedString
  , setPlaceholderAttributedString
  , backgroundColor
  , setBackgroundColor
  , drawsBackground
  , setDrawsBackground
  , textColor
  , setTextColor
  , bordered
  , setBordered
  , bezeled
  , setBezeled
  , editable
  , setEditable
  , selectable
  , setSelectable
  , delegate
  , setDelegate
  , acceptsFirstResponder
  , bezelStyle
  , setBezelStyle
  , preferredMaxLayoutWidth
  , setPreferredMaxLayoutWidth
  , maximumNumberOfLines
  , setMaximumNumberOfLines
  , allowsDefaultTighteningForTruncation
  , setAllowsDefaultTighteningForTruncation
  , lineBreakStrategy
  , setLineBreakStrategy
  , allowsEditingTextAttributes
  , setAllowsEditingTextAttributes
  , importsGraphics
  , setImportsGraphics
  , automaticTextCompletionEnabled
  , setAutomaticTextCompletionEnabled
  , allowsCharacterPickerTouchBarItem
  , setAllowsCharacterPickerTouchBarItem
  , acceptsFirstResponderSelector
  , allowsCharacterPickerTouchBarItemSelector
  , allowsDefaultTighteningForTruncationSelector
  , allowsEditingTextAttributesSelector
  , automaticTextCompletionEnabledSelector
  , backgroundColorSelector
  , bezelStyleSelector
  , bezeledSelector
  , borderedSelector
  , delegateSelector
  , drawsBackgroundSelector
  , editableSelector
  , importsGraphicsSelector
  , labelWithAttributedStringSelector
  , labelWithStringSelector
  , lineBreakStrategySelector
  , maximumNumberOfLinesSelector
  , placeholderAttributedStringSelector
  , placeholderStringSelector
  , preferredMaxLayoutWidthSelector
  , selectTextSelector
  , selectableSelector
  , setAllowsCharacterPickerTouchBarItemSelector
  , setAllowsDefaultTighteningForTruncationSelector
  , setAllowsEditingTextAttributesSelector
  , setAutomaticTextCompletionEnabledSelector
  , setBackgroundColorSelector
  , setBezelStyleSelector
  , setBezeledSelector
  , setBorderedSelector
  , setDelegateSelector
  , setDrawsBackgroundSelector
  , setEditableSelector
  , setImportsGraphicsSelector
  , setLineBreakStrategySelector
  , setMaximumNumberOfLinesSelector
  , setPlaceholderAttributedStringSelector
  , setPlaceholderStringSelector
  , setPreferredMaxLayoutWidthSelector
  , setSelectableSelector
  , setTextColorSelector
  , setTitleWithMnemonicSelector
  , textColorSelector
  , textDidBeginEditingSelector
  , textDidChangeSelector
  , textDidEndEditingSelector
  , textFieldWithStringSelector
  , textShouldBeginEditingSelector
  , textShouldEndEditingSelector
  , wrappingLabelWithStringSelector

  -- * Enum types
  , NSLineBreakStrategy(NSLineBreakStrategy)
  , pattern NSLineBreakStrategyNone
  , pattern NSLineBreakStrategyPushOut
  , pattern NSLineBreakStrategyHangulWordPriority
  , pattern NSLineBreakStrategyStandard
  , NSTextFieldBezelStyle(NSTextFieldBezelStyle)
  , pattern NSTextFieldSquareBezel
  , pattern NSTextFieldRoundedBezel

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

-- | @- selectText:@
selectText :: IsNSTextField nsTextField => nsTextField -> RawId -> IO ()
selectText nsTextField sender =
  sendMessage nsTextField selectTextSelector sender

-- | @- textShouldBeginEditing:@
textShouldBeginEditing :: (IsNSTextField nsTextField, IsNSText textObject) => nsTextField -> textObject -> IO Bool
textShouldBeginEditing nsTextField textObject =
  sendMessage nsTextField textShouldBeginEditingSelector (toNSText textObject)

-- | @- textShouldEndEditing:@
textShouldEndEditing :: (IsNSTextField nsTextField, IsNSText textObject) => nsTextField -> textObject -> IO Bool
textShouldEndEditing nsTextField textObject =
  sendMessage nsTextField textShouldEndEditingSelector (toNSText textObject)

-- | @- textDidBeginEditing:@
textDidBeginEditing :: (IsNSTextField nsTextField, IsNSNotification notification) => nsTextField -> notification -> IO ()
textDidBeginEditing nsTextField notification =
  sendMessage nsTextField textDidBeginEditingSelector (toNSNotification notification)

-- | @- textDidEndEditing:@
textDidEndEditing :: (IsNSTextField nsTextField, IsNSNotification notification) => nsTextField -> notification -> IO ()
textDidEndEditing nsTextField notification =
  sendMessage nsTextField textDidEndEditingSelector (toNSNotification notification)

-- | @- textDidChange:@
textDidChange :: (IsNSTextField nsTextField, IsNSNotification notification) => nsTextField -> notification -> IO ()
textDidChange nsTextField notification =
  sendMessage nsTextField textDidChangeSelector (toNSNotification notification)

-- | @- setTitleWithMnemonic:@
setTitleWithMnemonic :: (IsNSTextField nsTextField, IsNSString stringWithAmpersand) => nsTextField -> stringWithAmpersand -> IO ()
setTitleWithMnemonic nsTextField stringWithAmpersand =
  sendMessage nsTextField setTitleWithMnemonicSelector (toNSString stringWithAmpersand)

-- | Creates a non-wrapping, non-editable, non-selectable text field that displays text in the default system font.
--
-- @stringValue@ — The title text to display in the field.
--
-- Returns: An initialized text field object.
--
-- ObjC selector: @+ labelWithString:@
labelWithString :: IsNSString stringValue => stringValue -> IO (Id NSTextField)
labelWithString stringValue =
  do
    cls' <- getRequiredClass "NSTextField"
    sendClassMessage cls' labelWithStringSelector (toNSString stringValue)

-- | Creates a wrapping, non-editable, selectable text field that displays text in the default system font.
--
-- @stringValue@ — The title text to display in the field.
--
-- Returns: An initialized text field object.
--
-- ObjC selector: @+ wrappingLabelWithString:@
wrappingLabelWithString :: IsNSString stringValue => stringValue -> IO (Id NSTextField)
wrappingLabelWithString stringValue =
  do
    cls' <- getRequiredClass "NSTextField"
    sendClassMessage cls' wrappingLabelWithStringSelector (toNSString stringValue)

-- | Creates a non-editable, non-selectable text field that displays attributed text. The line break mode of this field is determined by the attributed string's NSParagraphStyle attribute.
--
-- @attributedStringValue@ — The attributed string to display in the field.
--
-- Returns: An initialized text field object.
--
-- ObjC selector: @+ labelWithAttributedString:@
labelWithAttributedString :: IsNSAttributedString attributedStringValue => attributedStringValue -> IO (Id NSTextField)
labelWithAttributedString attributedStringValue =
  do
    cls' <- getRequiredClass "NSTextField"
    sendClassMessage cls' labelWithAttributedStringSelector (toNSAttributedString attributedStringValue)

-- | Creates a non-wrapping editable text field.
--
-- @stringValue@ — The initial contents of the text field, or empty string for an initially empty text field.
--
-- Returns: An initialized text field object.
--
-- ObjC selector: @+ textFieldWithString:@
textFieldWithString :: IsNSString stringValue => stringValue -> IO (Id NSTextField)
textFieldWithString stringValue =
  do
    cls' <- getRequiredClass "NSTextField"
    sendClassMessage cls' textFieldWithStringSelector (toNSString stringValue)

-- | @- placeholderString@
placeholderString :: IsNSTextField nsTextField => nsTextField -> IO RawId
placeholderString nsTextField =
  sendMessage nsTextField placeholderStringSelector

-- | @- setPlaceholderString:@
setPlaceholderString :: IsNSTextField nsTextField => nsTextField -> RawId -> IO ()
setPlaceholderString nsTextField value =
  sendMessage nsTextField setPlaceholderStringSelector value

-- | @- placeholderAttributedString@
placeholderAttributedString :: IsNSTextField nsTextField => nsTextField -> IO RawId
placeholderAttributedString nsTextField =
  sendMessage nsTextField placeholderAttributedStringSelector

-- | @- setPlaceholderAttributedString:@
setPlaceholderAttributedString :: IsNSTextField nsTextField => nsTextField -> RawId -> IO ()
setPlaceholderAttributedString nsTextField value =
  sendMessage nsTextField setPlaceholderAttributedStringSelector value

-- | @- backgroundColor@
backgroundColor :: IsNSTextField nsTextField => nsTextField -> IO (Id NSColor)
backgroundColor nsTextField =
  sendMessage nsTextField backgroundColorSelector

-- | @- setBackgroundColor:@
setBackgroundColor :: (IsNSTextField nsTextField, IsNSColor value) => nsTextField -> value -> IO ()
setBackgroundColor nsTextField value =
  sendMessage nsTextField setBackgroundColorSelector (toNSColor value)

-- | @- drawsBackground@
drawsBackground :: IsNSTextField nsTextField => nsTextField -> IO Bool
drawsBackground nsTextField =
  sendMessage nsTextField drawsBackgroundSelector

-- | @- setDrawsBackground:@
setDrawsBackground :: IsNSTextField nsTextField => nsTextField -> Bool -> IO ()
setDrawsBackground nsTextField value =
  sendMessage nsTextField setDrawsBackgroundSelector value

-- | @- textColor@
textColor :: IsNSTextField nsTextField => nsTextField -> IO (Id NSColor)
textColor nsTextField =
  sendMessage nsTextField textColorSelector

-- | @- setTextColor:@
setTextColor :: (IsNSTextField nsTextField, IsNSColor value) => nsTextField -> value -> IO ()
setTextColor nsTextField value =
  sendMessage nsTextField setTextColorSelector (toNSColor value)

-- | @- bordered@
bordered :: IsNSTextField nsTextField => nsTextField -> IO Bool
bordered nsTextField =
  sendMessage nsTextField borderedSelector

-- | @- setBordered:@
setBordered :: IsNSTextField nsTextField => nsTextField -> Bool -> IO ()
setBordered nsTextField value =
  sendMessage nsTextField setBorderedSelector value

-- | @- bezeled@
bezeled :: IsNSTextField nsTextField => nsTextField -> IO Bool
bezeled nsTextField =
  sendMessage nsTextField bezeledSelector

-- | @- setBezeled:@
setBezeled :: IsNSTextField nsTextField => nsTextField -> Bool -> IO ()
setBezeled nsTextField value =
  sendMessage nsTextField setBezeledSelector value

-- | @- editable@
editable :: IsNSTextField nsTextField => nsTextField -> IO Bool
editable nsTextField =
  sendMessage nsTextField editableSelector

-- | @- setEditable:@
setEditable :: IsNSTextField nsTextField => nsTextField -> Bool -> IO ()
setEditable nsTextField value =
  sendMessage nsTextField setEditableSelector value

-- | @- selectable@
selectable :: IsNSTextField nsTextField => nsTextField -> IO Bool
selectable nsTextField =
  sendMessage nsTextField selectableSelector

-- | @- setSelectable:@
setSelectable :: IsNSTextField nsTextField => nsTextField -> Bool -> IO ()
setSelectable nsTextField value =
  sendMessage nsTextField setSelectableSelector value

-- | @- delegate@
delegate :: IsNSTextField nsTextField => nsTextField -> IO RawId
delegate nsTextField =
  sendMessage nsTextField delegateSelector

-- | @- setDelegate:@
setDelegate :: IsNSTextField nsTextField => nsTextField -> RawId -> IO ()
setDelegate nsTextField value =
  sendMessage nsTextField setDelegateSelector value

-- | @- acceptsFirstResponder@
acceptsFirstResponder :: IsNSTextField nsTextField => nsTextField -> IO Bool
acceptsFirstResponder nsTextField =
  sendMessage nsTextField acceptsFirstResponderSelector

-- | @- bezelStyle@
bezelStyle :: IsNSTextField nsTextField => nsTextField -> IO NSTextFieldBezelStyle
bezelStyle nsTextField =
  sendMessage nsTextField bezelStyleSelector

-- | @- setBezelStyle:@
setBezelStyle :: IsNSTextField nsTextField => nsTextField -> NSTextFieldBezelStyle -> IO ()
setBezelStyle nsTextField value =
  sendMessage nsTextField setBezelStyleSelector value

-- | @- preferredMaxLayoutWidth@
preferredMaxLayoutWidth :: IsNSTextField nsTextField => nsTextField -> IO CDouble
preferredMaxLayoutWidth nsTextField =
  sendMessage nsTextField preferredMaxLayoutWidthSelector

-- | @- setPreferredMaxLayoutWidth:@
setPreferredMaxLayoutWidth :: IsNSTextField nsTextField => nsTextField -> CDouble -> IO ()
setPreferredMaxLayoutWidth nsTextField value =
  sendMessage nsTextField setPreferredMaxLayoutWidthSelector value

-- | @- maximumNumberOfLines@
maximumNumberOfLines :: IsNSTextField nsTextField => nsTextField -> IO CLong
maximumNumberOfLines nsTextField =
  sendMessage nsTextField maximumNumberOfLinesSelector

-- | @- setMaximumNumberOfLines:@
setMaximumNumberOfLines :: IsNSTextField nsTextField => nsTextField -> CLong -> IO ()
setMaximumNumberOfLines nsTextField value =
  sendMessage nsTextField setMaximumNumberOfLinesSelector value

-- | @- allowsDefaultTighteningForTruncation@
allowsDefaultTighteningForTruncation :: IsNSTextField nsTextField => nsTextField -> IO Bool
allowsDefaultTighteningForTruncation nsTextField =
  sendMessage nsTextField allowsDefaultTighteningForTruncationSelector

-- | @- setAllowsDefaultTighteningForTruncation:@
setAllowsDefaultTighteningForTruncation :: IsNSTextField nsTextField => nsTextField -> Bool -> IO ()
setAllowsDefaultTighteningForTruncation nsTextField value =
  sendMessage nsTextField setAllowsDefaultTighteningForTruncationSelector value

-- | @- lineBreakStrategy@
lineBreakStrategy :: IsNSTextField nsTextField => nsTextField -> IO NSLineBreakStrategy
lineBreakStrategy nsTextField =
  sendMessage nsTextField lineBreakStrategySelector

-- | @- setLineBreakStrategy:@
setLineBreakStrategy :: IsNSTextField nsTextField => nsTextField -> NSLineBreakStrategy -> IO ()
setLineBreakStrategy nsTextField value =
  sendMessage nsTextField setLineBreakStrategySelector value

-- | @- allowsEditingTextAttributes@
allowsEditingTextAttributes :: IsNSTextField nsTextField => nsTextField -> IO Bool
allowsEditingTextAttributes nsTextField =
  sendMessage nsTextField allowsEditingTextAttributesSelector

-- | @- setAllowsEditingTextAttributes:@
setAllowsEditingTextAttributes :: IsNSTextField nsTextField => nsTextField -> Bool -> IO ()
setAllowsEditingTextAttributes nsTextField value =
  sendMessage nsTextField setAllowsEditingTextAttributesSelector value

-- | @- importsGraphics@
importsGraphics :: IsNSTextField nsTextField => nsTextField -> IO Bool
importsGraphics nsTextField =
  sendMessage nsTextField importsGraphicsSelector

-- | @- setImportsGraphics:@
setImportsGraphics :: IsNSTextField nsTextField => nsTextField -> Bool -> IO ()
setImportsGraphics nsTextField value =
  sendMessage nsTextField setImportsGraphicsSelector value

-- | @- automaticTextCompletionEnabled@
automaticTextCompletionEnabled :: IsNSTextField nsTextField => nsTextField -> IO Bool
automaticTextCompletionEnabled nsTextField =
  sendMessage nsTextField automaticTextCompletionEnabledSelector

-- | @- setAutomaticTextCompletionEnabled:@
setAutomaticTextCompletionEnabled :: IsNSTextField nsTextField => nsTextField -> Bool -> IO ()
setAutomaticTextCompletionEnabled nsTextField value =
  sendMessage nsTextField setAutomaticTextCompletionEnabledSelector value

-- | @- allowsCharacterPickerTouchBarItem@
allowsCharacterPickerTouchBarItem :: IsNSTextField nsTextField => nsTextField -> IO Bool
allowsCharacterPickerTouchBarItem nsTextField =
  sendMessage nsTextField allowsCharacterPickerTouchBarItemSelector

-- | @- setAllowsCharacterPickerTouchBarItem:@
setAllowsCharacterPickerTouchBarItem :: IsNSTextField nsTextField => nsTextField -> Bool -> IO ()
setAllowsCharacterPickerTouchBarItem nsTextField value =
  sendMessage nsTextField setAllowsCharacterPickerTouchBarItemSelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @selectText:@
selectTextSelector :: Selector '[RawId] ()
selectTextSelector = mkSelector "selectText:"

-- | @Selector@ for @textShouldBeginEditing:@
textShouldBeginEditingSelector :: Selector '[Id NSText] Bool
textShouldBeginEditingSelector = mkSelector "textShouldBeginEditing:"

-- | @Selector@ for @textShouldEndEditing:@
textShouldEndEditingSelector :: Selector '[Id NSText] Bool
textShouldEndEditingSelector = mkSelector "textShouldEndEditing:"

-- | @Selector@ for @textDidBeginEditing:@
textDidBeginEditingSelector :: Selector '[Id NSNotification] ()
textDidBeginEditingSelector = mkSelector "textDidBeginEditing:"

-- | @Selector@ for @textDidEndEditing:@
textDidEndEditingSelector :: Selector '[Id NSNotification] ()
textDidEndEditingSelector = mkSelector "textDidEndEditing:"

-- | @Selector@ for @textDidChange:@
textDidChangeSelector :: Selector '[Id NSNotification] ()
textDidChangeSelector = mkSelector "textDidChange:"

-- | @Selector@ for @setTitleWithMnemonic:@
setTitleWithMnemonicSelector :: Selector '[Id NSString] ()
setTitleWithMnemonicSelector = mkSelector "setTitleWithMnemonic:"

-- | @Selector@ for @labelWithString:@
labelWithStringSelector :: Selector '[Id NSString] (Id NSTextField)
labelWithStringSelector = mkSelector "labelWithString:"

-- | @Selector@ for @wrappingLabelWithString:@
wrappingLabelWithStringSelector :: Selector '[Id NSString] (Id NSTextField)
wrappingLabelWithStringSelector = mkSelector "wrappingLabelWithString:"

-- | @Selector@ for @labelWithAttributedString:@
labelWithAttributedStringSelector :: Selector '[Id NSAttributedString] (Id NSTextField)
labelWithAttributedStringSelector = mkSelector "labelWithAttributedString:"

-- | @Selector@ for @textFieldWithString:@
textFieldWithStringSelector :: Selector '[Id NSString] (Id NSTextField)
textFieldWithStringSelector = mkSelector "textFieldWithString:"

-- | @Selector@ for @placeholderString@
placeholderStringSelector :: Selector '[] RawId
placeholderStringSelector = mkSelector "placeholderString"

-- | @Selector@ for @setPlaceholderString:@
setPlaceholderStringSelector :: Selector '[RawId] ()
setPlaceholderStringSelector = mkSelector "setPlaceholderString:"

-- | @Selector@ for @placeholderAttributedString@
placeholderAttributedStringSelector :: Selector '[] RawId
placeholderAttributedStringSelector = mkSelector "placeholderAttributedString"

-- | @Selector@ for @setPlaceholderAttributedString:@
setPlaceholderAttributedStringSelector :: Selector '[RawId] ()
setPlaceholderAttributedStringSelector = mkSelector "setPlaceholderAttributedString:"

-- | @Selector@ for @backgroundColor@
backgroundColorSelector :: Selector '[] (Id NSColor)
backgroundColorSelector = mkSelector "backgroundColor"

-- | @Selector@ for @setBackgroundColor:@
setBackgroundColorSelector :: Selector '[Id NSColor] ()
setBackgroundColorSelector = mkSelector "setBackgroundColor:"

-- | @Selector@ for @drawsBackground@
drawsBackgroundSelector :: Selector '[] Bool
drawsBackgroundSelector = mkSelector "drawsBackground"

-- | @Selector@ for @setDrawsBackground:@
setDrawsBackgroundSelector :: Selector '[Bool] ()
setDrawsBackgroundSelector = mkSelector "setDrawsBackground:"

-- | @Selector@ for @textColor@
textColorSelector :: Selector '[] (Id NSColor)
textColorSelector = mkSelector "textColor"

-- | @Selector@ for @setTextColor:@
setTextColorSelector :: Selector '[Id NSColor] ()
setTextColorSelector = mkSelector "setTextColor:"

-- | @Selector@ for @bordered@
borderedSelector :: Selector '[] Bool
borderedSelector = mkSelector "bordered"

-- | @Selector@ for @setBordered:@
setBorderedSelector :: Selector '[Bool] ()
setBorderedSelector = mkSelector "setBordered:"

-- | @Selector@ for @bezeled@
bezeledSelector :: Selector '[] Bool
bezeledSelector = mkSelector "bezeled"

-- | @Selector@ for @setBezeled:@
setBezeledSelector :: Selector '[Bool] ()
setBezeledSelector = mkSelector "setBezeled:"

-- | @Selector@ for @editable@
editableSelector :: Selector '[] Bool
editableSelector = mkSelector "editable"

-- | @Selector@ for @setEditable:@
setEditableSelector :: Selector '[Bool] ()
setEditableSelector = mkSelector "setEditable:"

-- | @Selector@ for @selectable@
selectableSelector :: Selector '[] Bool
selectableSelector = mkSelector "selectable"

-- | @Selector@ for @setSelectable:@
setSelectableSelector :: Selector '[Bool] ()
setSelectableSelector = mkSelector "setSelectable:"

-- | @Selector@ for @delegate@
delegateSelector :: Selector '[] RawId
delegateSelector = mkSelector "delegate"

-- | @Selector@ for @setDelegate:@
setDelegateSelector :: Selector '[RawId] ()
setDelegateSelector = mkSelector "setDelegate:"

-- | @Selector@ for @acceptsFirstResponder@
acceptsFirstResponderSelector :: Selector '[] Bool
acceptsFirstResponderSelector = mkSelector "acceptsFirstResponder"

-- | @Selector@ for @bezelStyle@
bezelStyleSelector :: Selector '[] NSTextFieldBezelStyle
bezelStyleSelector = mkSelector "bezelStyle"

-- | @Selector@ for @setBezelStyle:@
setBezelStyleSelector :: Selector '[NSTextFieldBezelStyle] ()
setBezelStyleSelector = mkSelector "setBezelStyle:"

-- | @Selector@ for @preferredMaxLayoutWidth@
preferredMaxLayoutWidthSelector :: Selector '[] CDouble
preferredMaxLayoutWidthSelector = mkSelector "preferredMaxLayoutWidth"

-- | @Selector@ for @setPreferredMaxLayoutWidth:@
setPreferredMaxLayoutWidthSelector :: Selector '[CDouble] ()
setPreferredMaxLayoutWidthSelector = mkSelector "setPreferredMaxLayoutWidth:"

-- | @Selector@ for @maximumNumberOfLines@
maximumNumberOfLinesSelector :: Selector '[] CLong
maximumNumberOfLinesSelector = mkSelector "maximumNumberOfLines"

-- | @Selector@ for @setMaximumNumberOfLines:@
setMaximumNumberOfLinesSelector :: Selector '[CLong] ()
setMaximumNumberOfLinesSelector = mkSelector "setMaximumNumberOfLines:"

-- | @Selector@ for @allowsDefaultTighteningForTruncation@
allowsDefaultTighteningForTruncationSelector :: Selector '[] Bool
allowsDefaultTighteningForTruncationSelector = mkSelector "allowsDefaultTighteningForTruncation"

-- | @Selector@ for @setAllowsDefaultTighteningForTruncation:@
setAllowsDefaultTighteningForTruncationSelector :: Selector '[Bool] ()
setAllowsDefaultTighteningForTruncationSelector = mkSelector "setAllowsDefaultTighteningForTruncation:"

-- | @Selector@ for @lineBreakStrategy@
lineBreakStrategySelector :: Selector '[] NSLineBreakStrategy
lineBreakStrategySelector = mkSelector "lineBreakStrategy"

-- | @Selector@ for @setLineBreakStrategy:@
setLineBreakStrategySelector :: Selector '[NSLineBreakStrategy] ()
setLineBreakStrategySelector = mkSelector "setLineBreakStrategy:"

-- | @Selector@ for @allowsEditingTextAttributes@
allowsEditingTextAttributesSelector :: Selector '[] Bool
allowsEditingTextAttributesSelector = mkSelector "allowsEditingTextAttributes"

-- | @Selector@ for @setAllowsEditingTextAttributes:@
setAllowsEditingTextAttributesSelector :: Selector '[Bool] ()
setAllowsEditingTextAttributesSelector = mkSelector "setAllowsEditingTextAttributes:"

-- | @Selector@ for @importsGraphics@
importsGraphicsSelector :: Selector '[] Bool
importsGraphicsSelector = mkSelector "importsGraphics"

-- | @Selector@ for @setImportsGraphics:@
setImportsGraphicsSelector :: Selector '[Bool] ()
setImportsGraphicsSelector = mkSelector "setImportsGraphics:"

-- | @Selector@ for @automaticTextCompletionEnabled@
automaticTextCompletionEnabledSelector :: Selector '[] Bool
automaticTextCompletionEnabledSelector = mkSelector "automaticTextCompletionEnabled"

-- | @Selector@ for @setAutomaticTextCompletionEnabled:@
setAutomaticTextCompletionEnabledSelector :: Selector '[Bool] ()
setAutomaticTextCompletionEnabledSelector = mkSelector "setAutomaticTextCompletionEnabled:"

-- | @Selector@ for @allowsCharacterPickerTouchBarItem@
allowsCharacterPickerTouchBarItemSelector :: Selector '[] Bool
allowsCharacterPickerTouchBarItemSelector = mkSelector "allowsCharacterPickerTouchBarItem"

-- | @Selector@ for @setAllowsCharacterPickerTouchBarItem:@
setAllowsCharacterPickerTouchBarItemSelector :: Selector '[Bool] ()
setAllowsCharacterPickerTouchBarItemSelector = mkSelector "setAllowsCharacterPickerTouchBarItem:"

