{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @PHAssetResourceCreationOptions@.
module ObjC.Photos.PHAssetResourceCreationOptions
  ( PHAssetResourceCreationOptions
  , IsPHAssetResourceCreationOptions(..)
  , originalFilename
  , setOriginalFilename
  , uniformTypeIdentifier
  , setUniformTypeIdentifier
  , shouldMoveFile
  , setShouldMoveFile
  , originalFilenameSelector
  , setOriginalFilenameSelector
  , setShouldMoveFileSelector
  , setUniformTypeIdentifierSelector
  , shouldMoveFileSelector
  , uniformTypeIdentifierSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.Photos.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- originalFilename@
originalFilename :: IsPHAssetResourceCreationOptions phAssetResourceCreationOptions => phAssetResourceCreationOptions -> IO (Id NSString)
originalFilename phAssetResourceCreationOptions =
  sendMessage phAssetResourceCreationOptions originalFilenameSelector

-- | @- setOriginalFilename:@
setOriginalFilename :: (IsPHAssetResourceCreationOptions phAssetResourceCreationOptions, IsNSString value) => phAssetResourceCreationOptions -> value -> IO ()
setOriginalFilename phAssetResourceCreationOptions value =
  sendMessage phAssetResourceCreationOptions setOriginalFilenameSelector (toNSString value)

-- | @- uniformTypeIdentifier@
uniformTypeIdentifier :: IsPHAssetResourceCreationOptions phAssetResourceCreationOptions => phAssetResourceCreationOptions -> IO (Id NSString)
uniformTypeIdentifier phAssetResourceCreationOptions =
  sendMessage phAssetResourceCreationOptions uniformTypeIdentifierSelector

-- | @- setUniformTypeIdentifier:@
setUniformTypeIdentifier :: (IsPHAssetResourceCreationOptions phAssetResourceCreationOptions, IsNSString value) => phAssetResourceCreationOptions -> value -> IO ()
setUniformTypeIdentifier phAssetResourceCreationOptions value =
  sendMessage phAssetResourceCreationOptions setUniformTypeIdentifierSelector (toNSString value)

-- | @- shouldMoveFile@
shouldMoveFile :: IsPHAssetResourceCreationOptions phAssetResourceCreationOptions => phAssetResourceCreationOptions -> IO Bool
shouldMoveFile phAssetResourceCreationOptions =
  sendMessage phAssetResourceCreationOptions shouldMoveFileSelector

-- | @- setShouldMoveFile:@
setShouldMoveFile :: IsPHAssetResourceCreationOptions phAssetResourceCreationOptions => phAssetResourceCreationOptions -> Bool -> IO ()
setShouldMoveFile phAssetResourceCreationOptions value =
  sendMessage phAssetResourceCreationOptions setShouldMoveFileSelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @originalFilename@
originalFilenameSelector :: Selector '[] (Id NSString)
originalFilenameSelector = mkSelector "originalFilename"

-- | @Selector@ for @setOriginalFilename:@
setOriginalFilenameSelector :: Selector '[Id NSString] ()
setOriginalFilenameSelector = mkSelector "setOriginalFilename:"

-- | @Selector@ for @uniformTypeIdentifier@
uniformTypeIdentifierSelector :: Selector '[] (Id NSString)
uniformTypeIdentifierSelector = mkSelector "uniformTypeIdentifier"

-- | @Selector@ for @setUniformTypeIdentifier:@
setUniformTypeIdentifierSelector :: Selector '[Id NSString] ()
setUniformTypeIdentifierSelector = mkSelector "setUniformTypeIdentifier:"

-- | @Selector@ for @shouldMoveFile@
shouldMoveFileSelector :: Selector '[] Bool
shouldMoveFileSelector = mkSelector "shouldMoveFile"

-- | @Selector@ for @setShouldMoveFile:@
setShouldMoveFileSelector :: Selector '[Bool] ()
setShouldMoveFileSelector = mkSelector "setShouldMoveFile:"

