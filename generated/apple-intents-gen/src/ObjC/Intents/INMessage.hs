{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @INMessage@.
module ObjC.Intents.INMessage
  ( INMessage
  , IsINMessage(..)
  , init_
  , initWithIdentifier_conversationIdentifier_content_dateSent_sender_recipients_groupName_messageType_serviceName_audioMessageFile
  , initWithIdentifier_conversationIdentifier_content_dateSent_sender_recipients_groupName_messageType_serviceName
  , initWithIdentifier_conversationIdentifier_content_dateSent_sender_recipients_groupName_messageType
  , initWithIdentifier_conversationIdentifier_content_dateSent_sender_recipients_messageType
  , initWithIdentifier_content_dateSent_sender_recipients
  , identifier
  , conversationIdentifier
  , content
  , dateSent
  , sender
  , recipients
  , groupName
  , messageType
  , serviceName
  , audioMessageFile
  , audioMessageFileSelector
  , contentSelector
  , conversationIdentifierSelector
  , dateSentSelector
  , groupNameSelector
  , identifierSelector
  , initSelector
  , initWithIdentifier_content_dateSent_sender_recipientsSelector
  , initWithIdentifier_conversationIdentifier_content_dateSent_sender_recipients_groupName_messageTypeSelector
  , initWithIdentifier_conversationIdentifier_content_dateSent_sender_recipients_groupName_messageType_serviceNameSelector
  , initWithIdentifier_conversationIdentifier_content_dateSent_sender_recipients_groupName_messageType_serviceName_audioMessageFileSelector
  , initWithIdentifier_conversationIdentifier_content_dateSent_sender_recipients_messageTypeSelector
  , messageTypeSelector
  , recipientsSelector
  , senderSelector
  , serviceNameSelector

  -- * Enum types
  , INMessageType(INMessageType)
  , pattern INMessageTypeUnspecified
  , pattern INMessageTypeText
  , pattern INMessageTypeAudio
  , pattern INMessageTypeDigitalTouch
  , pattern INMessageTypeHandwriting
  , pattern INMessageTypeSticker
  , pattern INMessageTypeTapbackLiked
  , pattern INMessageTypeTapbackDisliked
  , pattern INMessageTypeTapbackEmphasized
  , pattern INMessageTypeTapbackLoved
  , pattern INMessageTypeTapbackQuestioned
  , pattern INMessageTypeTapbackLaughed
  , pattern INMessageTypeMediaCalendar
  , pattern INMessageTypeMediaLocation
  , pattern INMessageTypeMediaAddressCard
  , pattern INMessageTypeMediaImage
  , pattern INMessageTypeMediaVideo
  , pattern INMessageTypeMediaPass
  , pattern INMessageTypeMediaAudio
  , pattern INMessageTypePaymentSent
  , pattern INMessageTypePaymentRequest
  , pattern INMessageTypePaymentNote
  , pattern INMessageTypeAnimoji
  , pattern INMessageTypeActivitySnippet
  , pattern INMessageTypeFile
  , pattern INMessageTypeLink

  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.Intents.Internal.Classes
import ObjC.Intents.Internal.Enums
import ObjC.Foundation.Internal.Classes

-- | @- init@
init_ :: IsINMessage inMessage => inMessage -> IO RawId
init_ inMessage =
  sendOwnedMessage inMessage initSelector

-- | @- initWithIdentifier:conversationIdentifier:content:dateSent:sender:recipients:groupName:messageType:serviceName:audioMessageFile:@
initWithIdentifier_conversationIdentifier_content_dateSent_sender_recipients_groupName_messageType_serviceName_audioMessageFile :: (IsINMessage inMessage, IsNSString identifier, IsNSString conversationIdentifier, IsNSString content, IsNSDate dateSent, IsINPerson sender, IsNSArray recipients, IsINSpeakableString groupName, IsNSString serviceName, IsINFile audioMessageFile) => inMessage -> identifier -> conversationIdentifier -> content -> dateSent -> sender -> recipients -> groupName -> INMessageType -> serviceName -> audioMessageFile -> IO (Id INMessage)
initWithIdentifier_conversationIdentifier_content_dateSent_sender_recipients_groupName_messageType_serviceName_audioMessageFile inMessage identifier conversationIdentifier content dateSent sender recipients groupName messageType serviceName audioMessageFile =
  sendOwnedMessage inMessage initWithIdentifier_conversationIdentifier_content_dateSent_sender_recipients_groupName_messageType_serviceName_audioMessageFileSelector (toNSString identifier) (toNSString conversationIdentifier) (toNSString content) (toNSDate dateSent) (toINPerson sender) (toNSArray recipients) (toINSpeakableString groupName) messageType (toNSString serviceName) (toINFile audioMessageFile)

-- | @- initWithIdentifier:conversationIdentifier:content:dateSent:sender:recipients:groupName:messageType:serviceName:@
initWithIdentifier_conversationIdentifier_content_dateSent_sender_recipients_groupName_messageType_serviceName :: (IsINMessage inMessage, IsNSString identifier, IsNSString conversationIdentifier, IsNSString content, IsNSDate dateSent, IsINPerson sender, IsNSArray recipients, IsINSpeakableString groupName, IsNSString serviceName) => inMessage -> identifier -> conversationIdentifier -> content -> dateSent -> sender -> recipients -> groupName -> INMessageType -> serviceName -> IO (Id INMessage)
initWithIdentifier_conversationIdentifier_content_dateSent_sender_recipients_groupName_messageType_serviceName inMessage identifier conversationIdentifier content dateSent sender recipients groupName messageType serviceName =
  sendOwnedMessage inMessage initWithIdentifier_conversationIdentifier_content_dateSent_sender_recipients_groupName_messageType_serviceNameSelector (toNSString identifier) (toNSString conversationIdentifier) (toNSString content) (toNSDate dateSent) (toINPerson sender) (toNSArray recipients) (toINSpeakableString groupName) messageType (toNSString serviceName)

-- | @- initWithIdentifier:conversationIdentifier:content:dateSent:sender:recipients:groupName:messageType:@
initWithIdentifier_conversationIdentifier_content_dateSent_sender_recipients_groupName_messageType :: (IsINMessage inMessage, IsNSString identifier, IsNSString conversationIdentifier, IsNSString content, IsNSDate dateSent, IsINPerson sender, IsNSArray recipients, IsINSpeakableString groupName) => inMessage -> identifier -> conversationIdentifier -> content -> dateSent -> sender -> recipients -> groupName -> INMessageType -> IO (Id INMessage)
initWithIdentifier_conversationIdentifier_content_dateSent_sender_recipients_groupName_messageType inMessage identifier conversationIdentifier content dateSent sender recipients groupName messageType =
  sendOwnedMessage inMessage initWithIdentifier_conversationIdentifier_content_dateSent_sender_recipients_groupName_messageTypeSelector (toNSString identifier) (toNSString conversationIdentifier) (toNSString content) (toNSDate dateSent) (toINPerson sender) (toNSArray recipients) (toINSpeakableString groupName) messageType

-- | @- initWithIdentifier:conversationIdentifier:content:dateSent:sender:recipients:messageType:@
initWithIdentifier_conversationIdentifier_content_dateSent_sender_recipients_messageType :: (IsINMessage inMessage, IsNSString identifier, IsNSString conversationIdentifier, IsNSString content, IsNSDate dateSent, IsINPerson sender, IsNSArray recipients) => inMessage -> identifier -> conversationIdentifier -> content -> dateSent -> sender -> recipients -> INMessageType -> IO (Id INMessage)
initWithIdentifier_conversationIdentifier_content_dateSent_sender_recipients_messageType inMessage identifier conversationIdentifier content dateSent sender recipients messageType =
  sendOwnedMessage inMessage initWithIdentifier_conversationIdentifier_content_dateSent_sender_recipients_messageTypeSelector (toNSString identifier) (toNSString conversationIdentifier) (toNSString content) (toNSDate dateSent) (toINPerson sender) (toNSArray recipients) messageType

-- | @- initWithIdentifier:content:dateSent:sender:recipients:@
initWithIdentifier_content_dateSent_sender_recipients :: (IsINMessage inMessage, IsNSString identifier, IsNSString content, IsNSDate dateSent, IsINPerson sender, IsNSArray recipients) => inMessage -> identifier -> content -> dateSent -> sender -> recipients -> IO (Id INMessage)
initWithIdentifier_content_dateSent_sender_recipients inMessage identifier content dateSent sender recipients =
  sendOwnedMessage inMessage initWithIdentifier_content_dateSent_sender_recipientsSelector (toNSString identifier) (toNSString content) (toNSDate dateSent) (toINPerson sender) (toNSArray recipients)

-- | @- identifier@
identifier :: IsINMessage inMessage => inMessage -> IO (Id NSString)
identifier inMessage =
  sendMessage inMessage identifierSelector

-- | @- conversationIdentifier@
conversationIdentifier :: IsINMessage inMessage => inMessage -> IO (Id NSString)
conversationIdentifier inMessage =
  sendMessage inMessage conversationIdentifierSelector

-- | @- content@
content :: IsINMessage inMessage => inMessage -> IO (Id NSString)
content inMessage =
  sendMessage inMessage contentSelector

-- | @- dateSent@
dateSent :: IsINMessage inMessage => inMessage -> IO (Id NSDate)
dateSent inMessage =
  sendMessage inMessage dateSentSelector

-- | @- sender@
sender :: IsINMessage inMessage => inMessage -> IO (Id INPerson)
sender inMessage =
  sendMessage inMessage senderSelector

-- | @- recipients@
recipients :: IsINMessage inMessage => inMessage -> IO (Id NSArray)
recipients inMessage =
  sendMessage inMessage recipientsSelector

-- | @- groupName@
groupName :: IsINMessage inMessage => inMessage -> IO (Id INSpeakableString)
groupName inMessage =
  sendMessage inMessage groupNameSelector

-- | @- messageType@
messageType :: IsINMessage inMessage => inMessage -> IO INMessageType
messageType inMessage =
  sendMessage inMessage messageTypeSelector

-- | @- serviceName@
serviceName :: IsINMessage inMessage => inMessage -> IO (Id NSString)
serviceName inMessage =
  sendMessage inMessage serviceNameSelector

-- | @- audioMessageFile@
audioMessageFile :: IsINMessage inMessage => inMessage -> IO (Id INFile)
audioMessageFile inMessage =
  sendMessage inMessage audioMessageFileSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] RawId
initSelector = mkSelector "init"

-- | @Selector@ for @initWithIdentifier:conversationIdentifier:content:dateSent:sender:recipients:groupName:messageType:serviceName:audioMessageFile:@
initWithIdentifier_conversationIdentifier_content_dateSent_sender_recipients_groupName_messageType_serviceName_audioMessageFileSelector :: Selector '[Id NSString, Id NSString, Id NSString, Id NSDate, Id INPerson, Id NSArray, Id INSpeakableString, INMessageType, Id NSString, Id INFile] (Id INMessage)
initWithIdentifier_conversationIdentifier_content_dateSent_sender_recipients_groupName_messageType_serviceName_audioMessageFileSelector = mkSelector "initWithIdentifier:conversationIdentifier:content:dateSent:sender:recipients:groupName:messageType:serviceName:audioMessageFile:"

-- | @Selector@ for @initWithIdentifier:conversationIdentifier:content:dateSent:sender:recipients:groupName:messageType:serviceName:@
initWithIdentifier_conversationIdentifier_content_dateSent_sender_recipients_groupName_messageType_serviceNameSelector :: Selector '[Id NSString, Id NSString, Id NSString, Id NSDate, Id INPerson, Id NSArray, Id INSpeakableString, INMessageType, Id NSString] (Id INMessage)
initWithIdentifier_conversationIdentifier_content_dateSent_sender_recipients_groupName_messageType_serviceNameSelector = mkSelector "initWithIdentifier:conversationIdentifier:content:dateSent:sender:recipients:groupName:messageType:serviceName:"

-- | @Selector@ for @initWithIdentifier:conversationIdentifier:content:dateSent:sender:recipients:groupName:messageType:@
initWithIdentifier_conversationIdentifier_content_dateSent_sender_recipients_groupName_messageTypeSelector :: Selector '[Id NSString, Id NSString, Id NSString, Id NSDate, Id INPerson, Id NSArray, Id INSpeakableString, INMessageType] (Id INMessage)
initWithIdentifier_conversationIdentifier_content_dateSent_sender_recipients_groupName_messageTypeSelector = mkSelector "initWithIdentifier:conversationIdentifier:content:dateSent:sender:recipients:groupName:messageType:"

-- | @Selector@ for @initWithIdentifier:conversationIdentifier:content:dateSent:sender:recipients:messageType:@
initWithIdentifier_conversationIdentifier_content_dateSent_sender_recipients_messageTypeSelector :: Selector '[Id NSString, Id NSString, Id NSString, Id NSDate, Id INPerson, Id NSArray, INMessageType] (Id INMessage)
initWithIdentifier_conversationIdentifier_content_dateSent_sender_recipients_messageTypeSelector = mkSelector "initWithIdentifier:conversationIdentifier:content:dateSent:sender:recipients:messageType:"

-- | @Selector@ for @initWithIdentifier:content:dateSent:sender:recipients:@
initWithIdentifier_content_dateSent_sender_recipientsSelector :: Selector '[Id NSString, Id NSString, Id NSDate, Id INPerson, Id NSArray] (Id INMessage)
initWithIdentifier_content_dateSent_sender_recipientsSelector = mkSelector "initWithIdentifier:content:dateSent:sender:recipients:"

-- | @Selector@ for @identifier@
identifierSelector :: Selector '[] (Id NSString)
identifierSelector = mkSelector "identifier"

-- | @Selector@ for @conversationIdentifier@
conversationIdentifierSelector :: Selector '[] (Id NSString)
conversationIdentifierSelector = mkSelector "conversationIdentifier"

-- | @Selector@ for @content@
contentSelector :: Selector '[] (Id NSString)
contentSelector = mkSelector "content"

-- | @Selector@ for @dateSent@
dateSentSelector :: Selector '[] (Id NSDate)
dateSentSelector = mkSelector "dateSent"

-- | @Selector@ for @sender@
senderSelector :: Selector '[] (Id INPerson)
senderSelector = mkSelector "sender"

-- | @Selector@ for @recipients@
recipientsSelector :: Selector '[] (Id NSArray)
recipientsSelector = mkSelector "recipients"

-- | @Selector@ for @groupName@
groupNameSelector :: Selector '[] (Id INSpeakableString)
groupNameSelector = mkSelector "groupName"

-- | @Selector@ for @messageType@
messageTypeSelector :: Selector '[] INMessageType
messageTypeSelector = mkSelector "messageType"

-- | @Selector@ for @serviceName@
serviceNameSelector :: Selector '[] (Id NSString)
serviceNameSelector = mkSelector "serviceName"

-- | @Selector@ for @audioMessageFile@
audioMessageFileSelector :: Selector '[] (Id INFile)
audioMessageFileSelector = mkSelector "audioMessageFile"

