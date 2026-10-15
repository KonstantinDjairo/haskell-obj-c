{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @PKDisbursementRequest@.
module ObjC.PassKit.PKDisbursementRequest
  ( PKDisbursementRequest
  , IsPKDisbursementRequest(..)
  , amount
  , setAmount
  , currencyCode
  , setCurrencyCode
  , countryCode
  , setCountryCode
  , requestSchedule
  , setRequestSchedule
  , amountSelector
  , countryCodeSelector
  , currencyCodeSelector
  , requestScheduleSelector
  , setAmountSelector
  , setCountryCodeSelector
  , setCurrencyCodeSelector
  , setRequestScheduleSelector

  -- * Enum types
  , PKDisbursementRequestSchedule(PKDisbursementRequestSchedule)
  , pattern PKDisbursementRequestScheduleOneTime
  , pattern PKDisbursementRequestScheduleFuture

  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.PassKit.Internal.Classes
import ObjC.PassKit.Internal.Enums
import ObjC.Foundation.Internal.Classes

-- | @- amount@
amount :: IsPKDisbursementRequest pkDisbursementRequest => pkDisbursementRequest -> IO RawId
amount pkDisbursementRequest =
  sendMessage pkDisbursementRequest amountSelector

-- | @- setAmount:@
setAmount :: IsPKDisbursementRequest pkDisbursementRequest => pkDisbursementRequest -> RawId -> IO ()
setAmount pkDisbursementRequest value =
  sendMessage pkDisbursementRequest setAmountSelector value

-- | @- currencyCode@
currencyCode :: IsPKDisbursementRequest pkDisbursementRequest => pkDisbursementRequest -> IO RawId
currencyCode pkDisbursementRequest =
  sendMessage pkDisbursementRequest currencyCodeSelector

-- | @- setCurrencyCode:@
setCurrencyCode :: IsPKDisbursementRequest pkDisbursementRequest => pkDisbursementRequest -> RawId -> IO ()
setCurrencyCode pkDisbursementRequest value =
  sendMessage pkDisbursementRequest setCurrencyCodeSelector value

-- | @- countryCode@
countryCode :: IsPKDisbursementRequest pkDisbursementRequest => pkDisbursementRequest -> IO RawId
countryCode pkDisbursementRequest =
  sendMessage pkDisbursementRequest countryCodeSelector

-- | @- setCountryCode:@
setCountryCode :: IsPKDisbursementRequest pkDisbursementRequest => pkDisbursementRequest -> RawId -> IO ()
setCountryCode pkDisbursementRequest value =
  sendMessage pkDisbursementRequest setCountryCodeSelector value

-- | @- requestSchedule@
requestSchedule :: IsPKDisbursementRequest pkDisbursementRequest => pkDisbursementRequest -> IO PKDisbursementRequestSchedule
requestSchedule pkDisbursementRequest =
  sendMessage pkDisbursementRequest requestScheduleSelector

-- | @- setRequestSchedule:@
setRequestSchedule :: IsPKDisbursementRequest pkDisbursementRequest => pkDisbursementRequest -> PKDisbursementRequestSchedule -> IO ()
setRequestSchedule pkDisbursementRequest value =
  sendMessage pkDisbursementRequest setRequestScheduleSelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @amount@
amountSelector :: Selector '[] RawId
amountSelector = mkSelector "amount"

-- | @Selector@ for @setAmount:@
setAmountSelector :: Selector '[RawId] ()
setAmountSelector = mkSelector "setAmount:"

-- | @Selector@ for @currencyCode@
currencyCodeSelector :: Selector '[] RawId
currencyCodeSelector = mkSelector "currencyCode"

-- | @Selector@ for @setCurrencyCode:@
setCurrencyCodeSelector :: Selector '[RawId] ()
setCurrencyCodeSelector = mkSelector "setCurrencyCode:"

-- | @Selector@ for @countryCode@
countryCodeSelector :: Selector '[] RawId
countryCodeSelector = mkSelector "countryCode"

-- | @Selector@ for @setCountryCode:@
setCountryCodeSelector :: Selector '[RawId] ()
setCountryCodeSelector = mkSelector "setCountryCode:"

-- | @Selector@ for @requestSchedule@
requestScheduleSelector :: Selector '[] PKDisbursementRequestSchedule
requestScheduleSelector = mkSelector "requestSchedule"

-- | @Selector@ for @setRequestSchedule:@
setRequestScheduleSelector :: Selector '[PKDisbursementRequestSchedule] ()
setRequestScheduleSelector = mkSelector "setRequestSchedule:"

