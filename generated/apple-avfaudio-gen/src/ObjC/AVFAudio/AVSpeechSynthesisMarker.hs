{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @AVSpeechSynthesisMarker@.
module ObjC.AVFAudio.AVSpeechSynthesisMarker
  ( AVSpeechSynthesisMarker
  , IsAVSpeechSynthesisMarker(..)
  , initWithMarkerType_forTextRange_atByteSampleOffset
  , mark
  , setMark
  , byteSampleOffset
  , setByteSampleOffset
  , textRange
  , setTextRange
  , byteSampleOffsetSelector
  , initWithMarkerType_forTextRange_atByteSampleOffsetSelector
  , markSelector
  , setByteSampleOffsetSelector
  , setMarkSelector
  , setTextRangeSelector
  , textRangeSelector

  -- * Enum types
  , AVSpeechSynthesisMarkerMark(AVSpeechSynthesisMarkerMark)
  , pattern AVSpeechSynthesisMarkerMarkPhoneme
  , pattern AVSpeechSynthesisMarkerMarkWord
  , pattern AVSpeechSynthesisMarkerMarkSentence
  , pattern AVSpeechSynthesisMarkerMarkParagraph

  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AVFAudio.Internal.Classes
import ObjC.Foundation.Internal.Structs
import ObjC.AVFAudio.Internal.Enums
import ObjC.Foundation.Internal.Classes

-- | @- initWithMarkerType:forTextRange:atByteSampleOffset:@
initWithMarkerType_forTextRange_atByteSampleOffset :: IsAVSpeechSynthesisMarker avSpeechSynthesisMarker => avSpeechSynthesisMarker -> AVSpeechSynthesisMarkerMark -> NSRange -> CULong -> IO (Id AVSpeechSynthesisMarker)
initWithMarkerType_forTextRange_atByteSampleOffset avSpeechSynthesisMarker type_ range byteSampleOffset =
  sendOwnedMessage avSpeechSynthesisMarker initWithMarkerType_forTextRange_atByteSampleOffsetSelector type_ range byteSampleOffset

-- | @- mark@
mark :: IsAVSpeechSynthesisMarker avSpeechSynthesisMarker => avSpeechSynthesisMarker -> IO AVSpeechSynthesisMarkerMark
mark avSpeechSynthesisMarker =
  sendMessage avSpeechSynthesisMarker markSelector

-- | @- setMark:@
setMark :: IsAVSpeechSynthesisMarker avSpeechSynthesisMarker => avSpeechSynthesisMarker -> AVSpeechSynthesisMarkerMark -> IO ()
setMark avSpeechSynthesisMarker value =
  sendMessage avSpeechSynthesisMarker setMarkSelector value

-- | Byte offset into the associated audio buffer
--
-- ObjC selector: @- byteSampleOffset@
byteSampleOffset :: IsAVSpeechSynthesisMarker avSpeechSynthesisMarker => avSpeechSynthesisMarker -> IO CULong
byteSampleOffset avSpeechSynthesisMarker =
  sendMessage avSpeechSynthesisMarker byteSampleOffsetSelector

-- | Byte offset into the associated audio buffer
--
-- ObjC selector: @- setByteSampleOffset:@
setByteSampleOffset :: IsAVSpeechSynthesisMarker avSpeechSynthesisMarker => avSpeechSynthesisMarker -> CULong -> IO ()
setByteSampleOffset avSpeechSynthesisMarker value =
  sendMessage avSpeechSynthesisMarker setByteSampleOffsetSelector value

-- | The location and length of the pertaining speech request's SSML text. This marker applies to the range of characters represented by the NSString.
--
-- ObjC selector: @- textRange@
textRange :: IsAVSpeechSynthesisMarker avSpeechSynthesisMarker => avSpeechSynthesisMarker -> IO NSRange
textRange avSpeechSynthesisMarker =
  sendMessage avSpeechSynthesisMarker textRangeSelector

-- | The location and length of the pertaining speech request's SSML text. This marker applies to the range of characters represented by the NSString.
--
-- ObjC selector: @- setTextRange:@
setTextRange :: IsAVSpeechSynthesisMarker avSpeechSynthesisMarker => avSpeechSynthesisMarker -> NSRange -> IO ()
setTextRange avSpeechSynthesisMarker value =
  sendMessage avSpeechSynthesisMarker setTextRangeSelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithMarkerType:forTextRange:atByteSampleOffset:@
initWithMarkerType_forTextRange_atByteSampleOffsetSelector :: Selector '[AVSpeechSynthesisMarkerMark, NSRange, CULong] (Id AVSpeechSynthesisMarker)
initWithMarkerType_forTextRange_atByteSampleOffsetSelector = mkSelector "initWithMarkerType:forTextRange:atByteSampleOffset:"

-- | @Selector@ for @mark@
markSelector :: Selector '[] AVSpeechSynthesisMarkerMark
markSelector = mkSelector "mark"

-- | @Selector@ for @setMark:@
setMarkSelector :: Selector '[AVSpeechSynthesisMarkerMark] ()
setMarkSelector = mkSelector "setMark:"

-- | @Selector@ for @byteSampleOffset@
byteSampleOffsetSelector :: Selector '[] CULong
byteSampleOffsetSelector = mkSelector "byteSampleOffset"

-- | @Selector@ for @setByteSampleOffset:@
setByteSampleOffsetSelector :: Selector '[CULong] ()
setByteSampleOffsetSelector = mkSelector "setByteSampleOffset:"

-- | @Selector@ for @textRange@
textRangeSelector :: Selector '[] NSRange
textRangeSelector = mkSelector "textRange"

-- | @Selector@ for @setTextRange:@
setTextRangeSelector :: Selector '[NSRange] ()
setTextRangeSelector = mkSelector "setTextRange:"

