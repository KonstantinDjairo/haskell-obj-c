{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @NSAttributedString@.
module ObjC.AppKit.NSAttributedString
  ( NSAttributedString
  , IsNSAttributedString(..)
  , drawWithRect_options
  , boundingRectWithSize_options
  , drawWithRect_options_context
  , boundingRectWithSize_options_context
  , size
  , drawAtPoint
  , drawInRect
  , attributedStringWithAttachment
  , textFileTypes
  , textPasteboardTypes
  , textUnfilteredFileTypes
  , textUnfilteredPasteboardTypes
  , initWithURL_documentAttributes
  , initWithPath_documentAttributes
  , urlAtIndex_effectiveRange
  , fontAttributesInRange
  , rulerAttributesInRange
  , containsAttachmentsInRange
  , lineBreakBeforeIndex_withinRange
  , lineBreakByHyphenatingBeforeIndex_withinRange
  , doubleClickAtIndex
  , nextWordFromIndex_forward
  , rangeOfTextBlock_atIndex
  , rangeOfTextTable_atIndex
  , rangeOfTextList_atIndex
  , itemNumberInTextList_atIndex
  , initWithURL_options_documentAttributes_error
  , initWithData_options_documentAttributes_error
  , dataFromRange_documentAttributes_error
  , fileWrapperFromRange_documentAttributes_error
  , initWithRTF_documentAttributes
  , initWithRTFD_documentAttributes
  , initWithHTML_documentAttributes
  , initWithHTML_baseURL_documentAttributes
  , initWithDocFormat_documentAttributes
  , initWithHTML_options_documentAttributes
  , initWithRTFDFileWrapper_documentAttributes
  , rtfFromRange_documentAttributes
  , rtfdFromRange_documentAttributes
  , rtfdFileWrapperFromRange_documentAttributes
  , docFormatFromRange_documentAttributes
  , containsAttachments
  , attributedStringWithAttachmentSelector
  , boundingRectWithSize_optionsSelector
  , boundingRectWithSize_options_contextSelector
  , containsAttachmentsInRangeSelector
  , containsAttachmentsSelector
  , dataFromRange_documentAttributes_errorSelector
  , docFormatFromRange_documentAttributesSelector
  , doubleClickAtIndexSelector
  , drawAtPointSelector
  , drawInRectSelector
  , drawWithRect_optionsSelector
  , drawWithRect_options_contextSelector
  , fileWrapperFromRange_documentAttributes_errorSelector
  , fontAttributesInRangeSelector
  , initWithData_options_documentAttributes_errorSelector
  , initWithDocFormat_documentAttributesSelector
  , initWithHTML_baseURL_documentAttributesSelector
  , initWithHTML_documentAttributesSelector
  , initWithHTML_options_documentAttributesSelector
  , initWithPath_documentAttributesSelector
  , initWithRTFDFileWrapper_documentAttributesSelector
  , initWithRTFD_documentAttributesSelector
  , initWithRTF_documentAttributesSelector
  , initWithURL_documentAttributesSelector
  , initWithURL_options_documentAttributes_errorSelector
  , itemNumberInTextList_atIndexSelector
  , lineBreakBeforeIndex_withinRangeSelector
  , lineBreakByHyphenatingBeforeIndex_withinRangeSelector
  , nextWordFromIndex_forwardSelector
  , rangeOfTextBlock_atIndexSelector
  , rangeOfTextList_atIndexSelector
  , rangeOfTextTable_atIndexSelector
  , rtfFromRange_documentAttributesSelector
  , rtfdFileWrapperFromRange_documentAttributesSelector
  , rtfdFromRange_documentAttributesSelector
  , rulerAttributesInRangeSelector
  , sizeSelector
  , textFileTypesSelector
  , textPasteboardTypesSelector
  , textUnfilteredFileTypesSelector
  , textUnfilteredPasteboardTypesSelector
  , urlAtIndex_effectiveRangeSelector

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

-- | @- drawWithRect:options:@
drawWithRect_options :: IsNSAttributedString nsAttributedString => nsAttributedString -> NSRect -> NSStringDrawingOptions -> IO ()
drawWithRect_options nsAttributedString rect options =
  sendMessage nsAttributedString drawWithRect_optionsSelector rect options

-- | @- boundingRectWithSize:options:@
boundingRectWithSize_options :: IsNSAttributedString nsAttributedString => nsAttributedString -> NSSize -> NSStringDrawingOptions -> IO NSRect
boundingRectWithSize_options nsAttributedString size options =
  sendMessage nsAttributedString boundingRectWithSize_optionsSelector size options

-- | @- drawWithRect:options:context:@
drawWithRect_options_context :: (IsNSAttributedString nsAttributedString, IsNSStringDrawingContext context) => nsAttributedString -> NSRect -> NSStringDrawingOptions -> context -> IO ()
drawWithRect_options_context nsAttributedString rect options context =
  sendMessage nsAttributedString drawWithRect_options_contextSelector rect options (toNSStringDrawingContext context)

-- | @- boundingRectWithSize:options:context:@
boundingRectWithSize_options_context :: (IsNSAttributedString nsAttributedString, IsNSStringDrawingContext context) => nsAttributedString -> NSSize -> NSStringDrawingOptions -> context -> IO NSRect
boundingRectWithSize_options_context nsAttributedString size options context =
  sendMessage nsAttributedString boundingRectWithSize_options_contextSelector size options (toNSStringDrawingContext context)

-- | @- size@
size :: IsNSAttributedString nsAttributedString => nsAttributedString -> IO NSSize
size nsAttributedString =
  sendMessage nsAttributedString sizeSelector

-- | @- drawAtPoint:@
drawAtPoint :: IsNSAttributedString nsAttributedString => nsAttributedString -> NSPoint -> IO ()
drawAtPoint nsAttributedString point =
  sendMessage nsAttributedString drawAtPointSelector point

-- | @- drawInRect:@
drawInRect :: IsNSAttributedString nsAttributedString => nsAttributedString -> NSRect -> IO ()
drawInRect nsAttributedString rect =
  sendMessage nsAttributedString drawInRectSelector rect

-- | @+ attributedStringWithAttachment:@
attributedStringWithAttachment :: IsNSTextAttachment attachment => attachment -> IO (Id NSAttributedString)
attributedStringWithAttachment attachment =
  do
    cls' <- getRequiredClass "NSAttributedString"
    sendClassMessage cls' attributedStringWithAttachmentSelector (toNSTextAttachment attachment)

-- | @+ textFileTypes@
textFileTypes :: IO (Id NSArray)
textFileTypes  =
  do
    cls' <- getRequiredClass "NSAttributedString"
    sendClassMessage cls' textFileTypesSelector

-- | @+ textPasteboardTypes@
textPasteboardTypes :: IO (Id NSArray)
textPasteboardTypes  =
  do
    cls' <- getRequiredClass "NSAttributedString"
    sendClassMessage cls' textPasteboardTypesSelector

-- | @+ textUnfilteredFileTypes@
textUnfilteredFileTypes :: IO (Id NSArray)
textUnfilteredFileTypes  =
  do
    cls' <- getRequiredClass "NSAttributedString"
    sendClassMessage cls' textUnfilteredFileTypesSelector

-- | @+ textUnfilteredPasteboardTypes@
textUnfilteredPasteboardTypes :: IO (Id NSArray)
textUnfilteredPasteboardTypes  =
  do
    cls' <- getRequiredClass "NSAttributedString"
    sendClassMessage cls' textUnfilteredPasteboardTypesSelector

-- | @- initWithURL:documentAttributes:@
initWithURL_documentAttributes :: (IsNSAttributedString nsAttributedString, IsNSURL url, IsNSDictionary dict) => nsAttributedString -> url -> dict -> IO (Id NSAttributedString)
initWithURL_documentAttributes nsAttributedString url dict =
  sendOwnedMessage nsAttributedString initWithURL_documentAttributesSelector (toNSURL url) (toNSDictionary dict)

-- | @- initWithPath:documentAttributes:@
initWithPath_documentAttributes :: (IsNSAttributedString nsAttributedString, IsNSString path, IsNSDictionary dict) => nsAttributedString -> path -> dict -> IO (Id NSAttributedString)
initWithPath_documentAttributes nsAttributedString path dict =
  sendOwnedMessage nsAttributedString initWithPath_documentAttributesSelector (toNSString path) (toNSDictionary dict)

-- | @- URLAtIndex:effectiveRange:@
urlAtIndex_effectiveRange :: IsNSAttributedString nsAttributedString => nsAttributedString -> CULong -> Ptr NSRange -> IO (Id NSURL)
urlAtIndex_effectiveRange nsAttributedString location effectiveRange =
  sendMessage nsAttributedString urlAtIndex_effectiveRangeSelector location effectiveRange

-- | @- fontAttributesInRange:@
fontAttributesInRange :: IsNSAttributedString nsAttributedString => nsAttributedString -> NSRange -> IO (Id NSDictionary)
fontAttributesInRange nsAttributedString range =
  sendMessage nsAttributedString fontAttributesInRangeSelector range

-- | @- rulerAttributesInRange:@
rulerAttributesInRange :: IsNSAttributedString nsAttributedString => nsAttributedString -> NSRange -> IO (Id NSDictionary)
rulerAttributesInRange nsAttributedString range =
  sendMessage nsAttributedString rulerAttributesInRangeSelector range

-- | @- containsAttachmentsInRange:@
containsAttachmentsInRange :: IsNSAttributedString nsAttributedString => nsAttributedString -> NSRange -> IO Bool
containsAttachmentsInRange nsAttributedString range =
  sendMessage nsAttributedString containsAttachmentsInRangeSelector range

-- | @- lineBreakBeforeIndex:withinRange:@
lineBreakBeforeIndex_withinRange :: IsNSAttributedString nsAttributedString => nsAttributedString -> CULong -> NSRange -> IO CULong
lineBreakBeforeIndex_withinRange nsAttributedString location aRange =
  sendMessage nsAttributedString lineBreakBeforeIndex_withinRangeSelector location aRange

-- | @- lineBreakByHyphenatingBeforeIndex:withinRange:@
lineBreakByHyphenatingBeforeIndex_withinRange :: IsNSAttributedString nsAttributedString => nsAttributedString -> CULong -> NSRange -> IO CULong
lineBreakByHyphenatingBeforeIndex_withinRange nsAttributedString location aRange =
  sendMessage nsAttributedString lineBreakByHyphenatingBeforeIndex_withinRangeSelector location aRange

-- | @- doubleClickAtIndex:@
doubleClickAtIndex :: IsNSAttributedString nsAttributedString => nsAttributedString -> CULong -> IO NSRange
doubleClickAtIndex nsAttributedString location =
  sendMessage nsAttributedString doubleClickAtIndexSelector location

-- | @- nextWordFromIndex:forward:@
nextWordFromIndex_forward :: IsNSAttributedString nsAttributedString => nsAttributedString -> CULong -> Bool -> IO CULong
nextWordFromIndex_forward nsAttributedString location isForward =
  sendMessage nsAttributedString nextWordFromIndex_forwardSelector location isForward

-- | @- rangeOfTextBlock:atIndex:@
rangeOfTextBlock_atIndex :: (IsNSAttributedString nsAttributedString, IsNSTextBlock block) => nsAttributedString -> block -> CULong -> IO NSRange
rangeOfTextBlock_atIndex nsAttributedString block location =
  sendMessage nsAttributedString rangeOfTextBlock_atIndexSelector (toNSTextBlock block) location

-- | @- rangeOfTextTable:atIndex:@
rangeOfTextTable_atIndex :: (IsNSAttributedString nsAttributedString, IsNSTextTable table) => nsAttributedString -> table -> CULong -> IO NSRange
rangeOfTextTable_atIndex nsAttributedString table location =
  sendMessage nsAttributedString rangeOfTextTable_atIndexSelector (toNSTextTable table) location

-- | @- rangeOfTextList:atIndex:@
rangeOfTextList_atIndex :: (IsNSAttributedString nsAttributedString, IsNSTextList list) => nsAttributedString -> list -> CULong -> IO NSRange
rangeOfTextList_atIndex nsAttributedString list location =
  sendMessage nsAttributedString rangeOfTextList_atIndexSelector (toNSTextList list) location

-- | @- itemNumberInTextList:atIndex:@
itemNumberInTextList_atIndex :: (IsNSAttributedString nsAttributedString, IsNSTextList list) => nsAttributedString -> list -> CULong -> IO CLong
itemNumberInTextList_atIndex nsAttributedString list location =
  sendMessage nsAttributedString itemNumberInTextList_atIndexSelector (toNSTextList list) location

-- | @- initWithURL:options:documentAttributes:error:@
initWithURL_options_documentAttributes_error :: (IsNSAttributedString nsAttributedString, IsNSURL url, IsNSDictionary options, IsNSDictionary dict, IsNSError error_) => nsAttributedString -> url -> options -> dict -> error_ -> IO (Id NSAttributedString)
initWithURL_options_documentAttributes_error nsAttributedString url options dict error_ =
  sendOwnedMessage nsAttributedString initWithURL_options_documentAttributes_errorSelector (toNSURL url) (toNSDictionary options) (toNSDictionary dict) (toNSError error_)

-- | @- initWithData:options:documentAttributes:error:@
initWithData_options_documentAttributes_error :: (IsNSAttributedString nsAttributedString, IsNSData data_, IsNSDictionary options, IsNSDictionary dict, IsNSError error_) => nsAttributedString -> data_ -> options -> dict -> error_ -> IO (Id NSAttributedString)
initWithData_options_documentAttributes_error nsAttributedString data_ options dict error_ =
  sendOwnedMessage nsAttributedString initWithData_options_documentAttributes_errorSelector (toNSData data_) (toNSDictionary options) (toNSDictionary dict) (toNSError error_)

-- | @- dataFromRange:documentAttributes:error:@
dataFromRange_documentAttributes_error :: (IsNSAttributedString nsAttributedString, IsNSDictionary dict, IsNSError error_) => nsAttributedString -> NSRange -> dict -> error_ -> IO (Id NSData)
dataFromRange_documentAttributes_error nsAttributedString range dict error_ =
  sendMessage nsAttributedString dataFromRange_documentAttributes_errorSelector range (toNSDictionary dict) (toNSError error_)

-- | @- fileWrapperFromRange:documentAttributes:error:@
fileWrapperFromRange_documentAttributes_error :: (IsNSAttributedString nsAttributedString, IsNSDictionary dict, IsNSError error_) => nsAttributedString -> NSRange -> dict -> error_ -> IO (Id NSFileWrapper)
fileWrapperFromRange_documentAttributes_error nsAttributedString range dict error_ =
  sendMessage nsAttributedString fileWrapperFromRange_documentAttributes_errorSelector range (toNSDictionary dict) (toNSError error_)

-- | @- initWithRTF:documentAttributes:@
initWithRTF_documentAttributes :: (IsNSAttributedString nsAttributedString, IsNSData data_, IsNSDictionary dict) => nsAttributedString -> data_ -> dict -> IO (Id NSAttributedString)
initWithRTF_documentAttributes nsAttributedString data_ dict =
  sendOwnedMessage nsAttributedString initWithRTF_documentAttributesSelector (toNSData data_) (toNSDictionary dict)

-- | @- initWithRTFD:documentAttributes:@
initWithRTFD_documentAttributes :: (IsNSAttributedString nsAttributedString, IsNSData data_, IsNSDictionary dict) => nsAttributedString -> data_ -> dict -> IO (Id NSAttributedString)
initWithRTFD_documentAttributes nsAttributedString data_ dict =
  sendOwnedMessage nsAttributedString initWithRTFD_documentAttributesSelector (toNSData data_) (toNSDictionary dict)

-- | @- initWithHTML:documentAttributes:@
initWithHTML_documentAttributes :: (IsNSAttributedString nsAttributedString, IsNSData data_, IsNSDictionary dict) => nsAttributedString -> data_ -> dict -> IO (Id NSAttributedString)
initWithHTML_documentAttributes nsAttributedString data_ dict =
  sendOwnedMessage nsAttributedString initWithHTML_documentAttributesSelector (toNSData data_) (toNSDictionary dict)

-- | @- initWithHTML:baseURL:documentAttributes:@
initWithHTML_baseURL_documentAttributes :: (IsNSAttributedString nsAttributedString, IsNSData data_, IsNSURL base, IsNSDictionary dict) => nsAttributedString -> data_ -> base -> dict -> IO (Id NSAttributedString)
initWithHTML_baseURL_documentAttributes nsAttributedString data_ base dict =
  sendOwnedMessage nsAttributedString initWithHTML_baseURL_documentAttributesSelector (toNSData data_) (toNSURL base) (toNSDictionary dict)

-- | @- initWithDocFormat:documentAttributes:@
initWithDocFormat_documentAttributes :: (IsNSAttributedString nsAttributedString, IsNSData data_, IsNSDictionary dict) => nsAttributedString -> data_ -> dict -> IO (Id NSAttributedString)
initWithDocFormat_documentAttributes nsAttributedString data_ dict =
  sendOwnedMessage nsAttributedString initWithDocFormat_documentAttributesSelector (toNSData data_) (toNSDictionary dict)

-- | @- initWithHTML:options:documentAttributes:@
initWithHTML_options_documentAttributes :: (IsNSAttributedString nsAttributedString, IsNSData data_, IsNSDictionary options, IsNSDictionary dict) => nsAttributedString -> data_ -> options -> dict -> IO (Id NSAttributedString)
initWithHTML_options_documentAttributes nsAttributedString data_ options dict =
  sendOwnedMessage nsAttributedString initWithHTML_options_documentAttributesSelector (toNSData data_) (toNSDictionary options) (toNSDictionary dict)

-- | @- initWithRTFDFileWrapper:documentAttributes:@
initWithRTFDFileWrapper_documentAttributes :: (IsNSAttributedString nsAttributedString, IsNSFileWrapper wrapper, IsNSDictionary dict) => nsAttributedString -> wrapper -> dict -> IO (Id NSAttributedString)
initWithRTFDFileWrapper_documentAttributes nsAttributedString wrapper dict =
  sendOwnedMessage nsAttributedString initWithRTFDFileWrapper_documentAttributesSelector (toNSFileWrapper wrapper) (toNSDictionary dict)

-- | @- RTFFromRange:documentAttributes:@
rtfFromRange_documentAttributes :: (IsNSAttributedString nsAttributedString, IsNSDictionary dict) => nsAttributedString -> NSRange -> dict -> IO (Id NSData)
rtfFromRange_documentAttributes nsAttributedString range dict =
  sendMessage nsAttributedString rtfFromRange_documentAttributesSelector range (toNSDictionary dict)

-- | @- RTFDFromRange:documentAttributes:@
rtfdFromRange_documentAttributes :: (IsNSAttributedString nsAttributedString, IsNSDictionary dict) => nsAttributedString -> NSRange -> dict -> IO (Id NSData)
rtfdFromRange_documentAttributes nsAttributedString range dict =
  sendMessage nsAttributedString rtfdFromRange_documentAttributesSelector range (toNSDictionary dict)

-- | @- RTFDFileWrapperFromRange:documentAttributes:@
rtfdFileWrapperFromRange_documentAttributes :: (IsNSAttributedString nsAttributedString, IsNSDictionary dict) => nsAttributedString -> NSRange -> dict -> IO (Id NSFileWrapper)
rtfdFileWrapperFromRange_documentAttributes nsAttributedString range dict =
  sendMessage nsAttributedString rtfdFileWrapperFromRange_documentAttributesSelector range (toNSDictionary dict)

-- | @- docFormatFromRange:documentAttributes:@
docFormatFromRange_documentAttributes :: (IsNSAttributedString nsAttributedString, IsNSDictionary dict) => nsAttributedString -> NSRange -> dict -> IO (Id NSData)
docFormatFromRange_documentAttributes nsAttributedString range dict =
  sendMessage nsAttributedString docFormatFromRange_documentAttributesSelector range (toNSDictionary dict)

-- | @- containsAttachments@
containsAttachments :: IsNSAttributedString nsAttributedString => nsAttributedString -> IO Bool
containsAttachments nsAttributedString =
  sendMessage nsAttributedString containsAttachmentsSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @drawWithRect:options:@
drawWithRect_optionsSelector :: Selector '[NSRect, NSStringDrawingOptions] ()
drawWithRect_optionsSelector = mkSelector "drawWithRect:options:"

-- | @Selector@ for @boundingRectWithSize:options:@
boundingRectWithSize_optionsSelector :: Selector '[NSSize, NSStringDrawingOptions] NSRect
boundingRectWithSize_optionsSelector = mkSelector "boundingRectWithSize:options:"

-- | @Selector@ for @drawWithRect:options:context:@
drawWithRect_options_contextSelector :: Selector '[NSRect, NSStringDrawingOptions, Id NSStringDrawingContext] ()
drawWithRect_options_contextSelector = mkSelector "drawWithRect:options:context:"

-- | @Selector@ for @boundingRectWithSize:options:context:@
boundingRectWithSize_options_contextSelector :: Selector '[NSSize, NSStringDrawingOptions, Id NSStringDrawingContext] NSRect
boundingRectWithSize_options_contextSelector = mkSelector "boundingRectWithSize:options:context:"

-- | @Selector@ for @size@
sizeSelector :: Selector '[] NSSize
sizeSelector = mkSelector "size"

-- | @Selector@ for @drawAtPoint:@
drawAtPointSelector :: Selector '[NSPoint] ()
drawAtPointSelector = mkSelector "drawAtPoint:"

-- | @Selector@ for @drawInRect:@
drawInRectSelector :: Selector '[NSRect] ()
drawInRectSelector = mkSelector "drawInRect:"

-- | @Selector@ for @attributedStringWithAttachment:@
attributedStringWithAttachmentSelector :: Selector '[Id NSTextAttachment] (Id NSAttributedString)
attributedStringWithAttachmentSelector = mkSelector "attributedStringWithAttachment:"

-- | @Selector@ for @textFileTypes@
textFileTypesSelector :: Selector '[] (Id NSArray)
textFileTypesSelector = mkSelector "textFileTypes"

-- | @Selector@ for @textPasteboardTypes@
textPasteboardTypesSelector :: Selector '[] (Id NSArray)
textPasteboardTypesSelector = mkSelector "textPasteboardTypes"

-- | @Selector@ for @textUnfilteredFileTypes@
textUnfilteredFileTypesSelector :: Selector '[] (Id NSArray)
textUnfilteredFileTypesSelector = mkSelector "textUnfilteredFileTypes"

-- | @Selector@ for @textUnfilteredPasteboardTypes@
textUnfilteredPasteboardTypesSelector :: Selector '[] (Id NSArray)
textUnfilteredPasteboardTypesSelector = mkSelector "textUnfilteredPasteboardTypes"

-- | @Selector@ for @initWithURL:documentAttributes:@
initWithURL_documentAttributesSelector :: Selector '[Id NSURL, Id NSDictionary] (Id NSAttributedString)
initWithURL_documentAttributesSelector = mkSelector "initWithURL:documentAttributes:"

-- | @Selector@ for @initWithPath:documentAttributes:@
initWithPath_documentAttributesSelector :: Selector '[Id NSString, Id NSDictionary] (Id NSAttributedString)
initWithPath_documentAttributesSelector = mkSelector "initWithPath:documentAttributes:"

-- | @Selector@ for @URLAtIndex:effectiveRange:@
urlAtIndex_effectiveRangeSelector :: Selector '[CULong, Ptr NSRange] (Id NSURL)
urlAtIndex_effectiveRangeSelector = mkSelector "URLAtIndex:effectiveRange:"

-- | @Selector@ for @fontAttributesInRange:@
fontAttributesInRangeSelector :: Selector '[NSRange] (Id NSDictionary)
fontAttributesInRangeSelector = mkSelector "fontAttributesInRange:"

-- | @Selector@ for @rulerAttributesInRange:@
rulerAttributesInRangeSelector :: Selector '[NSRange] (Id NSDictionary)
rulerAttributesInRangeSelector = mkSelector "rulerAttributesInRange:"

-- | @Selector@ for @containsAttachmentsInRange:@
containsAttachmentsInRangeSelector :: Selector '[NSRange] Bool
containsAttachmentsInRangeSelector = mkSelector "containsAttachmentsInRange:"

-- | @Selector@ for @lineBreakBeforeIndex:withinRange:@
lineBreakBeforeIndex_withinRangeSelector :: Selector '[CULong, NSRange] CULong
lineBreakBeforeIndex_withinRangeSelector = mkSelector "lineBreakBeforeIndex:withinRange:"

-- | @Selector@ for @lineBreakByHyphenatingBeforeIndex:withinRange:@
lineBreakByHyphenatingBeforeIndex_withinRangeSelector :: Selector '[CULong, NSRange] CULong
lineBreakByHyphenatingBeforeIndex_withinRangeSelector = mkSelector "lineBreakByHyphenatingBeforeIndex:withinRange:"

-- | @Selector@ for @doubleClickAtIndex:@
doubleClickAtIndexSelector :: Selector '[CULong] NSRange
doubleClickAtIndexSelector = mkSelector "doubleClickAtIndex:"

-- | @Selector@ for @nextWordFromIndex:forward:@
nextWordFromIndex_forwardSelector :: Selector '[CULong, Bool] CULong
nextWordFromIndex_forwardSelector = mkSelector "nextWordFromIndex:forward:"

-- | @Selector@ for @rangeOfTextBlock:atIndex:@
rangeOfTextBlock_atIndexSelector :: Selector '[Id NSTextBlock, CULong] NSRange
rangeOfTextBlock_atIndexSelector = mkSelector "rangeOfTextBlock:atIndex:"

-- | @Selector@ for @rangeOfTextTable:atIndex:@
rangeOfTextTable_atIndexSelector :: Selector '[Id NSTextTable, CULong] NSRange
rangeOfTextTable_atIndexSelector = mkSelector "rangeOfTextTable:atIndex:"

-- | @Selector@ for @rangeOfTextList:atIndex:@
rangeOfTextList_atIndexSelector :: Selector '[Id NSTextList, CULong] NSRange
rangeOfTextList_atIndexSelector = mkSelector "rangeOfTextList:atIndex:"

-- | @Selector@ for @itemNumberInTextList:atIndex:@
itemNumberInTextList_atIndexSelector :: Selector '[Id NSTextList, CULong] CLong
itemNumberInTextList_atIndexSelector = mkSelector "itemNumberInTextList:atIndex:"

-- | @Selector@ for @initWithURL:options:documentAttributes:error:@
initWithURL_options_documentAttributes_errorSelector :: Selector '[Id NSURL, Id NSDictionary, Id NSDictionary, Id NSError] (Id NSAttributedString)
initWithURL_options_documentAttributes_errorSelector = mkSelector "initWithURL:options:documentAttributes:error:"

-- | @Selector@ for @initWithData:options:documentAttributes:error:@
initWithData_options_documentAttributes_errorSelector :: Selector '[Id NSData, Id NSDictionary, Id NSDictionary, Id NSError] (Id NSAttributedString)
initWithData_options_documentAttributes_errorSelector = mkSelector "initWithData:options:documentAttributes:error:"

-- | @Selector@ for @dataFromRange:documentAttributes:error:@
dataFromRange_documentAttributes_errorSelector :: Selector '[NSRange, Id NSDictionary, Id NSError] (Id NSData)
dataFromRange_documentAttributes_errorSelector = mkSelector "dataFromRange:documentAttributes:error:"

-- | @Selector@ for @fileWrapperFromRange:documentAttributes:error:@
fileWrapperFromRange_documentAttributes_errorSelector :: Selector '[NSRange, Id NSDictionary, Id NSError] (Id NSFileWrapper)
fileWrapperFromRange_documentAttributes_errorSelector = mkSelector "fileWrapperFromRange:documentAttributes:error:"

-- | @Selector@ for @initWithRTF:documentAttributes:@
initWithRTF_documentAttributesSelector :: Selector '[Id NSData, Id NSDictionary] (Id NSAttributedString)
initWithRTF_documentAttributesSelector = mkSelector "initWithRTF:documentAttributes:"

-- | @Selector@ for @initWithRTFD:documentAttributes:@
initWithRTFD_documentAttributesSelector :: Selector '[Id NSData, Id NSDictionary] (Id NSAttributedString)
initWithRTFD_documentAttributesSelector = mkSelector "initWithRTFD:documentAttributes:"

-- | @Selector@ for @initWithHTML:documentAttributes:@
initWithHTML_documentAttributesSelector :: Selector '[Id NSData, Id NSDictionary] (Id NSAttributedString)
initWithHTML_documentAttributesSelector = mkSelector "initWithHTML:documentAttributes:"

-- | @Selector@ for @initWithHTML:baseURL:documentAttributes:@
initWithHTML_baseURL_documentAttributesSelector :: Selector '[Id NSData, Id NSURL, Id NSDictionary] (Id NSAttributedString)
initWithHTML_baseURL_documentAttributesSelector = mkSelector "initWithHTML:baseURL:documentAttributes:"

-- | @Selector@ for @initWithDocFormat:documentAttributes:@
initWithDocFormat_documentAttributesSelector :: Selector '[Id NSData, Id NSDictionary] (Id NSAttributedString)
initWithDocFormat_documentAttributesSelector = mkSelector "initWithDocFormat:documentAttributes:"

-- | @Selector@ for @initWithHTML:options:documentAttributes:@
initWithHTML_options_documentAttributesSelector :: Selector '[Id NSData, Id NSDictionary, Id NSDictionary] (Id NSAttributedString)
initWithHTML_options_documentAttributesSelector = mkSelector "initWithHTML:options:documentAttributes:"

-- | @Selector@ for @initWithRTFDFileWrapper:documentAttributes:@
initWithRTFDFileWrapper_documentAttributesSelector :: Selector '[Id NSFileWrapper, Id NSDictionary] (Id NSAttributedString)
initWithRTFDFileWrapper_documentAttributesSelector = mkSelector "initWithRTFDFileWrapper:documentAttributes:"

-- | @Selector@ for @RTFFromRange:documentAttributes:@
rtfFromRange_documentAttributesSelector :: Selector '[NSRange, Id NSDictionary] (Id NSData)
rtfFromRange_documentAttributesSelector = mkSelector "RTFFromRange:documentAttributes:"

-- | @Selector@ for @RTFDFromRange:documentAttributes:@
rtfdFromRange_documentAttributesSelector :: Selector '[NSRange, Id NSDictionary] (Id NSData)
rtfdFromRange_documentAttributesSelector = mkSelector "RTFDFromRange:documentAttributes:"

-- | @Selector@ for @RTFDFileWrapperFromRange:documentAttributes:@
rtfdFileWrapperFromRange_documentAttributesSelector :: Selector '[NSRange, Id NSDictionary] (Id NSFileWrapper)
rtfdFileWrapperFromRange_documentAttributesSelector = mkSelector "RTFDFileWrapperFromRange:documentAttributes:"

-- | @Selector@ for @docFormatFromRange:documentAttributes:@
docFormatFromRange_documentAttributesSelector :: Selector '[NSRange, Id NSDictionary] (Id NSData)
docFormatFromRange_documentAttributesSelector = mkSelector "docFormatFromRange:documentAttributes:"

-- | @Selector@ for @containsAttachments@
containsAttachmentsSelector :: Selector '[] Bool
containsAttachmentsSelector = mkSelector "containsAttachments"

