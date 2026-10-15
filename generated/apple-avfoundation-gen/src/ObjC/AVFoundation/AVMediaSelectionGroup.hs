{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @AVMediaSelectionGroup@.
module ObjC.AVFoundation.AVMediaSelectionGroup
  ( AVMediaSelectionGroup
  , IsAVMediaSelectionGroup(..)
  , mediaSelectionOptionWithPropertyList
  , playableMediaSelectionOptionsFromArray
  , mediaSelectionOptionsFromArray_filteredAndSortedAccordingToPreferredLanguages
  , mediaSelectionOptionsFromArray_withLocale
  , mediaSelectionOptionsFromArray_withMediaCharacteristics
  , mediaSelectionOptionsFromArray_withoutMediaCharacteristics
  , options
  , defaultOption
  , allowsEmptySelection
  , allowsEmptySelectionSelector
  , defaultOptionSelector
  , mediaSelectionOptionWithPropertyListSelector
  , mediaSelectionOptionsFromArray_filteredAndSortedAccordingToPreferredLanguagesSelector
  , mediaSelectionOptionsFromArray_withLocaleSelector
  , mediaSelectionOptionsFromArray_withMediaCharacteristicsSelector
  , mediaSelectionOptionsFromArray_withoutMediaCharacteristicsSelector
  , optionsSelector
  , playableMediaSelectionOptionsFromArraySelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AVFoundation.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | mediaSelectionOptionWithPropertyList:
--
-- Returns the instance of AVMediaSelectionOption with properties that match the specified property list.
--
-- @plist@ — A property list previously obtained from an option in the group via -[AVMediaSelectionOption propertyList].
--
-- Returns: If the specified properties match those of an option in the group, an instance of AVMediaSelectionOption. Otherwise nil.
--
-- ObjC selector: @- mediaSelectionOptionWithPropertyList:@
mediaSelectionOptionWithPropertyList :: IsAVMediaSelectionGroup avMediaSelectionGroup => avMediaSelectionGroup -> RawId -> IO (Id AVMediaSelectionOption)
mediaSelectionOptionWithPropertyList avMediaSelectionGroup plist =
  sendMessage avMediaSelectionGroup mediaSelectionOptionWithPropertyListSelector plist

-- | playableMediaSelectionOptionsFromArray:
--
-- Filters an array of AVMediaSelectionOptions according to whether they are playable.
--
-- @mediaSelectionOptions@ — An array of AVMediaSelectionOption to be filtered according to whether they are playable.
--
-- Returns: An instance of NSArray containing the media selection options of the specified NSArray that are playable.
--
-- ObjC selector: @+ playableMediaSelectionOptionsFromArray:@
playableMediaSelectionOptionsFromArray :: IsNSArray mediaSelectionOptions => mediaSelectionOptions -> IO (Id NSArray)
playableMediaSelectionOptionsFromArray mediaSelectionOptions =
  do
    cls' <- getRequiredClass "AVMediaSelectionGroup"
    sendClassMessage cls' playableMediaSelectionOptionsFromArraySelector (toNSArray mediaSelectionOptions)

-- | mediaSelectionOptionsFromArray:filteredAndSortedAccordingToPreferredLanguages:
--
-- Filters an array of AVMediaSelectionOptions according to whether their locales match any language identifier in the specified array of preferred languages. The returned array is sorted according to the order of preference of the language each matches.
--
-- @mediaSelectionOptions@ — An array of AVMediaSelectionOptions to be filtered and sorted.
--
-- @preferredLanguages@ — An array of language identifiers in order of preference, each of which is an IETF BCP 47 (RFC 4646) language identifier. Use +[NSLocale preferredLanguages] to obtain the user's list of preferred languages.
--
-- Returns: An instance of NSArray containing media selection options of the specified NSArray that match a preferred language, sorted according to the order of preference of the language each matches.
--
-- ObjC selector: @+ mediaSelectionOptionsFromArray:filteredAndSortedAccordingToPreferredLanguages:@
mediaSelectionOptionsFromArray_filteredAndSortedAccordingToPreferredLanguages :: (IsNSArray mediaSelectionOptions, IsNSArray preferredLanguages) => mediaSelectionOptions -> preferredLanguages -> IO (Id NSArray)
mediaSelectionOptionsFromArray_filteredAndSortedAccordingToPreferredLanguages mediaSelectionOptions preferredLanguages =
  do
    cls' <- getRequiredClass "AVMediaSelectionGroup"
    sendClassMessage cls' mediaSelectionOptionsFromArray_filteredAndSortedAccordingToPreferredLanguagesSelector (toNSArray mediaSelectionOptions) (toNSArray preferredLanguages)

-- | mediaSelectionOptionsFromArray:withLocale:
--
-- Filters an array of AVMediaSelectionOptions according to locale.
--
-- @mediaSelectionOptions@ — An array of AVMediaSelectionOption to be filtered by locale.
--
-- @locale@ — The NSLocale that must be matched for a media selection option to be copied to the output array.
--
-- Returns: An instance of NSArray containing the media selection options of the specified NSArray that match the specified locale.
--
-- ObjC selector: @+ mediaSelectionOptionsFromArray:withLocale:@
mediaSelectionOptionsFromArray_withLocale :: (IsNSArray mediaSelectionOptions, IsNSLocale locale) => mediaSelectionOptions -> locale -> IO (Id NSArray)
mediaSelectionOptionsFromArray_withLocale mediaSelectionOptions locale =
  do
    cls' <- getRequiredClass "AVMediaSelectionGroup"
    sendClassMessage cls' mediaSelectionOptionsFromArray_withLocaleSelector (toNSArray mediaSelectionOptions) (toNSLocale locale)

-- | mediaSelectionOptionsFromArray:withMediaCharacteristics:
--
-- Filters an array of AVMediaSelectionOptions according to one or more media characteristics.
--
-- @mediaSelectionOptions@ — An array of AVMediaSelectionOptions to be filtered by media characteristic.
--
-- @mediaCharacteristics@ — The media characteristics that must be matched for a media selection option to be copied to the output array.
--
-- Returns: An instance of NSArray containing the media selection options of the specified NSArray that match the specified				media characteristics.
--
-- ObjC selector: @+ mediaSelectionOptionsFromArray:withMediaCharacteristics:@
mediaSelectionOptionsFromArray_withMediaCharacteristics :: (IsNSArray mediaSelectionOptions, IsNSArray mediaCharacteristics) => mediaSelectionOptions -> mediaCharacteristics -> IO (Id NSArray)
mediaSelectionOptionsFromArray_withMediaCharacteristics mediaSelectionOptions mediaCharacteristics =
  do
    cls' <- getRequiredClass "AVMediaSelectionGroup"
    sendClassMessage cls' mediaSelectionOptionsFromArray_withMediaCharacteristicsSelector (toNSArray mediaSelectionOptions) (toNSArray mediaCharacteristics)

-- | mediaSelectionOptionsFromArray:withoutMediaCharacteristics:
--
-- Filters an array of AVMediaSelectionOptions according to whether they lack one or more media characteristics.
--
-- @mediaSelectionOptions@ — An array of AVMediaSelectionOptions to be filtered by media characteristic.
--
-- @mediaCharacteristics@ — The media characteristics that must not be present for a media selection option to be copied to the output array.
--
-- Returns: An instance of NSArray containing the media selection options of the specified NSArray that lack the specified				media characteristics.
--
-- ObjC selector: @+ mediaSelectionOptionsFromArray:withoutMediaCharacteristics:@
mediaSelectionOptionsFromArray_withoutMediaCharacteristics :: (IsNSArray mediaSelectionOptions, IsNSArray mediaCharacteristics) => mediaSelectionOptions -> mediaCharacteristics -> IO (Id NSArray)
mediaSelectionOptionsFromArray_withoutMediaCharacteristics mediaSelectionOptions mediaCharacteristics =
  do
    cls' <- getRequiredClass "AVMediaSelectionGroup"
    sendClassMessage cls' mediaSelectionOptionsFromArray_withoutMediaCharacteristicsSelector (toNSArray mediaSelectionOptions) (toNSArray mediaCharacteristics)

-- | options
--
-- A collection of mutually exclusive media selection options.
--
-- An NSArray of AVMediaSelectionOption*.
--
-- ObjC selector: @- options@
options :: IsAVMediaSelectionGroup avMediaSelectionGroup => avMediaSelectionGroup -> IO (Id NSArray)
options avMediaSelectionGroup =
  sendMessage avMediaSelectionGroup optionsSelector

-- | defaultOption
--
-- Indicates the default option in the group, i.e. the option that's intended for use in the absence of a specific end-user selection or preference.
--
-- Can be nil, indicating that without a specific end-user selection or preference, no option in the group is intended to be selected.
--
-- ObjC selector: @- defaultOption@
defaultOption :: IsAVMediaSelectionGroup avMediaSelectionGroup => avMediaSelectionGroup -> IO (Id AVMediaSelectionOption)
defaultOption avMediaSelectionGroup =
  sendMessage avMediaSelectionGroup defaultOptionSelector

-- | allowsEmptySelection
--
-- Indicates whether it's possible to present none of the options in the group when an associated AVPlayerItem is played.
--
-- If allowsEmptySelection is YES, all of the available media options in the group can be deselected by passing nil	as the specified AVMediaSelectionOption to -[AVPlayerItem selectMediaOption:inMediaSelectionGroup:].
--
-- ObjC selector: @- allowsEmptySelection@
allowsEmptySelection :: IsAVMediaSelectionGroup avMediaSelectionGroup => avMediaSelectionGroup -> IO Bool
allowsEmptySelection avMediaSelectionGroup =
  sendMessage avMediaSelectionGroup allowsEmptySelectionSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @mediaSelectionOptionWithPropertyList:@
mediaSelectionOptionWithPropertyListSelector :: Selector '[RawId] (Id AVMediaSelectionOption)
mediaSelectionOptionWithPropertyListSelector = mkSelector "mediaSelectionOptionWithPropertyList:"

-- | @Selector@ for @playableMediaSelectionOptionsFromArray:@
playableMediaSelectionOptionsFromArraySelector :: Selector '[Id NSArray] (Id NSArray)
playableMediaSelectionOptionsFromArraySelector = mkSelector "playableMediaSelectionOptionsFromArray:"

-- | @Selector@ for @mediaSelectionOptionsFromArray:filteredAndSortedAccordingToPreferredLanguages:@
mediaSelectionOptionsFromArray_filteredAndSortedAccordingToPreferredLanguagesSelector :: Selector '[Id NSArray, Id NSArray] (Id NSArray)
mediaSelectionOptionsFromArray_filteredAndSortedAccordingToPreferredLanguagesSelector = mkSelector "mediaSelectionOptionsFromArray:filteredAndSortedAccordingToPreferredLanguages:"

-- | @Selector@ for @mediaSelectionOptionsFromArray:withLocale:@
mediaSelectionOptionsFromArray_withLocaleSelector :: Selector '[Id NSArray, Id NSLocale] (Id NSArray)
mediaSelectionOptionsFromArray_withLocaleSelector = mkSelector "mediaSelectionOptionsFromArray:withLocale:"

-- | @Selector@ for @mediaSelectionOptionsFromArray:withMediaCharacteristics:@
mediaSelectionOptionsFromArray_withMediaCharacteristicsSelector :: Selector '[Id NSArray, Id NSArray] (Id NSArray)
mediaSelectionOptionsFromArray_withMediaCharacteristicsSelector = mkSelector "mediaSelectionOptionsFromArray:withMediaCharacteristics:"

-- | @Selector@ for @mediaSelectionOptionsFromArray:withoutMediaCharacteristics:@
mediaSelectionOptionsFromArray_withoutMediaCharacteristicsSelector :: Selector '[Id NSArray, Id NSArray] (Id NSArray)
mediaSelectionOptionsFromArray_withoutMediaCharacteristicsSelector = mkSelector "mediaSelectionOptionsFromArray:withoutMediaCharacteristics:"

-- | @Selector@ for @options@
optionsSelector :: Selector '[] (Id NSArray)
optionsSelector = mkSelector "options"

-- | @Selector@ for @defaultOption@
defaultOptionSelector :: Selector '[] (Id AVMediaSelectionOption)
defaultOptionSelector = mkSelector "defaultOption"

-- | @Selector@ for @allowsEmptySelection@
allowsEmptySelectionSelector :: Selector '[] Bool
allowsEmptySelectionSelector = mkSelector "allowsEmptySelection"

