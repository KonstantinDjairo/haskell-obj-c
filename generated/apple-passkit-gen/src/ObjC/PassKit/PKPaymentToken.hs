{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @PKPaymentToken@.
module ObjC.PassKit.PKPaymentToken
  ( PKPaymentToken
  , IsPKPaymentToken(..)
  , paymentMethod
  , paymentInstrumentName
  , paymentNetwork
  , transactionIdentifier
  , paymentData
  , paymentDataSelector
  , paymentInstrumentNameSelector
  , paymentMethodSelector
  , paymentNetworkSelector
  , transactionIdentifierSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.PassKit.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- paymentMethod@
paymentMethod :: IsPKPaymentToken pkPaymentToken => pkPaymentToken -> IO (Id PKPaymentMethod)
paymentMethod pkPaymentToken =
  sendMessage pkPaymentToken paymentMethodSelector

-- | @- paymentInstrumentName@
paymentInstrumentName :: IsPKPaymentToken pkPaymentToken => pkPaymentToken -> IO RawId
paymentInstrumentName pkPaymentToken =
  sendMessage pkPaymentToken paymentInstrumentNameSelector

-- | @- paymentNetwork@
paymentNetwork :: IsPKPaymentToken pkPaymentToken => pkPaymentToken -> IO RawId
paymentNetwork pkPaymentToken =
  sendMessage pkPaymentToken paymentNetworkSelector

-- | @- transactionIdentifier@
transactionIdentifier :: IsPKPaymentToken pkPaymentToken => pkPaymentToken -> IO (Id NSString)
transactionIdentifier pkPaymentToken =
  sendMessage pkPaymentToken transactionIdentifierSelector

-- | @- paymentData@
paymentData :: IsPKPaymentToken pkPaymentToken => pkPaymentToken -> IO (Id NSData)
paymentData pkPaymentToken =
  sendMessage pkPaymentToken paymentDataSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @paymentMethod@
paymentMethodSelector :: Selector '[] (Id PKPaymentMethod)
paymentMethodSelector = mkSelector "paymentMethod"

-- | @Selector@ for @paymentInstrumentName@
paymentInstrumentNameSelector :: Selector '[] RawId
paymentInstrumentNameSelector = mkSelector "paymentInstrumentName"

-- | @Selector@ for @paymentNetwork@
paymentNetworkSelector :: Selector '[] RawId
paymentNetworkSelector = mkSelector "paymentNetwork"

-- | @Selector@ for @transactionIdentifier@
transactionIdentifierSelector :: Selector '[] (Id NSString)
transactionIdentifierSelector = mkSelector "transactionIdentifier"

-- | @Selector@ for @paymentData@
paymentDataSelector :: Selector '[] (Id NSData)
paymentDataSelector = mkSelector "paymentData"

