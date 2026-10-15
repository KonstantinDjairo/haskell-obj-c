{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @NSString@.
module ObjC.AppKit.NSString
  ( NSString
  , IsNSString(..)
  , drawWithRect_options_attributes
  , boundingRectWithSize_options_attributes
  , drawWithRect_options_attributes_context
  , boundingRectWithSize_options_attributes_context
  , sizeWithAttributes
  , drawAtPoint_withAttributes
  , drawInRect_withAttributes
  , boundingRectWithSize_options_attributesSelector
  , boundingRectWithSize_options_attributes_contextSelector
  , drawAtPoint_withAttributesSelector
  , drawInRect_withAttributesSelector
  , drawWithRect_options_attributesSelector
  , drawWithRect_options_attributes_contextSelector
  , sizeWithAttributesSelector

  -- * Enum types
  , NSStringDrawingOptions(NSStringDrawingOptions)
  , pattern NSStringDrawingUsesLineFragmentOrigin
  , pattern NSStringDrawingUsesFontLeading
  , pattern NSStringDrawingUsesDeviceMetrics
  , pattern NSStringDrawingTruncatesLastVisibleLine
  , pattern NSStringDrawingDisableScreenFontSubstitution
  , pattern NSStringDrawingOneShot

  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AppKit.Internal.Classes
import ObjC.Foundation.Internal.Structs
import ObjC.AppKit.Internal.Enums
import ObjC.Foundation.Internal.Classes
import Data.String (IsString(..))
import ObjC.Runtime.NSString (pureNSString)

-- | @- drawWithRect:options:attributes:@
drawWithRect_options_attributes :: (IsNSString nsString, IsNSDictionary attributes) => nsString -> NSRect -> NSStringDrawingOptions -> attributes -> IO ()
drawWithRect_options_attributes nsString rect options attributes =
  sendMessage nsString drawWithRect_options_attributesSelector rect options (toNSDictionary attributes)

-- | @- boundingRectWithSize:options:attributes:@
boundingRectWithSize_options_attributes :: (IsNSString nsString, IsNSDictionary attributes) => nsString -> NSSize -> NSStringDrawingOptions -> attributes -> IO NSRect
boundingRectWithSize_options_attributes nsString size options attributes =
  sendMessage nsString boundingRectWithSize_options_attributesSelector size options (toNSDictionary attributes)

-- | @- drawWithRect:options:attributes:context:@
drawWithRect_options_attributes_context :: (IsNSString nsString, IsNSDictionary attributes, IsNSStringDrawingContext context) => nsString -> NSRect -> NSStringDrawingOptions -> attributes -> context -> IO ()
drawWithRect_options_attributes_context nsString rect options attributes context =
  sendMessage nsString drawWithRect_options_attributes_contextSelector rect options (toNSDictionary attributes) (toNSStringDrawingContext context)

-- | @- boundingRectWithSize:options:attributes:context:@
boundingRectWithSize_options_attributes_context :: (IsNSString nsString, IsNSDictionary attributes, IsNSStringDrawingContext context) => nsString -> NSSize -> NSStringDrawingOptions -> attributes -> context -> IO NSRect
boundingRectWithSize_options_attributes_context nsString size options attributes context =
  sendMessage nsString boundingRectWithSize_options_attributes_contextSelector size options (toNSDictionary attributes) (toNSStringDrawingContext context)

-- | @- sizeWithAttributes:@
sizeWithAttributes :: (IsNSString nsString, IsNSDictionary attrs) => nsString -> attrs -> IO NSSize
sizeWithAttributes nsString attrs =
  sendMessage nsString sizeWithAttributesSelector (toNSDictionary attrs)

-- | @- drawAtPoint:withAttributes:@
drawAtPoint_withAttributes :: (IsNSString nsString, IsNSDictionary attrs) => nsString -> NSPoint -> attrs -> IO ()
drawAtPoint_withAttributes nsString point attrs =
  sendMessage nsString drawAtPoint_withAttributesSelector point (toNSDictionary attrs)

-- | @- drawInRect:withAttributes:@
drawInRect_withAttributes :: (IsNSString nsString, IsNSDictionary attrs) => nsString -> NSRect -> attrs -> IO ()
drawInRect_withAttributes nsString rect attrs =
  sendMessage nsString drawInRect_withAttributesSelector rect (toNSDictionary attrs)


-- | Allows using @OverloadedStrings@ for @Id NSString@.
--
-- >>> :set -XOverloadedStrings
-- >>> let s = "hello" :: Id NSString
instance IsString (Id NSString) where
  fromString = pureNSString
-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @drawWithRect:options:attributes:@
drawWithRect_options_attributesSelector :: Selector '[NSRect, NSStringDrawingOptions, Id NSDictionary] ()
drawWithRect_options_attributesSelector = mkSelector "drawWithRect:options:attributes:"

-- | @Selector@ for @boundingRectWithSize:options:attributes:@
boundingRectWithSize_options_attributesSelector :: Selector '[NSSize, NSStringDrawingOptions, Id NSDictionary] NSRect
boundingRectWithSize_options_attributesSelector = mkSelector "boundingRectWithSize:options:attributes:"

-- | @Selector@ for @drawWithRect:options:attributes:context:@
drawWithRect_options_attributes_contextSelector :: Selector '[NSRect, NSStringDrawingOptions, Id NSDictionary, Id NSStringDrawingContext] ()
drawWithRect_options_attributes_contextSelector = mkSelector "drawWithRect:options:attributes:context:"

-- | @Selector@ for @boundingRectWithSize:options:attributes:context:@
boundingRectWithSize_options_attributes_contextSelector :: Selector '[NSSize, NSStringDrawingOptions, Id NSDictionary, Id NSStringDrawingContext] NSRect
boundingRectWithSize_options_attributes_contextSelector = mkSelector "boundingRectWithSize:options:attributes:context:"

-- | @Selector@ for @sizeWithAttributes:@
sizeWithAttributesSelector :: Selector '[Id NSDictionary] NSSize
sizeWithAttributesSelector = mkSelector "sizeWithAttributes:"

-- | @Selector@ for @drawAtPoint:withAttributes:@
drawAtPoint_withAttributesSelector :: Selector '[NSPoint, Id NSDictionary] ()
drawAtPoint_withAttributesSelector = mkSelector "drawAtPoint:withAttributes:"

-- | @Selector@ for @drawInRect:withAttributes:@
drawInRect_withAttributesSelector :: Selector '[NSRect, Id NSDictionary] ()
drawInRect_withAttributesSelector = mkSelector "drawInRect:withAttributes:"

