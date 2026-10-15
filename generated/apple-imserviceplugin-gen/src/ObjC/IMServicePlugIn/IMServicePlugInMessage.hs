{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @IMServicePlugInMessage@.
module ObjC.IMServicePlugIn.IMServicePlugInMessage
  ( IMServicePlugInMessage
  , IsIMServicePlugInMessage(..)
  , servicePlugInMessageWithContent
  , initWithContent
  , servicePlugInMessageWithContent_date
  , initWithContent_date
  , guid
  , content
  , setContent
  , date
  , setDate
  , contentSelector
  , dateSelector
  , guidSelector
  , initWithContentSelector
  , initWithContent_dateSelector
  , servicePlugInMessageWithContentSelector
  , servicePlugInMessageWithContent_dateSelector
  , setContentSelector
  , setDateSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.IMServicePlugIn.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @+ servicePlugInMessageWithContent:@
servicePlugInMessageWithContent :: IsNSAttributedString content => content -> IO RawId
servicePlugInMessageWithContent content =
  do
    cls' <- getRequiredClass "IMServicePlugInMessage"
    sendClassMessage cls' servicePlugInMessageWithContentSelector (toNSAttributedString content)

-- | @- initWithContent:@
initWithContent :: (IsIMServicePlugInMessage imServicePlugInMessage, IsNSAttributedString content) => imServicePlugInMessage -> content -> IO RawId
initWithContent imServicePlugInMessage content =
  sendOwnedMessage imServicePlugInMessage initWithContentSelector (toNSAttributedString content)

-- | @+ servicePlugInMessageWithContent:date:@
servicePlugInMessageWithContent_date :: (IsNSAttributedString content, IsNSDate date) => content -> date -> IO RawId
servicePlugInMessageWithContent_date content date =
  do
    cls' <- getRequiredClass "IMServicePlugInMessage"
    sendClassMessage cls' servicePlugInMessageWithContent_dateSelector (toNSAttributedString content) (toNSDate date)

-- | @- initWithContent:date:@
initWithContent_date :: (IsIMServicePlugInMessage imServicePlugInMessage, IsNSAttributedString content, IsNSDate date) => imServicePlugInMessage -> content -> date -> IO RawId
initWithContent_date imServicePlugInMessage content date =
  sendOwnedMessage imServicePlugInMessage initWithContent_dateSelector (toNSAttributedString content) (toNSDate date)

-- | @- guid@
guid :: IsIMServicePlugInMessage imServicePlugInMessage => imServicePlugInMessage -> IO (Id NSString)
guid imServicePlugInMessage =
  sendMessage imServicePlugInMessage guidSelector

-- | @- content@
content :: IsIMServicePlugInMessage imServicePlugInMessage => imServicePlugInMessage -> IO (Id NSAttributedString)
content imServicePlugInMessage =
  sendMessage imServicePlugInMessage contentSelector

-- | @- setContent:@
setContent :: (IsIMServicePlugInMessage imServicePlugInMessage, IsNSAttributedString value) => imServicePlugInMessage -> value -> IO ()
setContent imServicePlugInMessage value =
  sendMessage imServicePlugInMessage setContentSelector (toNSAttributedString value)

-- | @- date@
date :: IsIMServicePlugInMessage imServicePlugInMessage => imServicePlugInMessage -> IO (Id NSDate)
date imServicePlugInMessage =
  sendMessage imServicePlugInMessage dateSelector

-- | @- setDate:@
setDate :: (IsIMServicePlugInMessage imServicePlugInMessage, IsNSDate value) => imServicePlugInMessage -> value -> IO ()
setDate imServicePlugInMessage value =
  sendMessage imServicePlugInMessage setDateSelector (toNSDate value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @servicePlugInMessageWithContent:@
servicePlugInMessageWithContentSelector :: Selector '[Id NSAttributedString] RawId
servicePlugInMessageWithContentSelector = mkSelector "servicePlugInMessageWithContent:"

-- | @Selector@ for @initWithContent:@
initWithContentSelector :: Selector '[Id NSAttributedString] RawId
initWithContentSelector = mkSelector "initWithContent:"

-- | @Selector@ for @servicePlugInMessageWithContent:date:@
servicePlugInMessageWithContent_dateSelector :: Selector '[Id NSAttributedString, Id NSDate] RawId
servicePlugInMessageWithContent_dateSelector = mkSelector "servicePlugInMessageWithContent:date:"

-- | @Selector@ for @initWithContent:date:@
initWithContent_dateSelector :: Selector '[Id NSAttributedString, Id NSDate] RawId
initWithContent_dateSelector = mkSelector "initWithContent:date:"

-- | @Selector@ for @guid@
guidSelector :: Selector '[] (Id NSString)
guidSelector = mkSelector "guid"

-- | @Selector@ for @content@
contentSelector :: Selector '[] (Id NSAttributedString)
contentSelector = mkSelector "content"

-- | @Selector@ for @setContent:@
setContentSelector :: Selector '[Id NSAttributedString] ()
setContentSelector = mkSelector "setContent:"

-- | @Selector@ for @date@
dateSelector :: Selector '[] (Id NSDate)
dateSelector = mkSelector "date"

-- | @Selector@ for @setDate:@
setDateSelector :: Selector '[Id NSDate] ()
setDateSelector = mkSelector "setDate:"

