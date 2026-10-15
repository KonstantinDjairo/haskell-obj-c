{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @THClient@.
module ObjC.ThreadNetwork.THClient
  ( THClient
  , IsTHClient(..)
  , init_
  , deleteCredentialsForBorderAgent_completion
  , retrieveCredentialsForBorderAgent_completion
  , storeCredentialsForBorderAgent_activeOperationalDataSet_completion
  , retrievePreferredCredentials
  , retrieveCredentialsForExtendedPANID_completion
  , checkPreferredNetworkForActiveOperationalDataset_completion
  , checkPreferredNetworkForActiveOperationalDataset_completionSelector
  , deleteCredentialsForBorderAgent_completionSelector
  , initSelector
  , retrieveCredentialsForBorderAgent_completionSelector
  , retrieveCredentialsForExtendedPANID_completionSelector
  , retrievePreferredCredentialsSelector
  , storeCredentialsForBorderAgent_activeOperationalDataSet_completionSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.ThreadNetwork.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- init@
init_ :: IsTHClient thClient => thClient -> IO (Id THClient)
init_ thClient =
  sendOwnedMessage thClient initSelector

-- | @- deleteCredentialsForBorderAgent:completion:@
deleteCredentialsForBorderAgent_completion :: (IsTHClient thClient, IsNSData borderAgentID) => thClient -> borderAgentID -> Ptr () -> IO ()
deleteCredentialsForBorderAgent_completion thClient borderAgentID completion =
  sendMessage thClient deleteCredentialsForBorderAgent_completionSelector (toNSData borderAgentID) completion

-- | @- retrieveCredentialsForBorderAgent:completion:@
retrieveCredentialsForBorderAgent_completion :: (IsTHClient thClient, IsNSData borderAgentID) => thClient -> borderAgentID -> Ptr () -> IO ()
retrieveCredentialsForBorderAgent_completion thClient borderAgentID completion =
  sendMessage thClient retrieveCredentialsForBorderAgent_completionSelector (toNSData borderAgentID) completion

-- | @- storeCredentialsForBorderAgent:activeOperationalDataSet:completion:@
storeCredentialsForBorderAgent_activeOperationalDataSet_completion :: (IsTHClient thClient, IsNSData borderAgentID, IsNSData activeOperationalDataSet) => thClient -> borderAgentID -> activeOperationalDataSet -> Ptr () -> IO ()
storeCredentialsForBorderAgent_activeOperationalDataSet_completion thClient borderAgentID activeOperationalDataSet completion =
  sendMessage thClient storeCredentialsForBorderAgent_activeOperationalDataSet_completionSelector (toNSData borderAgentID) (toNSData activeOperationalDataSet) completion

-- | @- retrievePreferredCredentials:@
retrievePreferredCredentials :: IsTHClient thClient => thClient -> Ptr () -> IO ()
retrievePreferredCredentials thClient completion =
  sendMessage thClient retrievePreferredCredentialsSelector completion

-- | @- retrieveCredentialsForExtendedPANID:completion:@
retrieveCredentialsForExtendedPANID_completion :: (IsTHClient thClient, IsNSData extendedPANID) => thClient -> extendedPANID -> Ptr () -> IO ()
retrieveCredentialsForExtendedPANID_completion thClient extendedPANID completion =
  sendMessage thClient retrieveCredentialsForExtendedPANID_completionSelector (toNSData extendedPANID) completion

-- | @- checkPreferredNetworkForActiveOperationalDataset:completion:@
checkPreferredNetworkForActiveOperationalDataset_completion :: (IsTHClient thClient, IsNSData activeOperationalDataSet) => thClient -> activeOperationalDataSet -> Ptr () -> IO ()
checkPreferredNetworkForActiveOperationalDataset_completion thClient activeOperationalDataSet completion =
  sendMessage thClient checkPreferredNetworkForActiveOperationalDataset_completionSelector (toNSData activeOperationalDataSet) completion

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id THClient)
initSelector = mkSelector "init"

-- | @Selector@ for @deleteCredentialsForBorderAgent:completion:@
deleteCredentialsForBorderAgent_completionSelector :: Selector '[Id NSData, Ptr ()] ()
deleteCredentialsForBorderAgent_completionSelector = mkSelector "deleteCredentialsForBorderAgent:completion:"

-- | @Selector@ for @retrieveCredentialsForBorderAgent:completion:@
retrieveCredentialsForBorderAgent_completionSelector :: Selector '[Id NSData, Ptr ()] ()
retrieveCredentialsForBorderAgent_completionSelector = mkSelector "retrieveCredentialsForBorderAgent:completion:"

-- | @Selector@ for @storeCredentialsForBorderAgent:activeOperationalDataSet:completion:@
storeCredentialsForBorderAgent_activeOperationalDataSet_completionSelector :: Selector '[Id NSData, Id NSData, Ptr ()] ()
storeCredentialsForBorderAgent_activeOperationalDataSet_completionSelector = mkSelector "storeCredentialsForBorderAgent:activeOperationalDataSet:completion:"

-- | @Selector@ for @retrievePreferredCredentials:@
retrievePreferredCredentialsSelector :: Selector '[Ptr ()] ()
retrievePreferredCredentialsSelector = mkSelector "retrievePreferredCredentials:"

-- | @Selector@ for @retrieveCredentialsForExtendedPANID:completion:@
retrieveCredentialsForExtendedPANID_completionSelector :: Selector '[Id NSData, Ptr ()] ()
retrieveCredentialsForExtendedPANID_completionSelector = mkSelector "retrieveCredentialsForExtendedPANID:completion:"

-- | @Selector@ for @checkPreferredNetworkForActiveOperationalDataset:completion:@
checkPreferredNetworkForActiveOperationalDataset_completionSelector :: Selector '[Id NSData, Ptr ()] ()
checkPreferredNetworkForActiveOperationalDataset_completionSelector = mkSelector "checkPreferredNetworkForActiveOperationalDataset:completion:"

