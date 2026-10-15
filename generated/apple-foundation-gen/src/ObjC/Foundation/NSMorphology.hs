{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @NSMorphology@.
module ObjC.Foundation.NSMorphology
  ( NSMorphology
  , IsNSMorphology(..)
  , customPronounForLanguage
  , setCustomPronoun_forLanguage_error
  , grammaticalGender
  , setGrammaticalGender
  , partOfSpeech
  , setPartOfSpeech
  , number
  , setNumber
  , unspecified
  , userMorphology
  , customPronounForLanguageSelector
  , grammaticalGenderSelector
  , numberSelector
  , partOfSpeechSelector
  , setCustomPronoun_forLanguage_errorSelector
  , setGrammaticalGenderSelector
  , setNumberSelector
  , setPartOfSpeechSelector
  , unspecifiedSelector
  , userMorphologySelector

  -- * Enum types
  , NSGrammaticalGender(NSGrammaticalGender)
  , pattern NSGrammaticalGenderNotSet
  , pattern NSGrammaticalGenderFeminine
  , pattern NSGrammaticalGenderMasculine
  , pattern NSGrammaticalGenderNeuter
  , NSGrammaticalNumber(NSGrammaticalNumber)
  , pattern NSGrammaticalNumberNotSet
  , pattern NSGrammaticalNumberSingular
  , pattern NSGrammaticalNumberZero
  , pattern NSGrammaticalNumberPlural
  , pattern NSGrammaticalNumberPluralTwo
  , pattern NSGrammaticalNumberPluralFew
  , pattern NSGrammaticalNumberPluralMany
  , NSGrammaticalPartOfSpeech(NSGrammaticalPartOfSpeech)
  , pattern NSGrammaticalPartOfSpeechNotSet
  , pattern NSGrammaticalPartOfSpeechDeterminer
  , pattern NSGrammaticalPartOfSpeechPronoun
  , pattern NSGrammaticalPartOfSpeechLetter
  , pattern NSGrammaticalPartOfSpeechAdverb
  , pattern NSGrammaticalPartOfSpeechParticle
  , pattern NSGrammaticalPartOfSpeechAdjective
  , pattern NSGrammaticalPartOfSpeechAdposition
  , pattern NSGrammaticalPartOfSpeechVerb
  , pattern NSGrammaticalPartOfSpeechNoun
  , pattern NSGrammaticalPartOfSpeechConjunction
  , pattern NSGrammaticalPartOfSpeechNumeral
  , pattern NSGrammaticalPartOfSpeechInterjection
  , pattern NSGrammaticalPartOfSpeechPreposition
  , pattern NSGrammaticalPartOfSpeechAbbreviation

  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.Foundation.Internal.Classes
import ObjC.Foundation.Internal.Enums

-- | @- customPronounForLanguage:@
customPronounForLanguage :: (IsNSMorphology nsMorphology, IsNSString language) => nsMorphology -> language -> IO (Id NSMorphologyCustomPronoun)
customPronounForLanguage nsMorphology language =
  sendMessage nsMorphology customPronounForLanguageSelector (toNSString language)

-- | @- setCustomPronoun:forLanguage:error:@
setCustomPronoun_forLanguage_error :: (IsNSMorphology nsMorphology, IsNSMorphologyCustomPronoun features, IsNSString language, IsNSError error_) => nsMorphology -> features -> language -> error_ -> IO Bool
setCustomPronoun_forLanguage_error nsMorphology features language error_ =
  sendMessage nsMorphology setCustomPronoun_forLanguage_errorSelector (toNSMorphologyCustomPronoun features) (toNSString language) (toNSError error_)

-- | @- grammaticalGender@
grammaticalGender :: IsNSMorphology nsMorphology => nsMorphology -> IO NSGrammaticalGender
grammaticalGender nsMorphology =
  sendMessage nsMorphology grammaticalGenderSelector

-- | @- setGrammaticalGender:@
setGrammaticalGender :: IsNSMorphology nsMorphology => nsMorphology -> NSGrammaticalGender -> IO ()
setGrammaticalGender nsMorphology value =
  sendMessage nsMorphology setGrammaticalGenderSelector value

-- | @- partOfSpeech@
partOfSpeech :: IsNSMorphology nsMorphology => nsMorphology -> IO NSGrammaticalPartOfSpeech
partOfSpeech nsMorphology =
  sendMessage nsMorphology partOfSpeechSelector

-- | @- setPartOfSpeech:@
setPartOfSpeech :: IsNSMorphology nsMorphology => nsMorphology -> NSGrammaticalPartOfSpeech -> IO ()
setPartOfSpeech nsMorphology value =
  sendMessage nsMorphology setPartOfSpeechSelector value

-- | @- number@
number :: IsNSMorphology nsMorphology => nsMorphology -> IO NSGrammaticalNumber
number nsMorphology =
  sendMessage nsMorphology numberSelector

-- | @- setNumber:@
setNumber :: IsNSMorphology nsMorphology => nsMorphology -> NSGrammaticalNumber -> IO ()
setNumber nsMorphology value =
  sendMessage nsMorphology setNumberSelector value

-- | @- unspecified@
unspecified :: IsNSMorphology nsMorphology => nsMorphology -> IO Bool
unspecified nsMorphology =
  sendMessage nsMorphology unspecifiedSelector

-- | @+ userMorphology@
userMorphology :: IO (Id NSMorphology)
userMorphology  =
  do
    cls' <- getRequiredClass "NSMorphology"
    sendClassMessage cls' userMorphologySelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @customPronounForLanguage:@
customPronounForLanguageSelector :: Selector '[Id NSString] (Id NSMorphologyCustomPronoun)
customPronounForLanguageSelector = mkSelector "customPronounForLanguage:"

-- | @Selector@ for @setCustomPronoun:forLanguage:error:@
setCustomPronoun_forLanguage_errorSelector :: Selector '[Id NSMorphologyCustomPronoun, Id NSString, Id NSError] Bool
setCustomPronoun_forLanguage_errorSelector = mkSelector "setCustomPronoun:forLanguage:error:"

-- | @Selector@ for @grammaticalGender@
grammaticalGenderSelector :: Selector '[] NSGrammaticalGender
grammaticalGenderSelector = mkSelector "grammaticalGender"

-- | @Selector@ for @setGrammaticalGender:@
setGrammaticalGenderSelector :: Selector '[NSGrammaticalGender] ()
setGrammaticalGenderSelector = mkSelector "setGrammaticalGender:"

-- | @Selector@ for @partOfSpeech@
partOfSpeechSelector :: Selector '[] NSGrammaticalPartOfSpeech
partOfSpeechSelector = mkSelector "partOfSpeech"

-- | @Selector@ for @setPartOfSpeech:@
setPartOfSpeechSelector :: Selector '[NSGrammaticalPartOfSpeech] ()
setPartOfSpeechSelector = mkSelector "setPartOfSpeech:"

-- | @Selector@ for @number@
numberSelector :: Selector '[] NSGrammaticalNumber
numberSelector = mkSelector "number"

-- | @Selector@ for @setNumber:@
setNumberSelector :: Selector '[NSGrammaticalNumber] ()
setNumberSelector = mkSelector "setNumber:"

-- | @Selector@ for @unspecified@
unspecifiedSelector :: Selector '[] Bool
unspecifiedSelector = mkSelector "unspecified"

-- | @Selector@ for @userMorphology@
userMorphologySelector :: Selector '[] (Id NSMorphology)
userMorphologySelector = mkSelector "userMorphology"

