{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @AEAssessmentConfiguration@.
module ObjC.AutomaticAssessmentConfiguration.AEAssessmentConfiguration
  ( AEAssessmentConfiguration
  , IsAEAssessmentConfiguration(..)
  , setConfiguration_forApplication
  , removeApplication
  , autocorrectMode
  , setAutocorrectMode
  , allowsSpellCheck
  , setAllowsSpellCheck
  , allowsPredictiveKeyboard
  , setAllowsPredictiveKeyboard
  , allowsKeyboardShortcuts
  , setAllowsKeyboardShortcuts
  , allowsActivityContinuation
  , setAllowsActivityContinuation
  , allowsDictation
  , setAllowsDictation
  , allowsAccessibilitySpeech
  , setAllowsAccessibilitySpeech
  , allowsPasswordAutoFill
  , setAllowsPasswordAutoFill
  , allowsContinuousPathKeyboard
  , setAllowsContinuousPathKeyboard
  , mainParticipantConfiguration
  , configurationsByApplication
  , allowsAccessibilitySpeechSelector
  , allowsActivityContinuationSelector
  , allowsContinuousPathKeyboardSelector
  , allowsDictationSelector
  , allowsKeyboardShortcutsSelector
  , allowsPasswordAutoFillSelector
  , allowsPredictiveKeyboardSelector
  , allowsSpellCheckSelector
  , autocorrectModeSelector
  , configurationsByApplicationSelector
  , mainParticipantConfigurationSelector
  , removeApplicationSelector
  , setAllowsAccessibilitySpeechSelector
  , setAllowsActivityContinuationSelector
  , setAllowsContinuousPathKeyboardSelector
  , setAllowsDictationSelector
  , setAllowsKeyboardShortcutsSelector
  , setAllowsPasswordAutoFillSelector
  , setAllowsPredictiveKeyboardSelector
  , setAllowsSpellCheckSelector
  , setAutocorrectModeSelector
  , setConfiguration_forApplicationSelector

  -- * Enum types
  , AEAutocorrectMode(AEAutocorrectMode)
  , pattern AEAutocorrectModeNone
  , pattern AEAutocorrectModeSpelling
  , pattern AEAutocorrectModePunctuation

  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AutomaticAssessmentConfiguration.Internal.Classes
import ObjC.AutomaticAssessmentConfiguration.Internal.Enums
import ObjC.Foundation.Internal.Classes

-- | @- setConfiguration:forApplication:@
setConfiguration_forApplication :: (IsAEAssessmentConfiguration aeAssessmentConfiguration, IsAEAssessmentParticipantConfiguration configuration, IsAEAssessmentApplication application) => aeAssessmentConfiguration -> configuration -> application -> IO ()
setConfiguration_forApplication aeAssessmentConfiguration configuration application =
  sendMessage aeAssessmentConfiguration setConfiguration_forApplicationSelector (toAEAssessmentParticipantConfiguration configuration) (toAEAssessmentApplication application)

-- | @- removeApplication:@
removeApplication :: (IsAEAssessmentConfiguration aeAssessmentConfiguration, IsAEAssessmentApplication application) => aeAssessmentConfiguration -> application -> IO ()
removeApplication aeAssessmentConfiguration application =
  sendMessage aeAssessmentConfiguration removeApplicationSelector (toAEAssessmentApplication application)

-- | @- autocorrectMode@
autocorrectMode :: IsAEAssessmentConfiguration aeAssessmentConfiguration => aeAssessmentConfiguration -> IO AEAutocorrectMode
autocorrectMode aeAssessmentConfiguration =
  sendMessage aeAssessmentConfiguration autocorrectModeSelector

-- | @- setAutocorrectMode:@
setAutocorrectMode :: IsAEAssessmentConfiguration aeAssessmentConfiguration => aeAssessmentConfiguration -> AEAutocorrectMode -> IO ()
setAutocorrectMode aeAssessmentConfiguration value =
  sendMessage aeAssessmentConfiguration setAutocorrectModeSelector value

-- | @- allowsSpellCheck@
allowsSpellCheck :: IsAEAssessmentConfiguration aeAssessmentConfiguration => aeAssessmentConfiguration -> IO Bool
allowsSpellCheck aeAssessmentConfiguration =
  sendMessage aeAssessmentConfiguration allowsSpellCheckSelector

-- | @- setAllowsSpellCheck:@
setAllowsSpellCheck :: IsAEAssessmentConfiguration aeAssessmentConfiguration => aeAssessmentConfiguration -> Bool -> IO ()
setAllowsSpellCheck aeAssessmentConfiguration value =
  sendMessage aeAssessmentConfiguration setAllowsSpellCheckSelector value

-- | @- allowsPredictiveKeyboard@
allowsPredictiveKeyboard :: IsAEAssessmentConfiguration aeAssessmentConfiguration => aeAssessmentConfiguration -> IO Bool
allowsPredictiveKeyboard aeAssessmentConfiguration =
  sendMessage aeAssessmentConfiguration allowsPredictiveKeyboardSelector

-- | @- setAllowsPredictiveKeyboard:@
setAllowsPredictiveKeyboard :: IsAEAssessmentConfiguration aeAssessmentConfiguration => aeAssessmentConfiguration -> Bool -> IO ()
setAllowsPredictiveKeyboard aeAssessmentConfiguration value =
  sendMessage aeAssessmentConfiguration setAllowsPredictiveKeyboardSelector value

-- | @- allowsKeyboardShortcuts@
allowsKeyboardShortcuts :: IsAEAssessmentConfiguration aeAssessmentConfiguration => aeAssessmentConfiguration -> IO Bool
allowsKeyboardShortcuts aeAssessmentConfiguration =
  sendMessage aeAssessmentConfiguration allowsKeyboardShortcutsSelector

-- | @- setAllowsKeyboardShortcuts:@
setAllowsKeyboardShortcuts :: IsAEAssessmentConfiguration aeAssessmentConfiguration => aeAssessmentConfiguration -> Bool -> IO ()
setAllowsKeyboardShortcuts aeAssessmentConfiguration value =
  sendMessage aeAssessmentConfiguration setAllowsKeyboardShortcutsSelector value

-- | @- allowsActivityContinuation@
allowsActivityContinuation :: IsAEAssessmentConfiguration aeAssessmentConfiguration => aeAssessmentConfiguration -> IO Bool
allowsActivityContinuation aeAssessmentConfiguration =
  sendMessage aeAssessmentConfiguration allowsActivityContinuationSelector

-- | @- setAllowsActivityContinuation:@
setAllowsActivityContinuation :: IsAEAssessmentConfiguration aeAssessmentConfiguration => aeAssessmentConfiguration -> Bool -> IO ()
setAllowsActivityContinuation aeAssessmentConfiguration value =
  sendMessage aeAssessmentConfiguration setAllowsActivityContinuationSelector value

-- | @- allowsDictation@
allowsDictation :: IsAEAssessmentConfiguration aeAssessmentConfiguration => aeAssessmentConfiguration -> IO Bool
allowsDictation aeAssessmentConfiguration =
  sendMessage aeAssessmentConfiguration allowsDictationSelector

-- | @- setAllowsDictation:@
setAllowsDictation :: IsAEAssessmentConfiguration aeAssessmentConfiguration => aeAssessmentConfiguration -> Bool -> IO ()
setAllowsDictation aeAssessmentConfiguration value =
  sendMessage aeAssessmentConfiguration setAllowsDictationSelector value

-- | @- allowsAccessibilitySpeech@
allowsAccessibilitySpeech :: IsAEAssessmentConfiguration aeAssessmentConfiguration => aeAssessmentConfiguration -> IO Bool
allowsAccessibilitySpeech aeAssessmentConfiguration =
  sendMessage aeAssessmentConfiguration allowsAccessibilitySpeechSelector

-- | @- setAllowsAccessibilitySpeech:@
setAllowsAccessibilitySpeech :: IsAEAssessmentConfiguration aeAssessmentConfiguration => aeAssessmentConfiguration -> Bool -> IO ()
setAllowsAccessibilitySpeech aeAssessmentConfiguration value =
  sendMessage aeAssessmentConfiguration setAllowsAccessibilitySpeechSelector value

-- | @- allowsPasswordAutoFill@
allowsPasswordAutoFill :: IsAEAssessmentConfiguration aeAssessmentConfiguration => aeAssessmentConfiguration -> IO Bool
allowsPasswordAutoFill aeAssessmentConfiguration =
  sendMessage aeAssessmentConfiguration allowsPasswordAutoFillSelector

-- | @- setAllowsPasswordAutoFill:@
setAllowsPasswordAutoFill :: IsAEAssessmentConfiguration aeAssessmentConfiguration => aeAssessmentConfiguration -> Bool -> IO ()
setAllowsPasswordAutoFill aeAssessmentConfiguration value =
  sendMessage aeAssessmentConfiguration setAllowsPasswordAutoFillSelector value

-- | @- allowsContinuousPathKeyboard@
allowsContinuousPathKeyboard :: IsAEAssessmentConfiguration aeAssessmentConfiguration => aeAssessmentConfiguration -> IO Bool
allowsContinuousPathKeyboard aeAssessmentConfiguration =
  sendMessage aeAssessmentConfiguration allowsContinuousPathKeyboardSelector

-- | @- setAllowsContinuousPathKeyboard:@
setAllowsContinuousPathKeyboard :: IsAEAssessmentConfiguration aeAssessmentConfiguration => aeAssessmentConfiguration -> Bool -> IO ()
setAllowsContinuousPathKeyboard aeAssessmentConfiguration value =
  sendMessage aeAssessmentConfiguration setAllowsContinuousPathKeyboardSelector value

-- | @- mainParticipantConfiguration@
mainParticipantConfiguration :: IsAEAssessmentConfiguration aeAssessmentConfiguration => aeAssessmentConfiguration -> IO (Id AEAssessmentParticipantConfiguration)
mainParticipantConfiguration aeAssessmentConfiguration =
  sendMessage aeAssessmentConfiguration mainParticipantConfigurationSelector

-- | @- configurationsByApplication@
configurationsByApplication :: IsAEAssessmentConfiguration aeAssessmentConfiguration => aeAssessmentConfiguration -> IO (Id NSDictionary)
configurationsByApplication aeAssessmentConfiguration =
  sendMessage aeAssessmentConfiguration configurationsByApplicationSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @setConfiguration:forApplication:@
setConfiguration_forApplicationSelector :: Selector '[Id AEAssessmentParticipantConfiguration, Id AEAssessmentApplication] ()
setConfiguration_forApplicationSelector = mkSelector "setConfiguration:forApplication:"

-- | @Selector@ for @removeApplication:@
removeApplicationSelector :: Selector '[Id AEAssessmentApplication] ()
removeApplicationSelector = mkSelector "removeApplication:"

-- | @Selector@ for @autocorrectMode@
autocorrectModeSelector :: Selector '[] AEAutocorrectMode
autocorrectModeSelector = mkSelector "autocorrectMode"

-- | @Selector@ for @setAutocorrectMode:@
setAutocorrectModeSelector :: Selector '[AEAutocorrectMode] ()
setAutocorrectModeSelector = mkSelector "setAutocorrectMode:"

-- | @Selector@ for @allowsSpellCheck@
allowsSpellCheckSelector :: Selector '[] Bool
allowsSpellCheckSelector = mkSelector "allowsSpellCheck"

-- | @Selector@ for @setAllowsSpellCheck:@
setAllowsSpellCheckSelector :: Selector '[Bool] ()
setAllowsSpellCheckSelector = mkSelector "setAllowsSpellCheck:"

-- | @Selector@ for @allowsPredictiveKeyboard@
allowsPredictiveKeyboardSelector :: Selector '[] Bool
allowsPredictiveKeyboardSelector = mkSelector "allowsPredictiveKeyboard"

-- | @Selector@ for @setAllowsPredictiveKeyboard:@
setAllowsPredictiveKeyboardSelector :: Selector '[Bool] ()
setAllowsPredictiveKeyboardSelector = mkSelector "setAllowsPredictiveKeyboard:"

-- | @Selector@ for @allowsKeyboardShortcuts@
allowsKeyboardShortcutsSelector :: Selector '[] Bool
allowsKeyboardShortcutsSelector = mkSelector "allowsKeyboardShortcuts"

-- | @Selector@ for @setAllowsKeyboardShortcuts:@
setAllowsKeyboardShortcutsSelector :: Selector '[Bool] ()
setAllowsKeyboardShortcutsSelector = mkSelector "setAllowsKeyboardShortcuts:"

-- | @Selector@ for @allowsActivityContinuation@
allowsActivityContinuationSelector :: Selector '[] Bool
allowsActivityContinuationSelector = mkSelector "allowsActivityContinuation"

-- | @Selector@ for @setAllowsActivityContinuation:@
setAllowsActivityContinuationSelector :: Selector '[Bool] ()
setAllowsActivityContinuationSelector = mkSelector "setAllowsActivityContinuation:"

-- | @Selector@ for @allowsDictation@
allowsDictationSelector :: Selector '[] Bool
allowsDictationSelector = mkSelector "allowsDictation"

-- | @Selector@ for @setAllowsDictation:@
setAllowsDictationSelector :: Selector '[Bool] ()
setAllowsDictationSelector = mkSelector "setAllowsDictation:"

-- | @Selector@ for @allowsAccessibilitySpeech@
allowsAccessibilitySpeechSelector :: Selector '[] Bool
allowsAccessibilitySpeechSelector = mkSelector "allowsAccessibilitySpeech"

-- | @Selector@ for @setAllowsAccessibilitySpeech:@
setAllowsAccessibilitySpeechSelector :: Selector '[Bool] ()
setAllowsAccessibilitySpeechSelector = mkSelector "setAllowsAccessibilitySpeech:"

-- | @Selector@ for @allowsPasswordAutoFill@
allowsPasswordAutoFillSelector :: Selector '[] Bool
allowsPasswordAutoFillSelector = mkSelector "allowsPasswordAutoFill"

-- | @Selector@ for @setAllowsPasswordAutoFill:@
setAllowsPasswordAutoFillSelector :: Selector '[Bool] ()
setAllowsPasswordAutoFillSelector = mkSelector "setAllowsPasswordAutoFill:"

-- | @Selector@ for @allowsContinuousPathKeyboard@
allowsContinuousPathKeyboardSelector :: Selector '[] Bool
allowsContinuousPathKeyboardSelector = mkSelector "allowsContinuousPathKeyboard"

-- | @Selector@ for @setAllowsContinuousPathKeyboard:@
setAllowsContinuousPathKeyboardSelector :: Selector '[Bool] ()
setAllowsContinuousPathKeyboardSelector = mkSelector "setAllowsContinuousPathKeyboard:"

-- | @Selector@ for @mainParticipantConfiguration@
mainParticipantConfigurationSelector :: Selector '[] (Id AEAssessmentParticipantConfiguration)
mainParticipantConfigurationSelector = mkSelector "mainParticipantConfiguration"

-- | @Selector@ for @configurationsByApplication@
configurationsByApplicationSelector :: Selector '[] (Id NSDictionary)
configurationsByApplicationSelector = mkSelector "configurationsByApplication"

