{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @AEAssessmentParticipantConfiguration@.
module ObjC.AutomaticAssessmentConfiguration.AEAssessmentParticipantConfiguration
  ( AEAssessmentParticipantConfiguration
  , IsAEAssessmentParticipantConfiguration(..)
  , init_
  , new
  , allowsNetworkAccess
  , setAllowsNetworkAccess
  , allowsNetworkAccessSelector
  , initSelector
  , newSelector
  , setAllowsNetworkAccessSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AutomaticAssessmentConfiguration.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- init@
init_ :: IsAEAssessmentParticipantConfiguration aeAssessmentParticipantConfiguration => aeAssessmentParticipantConfiguration -> IO (Id AEAssessmentParticipantConfiguration)
init_ aeAssessmentParticipantConfiguration =
  sendOwnedMessage aeAssessmentParticipantConfiguration initSelector

-- | @+ new@
new :: IO (Id AEAssessmentParticipantConfiguration)
new  =
  do
    cls' <- getRequiredClass "AEAssessmentParticipantConfiguration"
    sendOwnedClassMessage cls' newSelector

-- | @- allowsNetworkAccess@
allowsNetworkAccess :: IsAEAssessmentParticipantConfiguration aeAssessmentParticipantConfiguration => aeAssessmentParticipantConfiguration -> IO Bool
allowsNetworkAccess aeAssessmentParticipantConfiguration =
  sendMessage aeAssessmentParticipantConfiguration allowsNetworkAccessSelector

-- | @- setAllowsNetworkAccess:@
setAllowsNetworkAccess :: IsAEAssessmentParticipantConfiguration aeAssessmentParticipantConfiguration => aeAssessmentParticipantConfiguration -> Bool -> IO ()
setAllowsNetworkAccess aeAssessmentParticipantConfiguration value =
  sendMessage aeAssessmentParticipantConfiguration setAllowsNetworkAccessSelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id AEAssessmentParticipantConfiguration)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id AEAssessmentParticipantConfiguration)
newSelector = mkSelector "new"

-- | @Selector@ for @allowsNetworkAccess@
allowsNetworkAccessSelector :: Selector '[] Bool
allowsNetworkAccessSelector = mkSelector "allowsNetworkAccess"

-- | @Selector@ for @setAllowsNetworkAccess:@
setAllowsNetworkAccessSelector :: Selector '[Bool] ()
setAllowsNetworkAccessSelector = mkSelector "setAllowsNetworkAccess:"

