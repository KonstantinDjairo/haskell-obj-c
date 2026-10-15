{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @AVAssetVariantQualifier@.
module ObjC.AVFoundation.AVAssetVariantQualifier
  ( AVAssetVariantQualifier
  , IsAVAssetVariantQualifier(..)
  , init_
  , new
  , assetVariantQualifierWithPredicate
  , assetVariantQualifierWithVariant
  , predicateForChannelCount_mediaSelectionOption_operatorType
  , predicateForPresentationWidth_operatorType
  , predicateForPresentationHeight_operatorType
  , assetVariantQualifierWithPredicateSelector
  , assetVariantQualifierWithVariantSelector
  , initSelector
  , newSelector
  , predicateForChannelCount_mediaSelectionOption_operatorTypeSelector
  , predicateForPresentationHeight_operatorTypeSelector
  , predicateForPresentationWidth_operatorTypeSelector

  -- * Enum types
  , NSPredicateOperatorType(NSPredicateOperatorType)
  , pattern NSLessThanPredicateOperatorType
  , pattern NSLessThanOrEqualToPredicateOperatorType
  , pattern NSGreaterThanPredicateOperatorType
  , pattern NSGreaterThanOrEqualToPredicateOperatorType
  , pattern NSEqualToPredicateOperatorType
  , pattern NSNotEqualToPredicateOperatorType
  , pattern NSMatchesPredicateOperatorType
  , pattern NSLikePredicateOperatorType
  , pattern NSBeginsWithPredicateOperatorType
  , pattern NSEndsWithPredicateOperatorType
  , pattern NSInPredicateOperatorType
  , pattern NSCustomSelectorPredicateOperatorType
  , pattern NSContainsPredicateOperatorType
  , pattern NSBetweenPredicateOperatorType

  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AVFoundation.Internal.Classes
import ObjC.Foundation.Internal.Enums
import ObjC.Foundation.Internal.Classes

-- | @- init@
init_ :: IsAVAssetVariantQualifier avAssetVariantQualifier => avAssetVariantQualifier -> IO (Id AVAssetVariantQualifier)
init_ avAssetVariantQualifier =
  sendOwnedMessage avAssetVariantQualifier initSelector

-- | @+ new@
new :: IO (Id AVAssetVariantQualifier)
new  =
  do
    cls' <- getRequiredClass "AVAssetVariantQualifier"
    sendOwnedClassMessage cls' newSelector

-- | assetVariantQualifierWithPredicate:
--
-- Returns a qualifer for a predicate.
--
-- @predicate@ — The variant predicate.
--
-- ObjC selector: @+ assetVariantQualifierWithPredicate:@
assetVariantQualifierWithPredicate :: IsNSPredicate predicate => predicate -> IO (Id AVAssetVariantQualifier)
assetVariantQualifierWithPredicate predicate =
  do
    cls' <- getRequiredClass "AVAssetVariantQualifier"
    sendClassMessage cls' assetVariantQualifierWithPredicateSelector (toNSPredicate predicate)

-- | assetVariantQualifierWithVariant:
--
-- Returns a qualifer for a particular asset variant.
--
-- @variant@ — A variant obtained from the -[AVAsset variants] or -[AVAssetDownloadConfiguration playableVariants].
--
-- ObjC selector: @+ assetVariantQualifierWithVariant:@
assetVariantQualifierWithVariant :: IsAVAssetVariant variant => variant -> IO (Id AVAssetVariantQualifier)
assetVariantQualifierWithVariant variant =
  do
    cls' <- getRequiredClass "AVAssetVariantQualifier"
    sendClassMessage cls' assetVariantQualifierWithVariantSelector (toAVAssetVariant variant)

-- | predicateForChannelCount:mediaSelectionOption:operatorType:
--
-- Creates a NSPredicate for audio channel count which can be used with other NSPredicates' to express variant preferences.
--
-- @channelCount@ — The RHS value for the channel count in the predicate equation.
--
-- @mediaSelectionOption@ — The audio media selection option under consideration.
--
-- @operatorType@ — The valid values are NSLessThanPredicateOperatorType, NSLessThanOrEqualToPredicateOperatorType, NSGreaterThanPredicateOperatorType, NSGreaterThanOrEqualToPredicateOperatorType, NSEqualToPredicateOperatorType and NSNotEqualToPredicateOperatorType.
--
-- ObjC selector: @+ predicateForChannelCount:mediaSelectionOption:operatorType:@
predicateForChannelCount_mediaSelectionOption_operatorType :: IsAVMediaSelectionOption mediaSelectionOption => CLong -> mediaSelectionOption -> NSPredicateOperatorType -> IO (Id NSPredicate)
predicateForChannelCount_mediaSelectionOption_operatorType channelCount mediaSelectionOption operatorType =
  do
    cls' <- getRequiredClass "AVAssetVariantQualifier"
    sendClassMessage cls' predicateForChannelCount_mediaSelectionOption_operatorTypeSelector channelCount (toAVMediaSelectionOption mediaSelectionOption) operatorType

-- | predicateForPresentationWidth:operatorType:
--
-- Creates a NSPredicate for presentation size width which can be used with other NSPredicates to express variant preferences.
--
-- @width@ — The RHS value for the presentation size width in the predicate equation.
--
-- @operatorType@ — The valid values are NSLessThanPredicateOperatorType, NSLessThanOrEqualToPredicateOperatorType, NSGreaterThanPredicateOperatorType, NSGreaterThanOrEqualToPredicateOperatorType, NSEqualToPredicateOperatorType and NSNotEqualToPredicateOperatorType.
--
-- ObjC selector: @+ predicateForPresentationWidth:operatorType:@
predicateForPresentationWidth_operatorType :: CDouble -> NSPredicateOperatorType -> IO (Id NSPredicate)
predicateForPresentationWidth_operatorType width operatorType =
  do
    cls' <- getRequiredClass "AVAssetVariantQualifier"
    sendClassMessage cls' predicateForPresentationWidth_operatorTypeSelector width operatorType

-- | predicateForPresentationHeight:operatorType:
--
-- Creates a NSPredicate for presentation size height which can be used with other NSPredicates to express variant preferences.
--
-- @height@ — The RHS value for the presentation size height in the predicate equation.
--
-- @operatorType@ — The valid values are NSLessThanPredicateOperatorType, NSLessThanOrEqualToPredicateOperatorType, NSGreaterThanPredicateOperatorType, NSGreaterThanOrEqualToPredicateOperatorType, NSEqualToPredicateOperatorType and NSNotEqualToPredicateOperatorType.
--
-- ObjC selector: @+ predicateForPresentationHeight:operatorType:@
predicateForPresentationHeight_operatorType :: CDouble -> NSPredicateOperatorType -> IO (Id NSPredicate)
predicateForPresentationHeight_operatorType height operatorType =
  do
    cls' <- getRequiredClass "AVAssetVariantQualifier"
    sendClassMessage cls' predicateForPresentationHeight_operatorTypeSelector height operatorType

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id AVAssetVariantQualifier)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id AVAssetVariantQualifier)
newSelector = mkSelector "new"

-- | @Selector@ for @assetVariantQualifierWithPredicate:@
assetVariantQualifierWithPredicateSelector :: Selector '[Id NSPredicate] (Id AVAssetVariantQualifier)
assetVariantQualifierWithPredicateSelector = mkSelector "assetVariantQualifierWithPredicate:"

-- | @Selector@ for @assetVariantQualifierWithVariant:@
assetVariantQualifierWithVariantSelector :: Selector '[Id AVAssetVariant] (Id AVAssetVariantQualifier)
assetVariantQualifierWithVariantSelector = mkSelector "assetVariantQualifierWithVariant:"

-- | @Selector@ for @predicateForChannelCount:mediaSelectionOption:operatorType:@
predicateForChannelCount_mediaSelectionOption_operatorTypeSelector :: Selector '[CLong, Id AVMediaSelectionOption, NSPredicateOperatorType] (Id NSPredicate)
predicateForChannelCount_mediaSelectionOption_operatorTypeSelector = mkSelector "predicateForChannelCount:mediaSelectionOption:operatorType:"

-- | @Selector@ for @predicateForPresentationWidth:operatorType:@
predicateForPresentationWidth_operatorTypeSelector :: Selector '[CDouble, NSPredicateOperatorType] (Id NSPredicate)
predicateForPresentationWidth_operatorTypeSelector = mkSelector "predicateForPresentationWidth:operatorType:"

-- | @Selector@ for @predicateForPresentationHeight:operatorType:@
predicateForPresentationHeight_operatorTypeSelector :: Selector '[CDouble, NSPredicateOperatorType] (Id NSPredicate)
predicateForPresentationHeight_operatorTypeSelector = mkSelector "predicateForPresentationHeight:operatorType:"

