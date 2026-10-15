{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | An abstract base class for storing signatures
--
-- You should not create instances of this class directly, instead use subclasses to provide the functionality that you need
--
-- Generated bindings for @SHCatalog@.
module ObjC.ShazamKit.SHCatalog
  ( SHCatalog
  , IsSHCatalog(..)
  , new
  , init_
  , minimumQuerySignatureDuration
  , maximumQuerySignatureDuration
  , initSelector
  , maximumQuerySignatureDurationSelector
  , minimumQuerySignatureDurationSelector
  , newSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.ShazamKit.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @+ new@
new :: IO (Id SHCatalog)
new  =
  do
    cls' <- getRequiredClass "SHCatalog"
    sendOwnedClassMessage cls' newSelector

-- | @- init@
init_ :: IsSHCatalog shCatalog => shCatalog -> IO (Id SHCatalog)
init_ shCatalog =
  sendOwnedMessage shCatalog initSelector

-- | The minimum @SHSignature@ duration that can be used to perform searches against this Catalog
--
-- A @SHSignature@ that contains less than the minimum duration in seconds will be discarded without matching.
--
-- Note: A @SHSignature@ under this duration does not have enough entropy to provide accurate matches.
--
-- ObjC selector: @- minimumQuerySignatureDuration@
minimumQuerySignatureDuration :: IsSHCatalog shCatalog => shCatalog -> IO CDouble
minimumQuerySignatureDuration shCatalog =
  sendMessage shCatalog minimumQuerySignatureDurationSelector

-- | The maximum @SHSignature@ duration that can be used to perform searches against this Catalog
--
-- A @SHSignature@ over this duration will be rejected without matching. A well scoped @SHSignature@ is more likely to provide accurate matches.
--
-- ObjC selector: @- maximumQuerySignatureDuration@
maximumQuerySignatureDuration :: IsSHCatalog shCatalog => shCatalog -> IO CDouble
maximumQuerySignatureDuration shCatalog =
  sendMessage shCatalog maximumQuerySignatureDurationSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id SHCatalog)
newSelector = mkSelector "new"

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id SHCatalog)
initSelector = mkSelector "init"

-- | @Selector@ for @minimumQuerySignatureDuration@
minimumQuerySignatureDurationSelector :: Selector '[] CDouble
minimumQuerySignatureDurationSelector = mkSelector "minimumQuerySignatureDuration"

-- | @Selector@ for @maximumQuerySignatureDuration@
maximumQuerySignatureDurationSelector :: Selector '[] CDouble
maximumQuerySignatureDurationSelector = mkSelector "maximumQuerySignatureDuration"

