{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | CIBarcodeDescriptor
--
-- CIBarcodeDescriptor is an abstract base class that defines an abstract representation of a machine readable code's symbol attributes.
--
-- Each subclass is sufficient to recreate the symbol exactly as seen or to be used with a custom parser. Subclasses of CIBarcodeDescriptor are defined for each code type to contain the formal specification of each symbology.
--
-- Generated bindings for @CIBarcodeDescriptor@.
module ObjC.CoreImage.CIBarcodeDescriptor
  ( CIBarcodeDescriptor
  , IsCIBarcodeDescriptor(..)


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.CoreImage.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

