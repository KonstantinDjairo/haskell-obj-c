{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Summary of exposure info for a single day.
--
-- Generated bindings for @ENExposureDaySummary@.
module ObjC.ExposureNotification.ENExposureDaySummary
  ( ENExposureDaySummary
  , IsENExposureDaySummary(..)
  , date
  , confirmedTestSummary
  , confirmedClinicalDiagnosisSummary
  , recursiveSummary
  , selfReportedSummary
  , daySummary
  , confirmedClinicalDiagnosisSummarySelector
  , confirmedTestSummarySelector
  , dateSelector
  , daySummarySelector
  , recursiveSummarySelector
  , selfReportedSummarySelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.ExposureNotification.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | Day the exposure occurred.
--
-- ObjC selector: @- date@
date :: IsENExposureDaySummary enExposureDaySummary => enExposureDaySummary -> IO (Id NSDate)
date enExposureDaySummary =
  sendMessage enExposureDaySummary dateSelector

-- | Summary of all exposures on this day of a specific diagnosis report type.
--
-- ObjC selector: @- confirmedTestSummary@
confirmedTestSummary :: IsENExposureDaySummary enExposureDaySummary => enExposureDaySummary -> IO (Id ENExposureSummaryItem)
confirmedTestSummary enExposureDaySummary =
  sendMessage enExposureDaySummary confirmedTestSummarySelector

-- | @- confirmedClinicalDiagnosisSummary@
confirmedClinicalDiagnosisSummary :: IsENExposureDaySummary enExposureDaySummary => enExposureDaySummary -> IO (Id ENExposureSummaryItem)
confirmedClinicalDiagnosisSummary enExposureDaySummary =
  sendMessage enExposureDaySummary confirmedClinicalDiagnosisSummarySelector

-- | @- recursiveSummary@
recursiveSummary :: IsENExposureDaySummary enExposureDaySummary => enExposureDaySummary -> IO (Id ENExposureSummaryItem)
recursiveSummary enExposureDaySummary =
  sendMessage enExposureDaySummary recursiveSummarySelector

-- | @- selfReportedSummary@
selfReportedSummary :: IsENExposureDaySummary enExposureDaySummary => enExposureDaySummary -> IO (Id ENExposureSummaryItem)
selfReportedSummary enExposureDaySummary =
  sendMessage enExposureDaySummary selfReportedSummarySelector

-- | Summary of all exposures on this day.
--
-- ObjC selector: @- daySummary@
daySummary :: IsENExposureDaySummary enExposureDaySummary => enExposureDaySummary -> IO (Id ENExposureSummaryItem)
daySummary enExposureDaySummary =
  sendMessage enExposureDaySummary daySummarySelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @date@
dateSelector :: Selector '[] (Id NSDate)
dateSelector = mkSelector "date"

-- | @Selector@ for @confirmedTestSummary@
confirmedTestSummarySelector :: Selector '[] (Id ENExposureSummaryItem)
confirmedTestSummarySelector = mkSelector "confirmedTestSummary"

-- | @Selector@ for @confirmedClinicalDiagnosisSummary@
confirmedClinicalDiagnosisSummarySelector :: Selector '[] (Id ENExposureSummaryItem)
confirmedClinicalDiagnosisSummarySelector = mkSelector "confirmedClinicalDiagnosisSummary"

-- | @Selector@ for @recursiveSummary@
recursiveSummarySelector :: Selector '[] (Id ENExposureSummaryItem)
recursiveSummarySelector = mkSelector "recursiveSummary"

-- | @Selector@ for @selfReportedSummary@
selfReportedSummarySelector :: Selector '[] (Id ENExposureSummaryItem)
selfReportedSummarySelector = mkSelector "selfReportedSummary"

-- | @Selector@ for @daySummary@
daySummarySelector :: Selector '[] (Id ENExposureSummaryItem)
daySummarySelector = mkSelector "daySummary"

