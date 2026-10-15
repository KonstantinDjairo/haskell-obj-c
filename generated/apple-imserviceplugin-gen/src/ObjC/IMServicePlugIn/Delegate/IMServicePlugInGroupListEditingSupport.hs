{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# LANGUAGE ForeignFunctionInterface #-}

-- | Generated delegate overrides for @\@protocol IMServicePlugInGroupListEditingSupport@.
--
-- Usage:
--
-- @
-- delegate <- newIMServicePlugInGroupListEditingSupport defaultIMServicePlugInGroupListEditingSupportOverrides
--   { ... = Just $ \\arg0 -> ...
--   }
-- @
module ObjC.IMServicePlugIn.Delegate.IMServicePlugInGroupListEditingSupport
  ( IMServicePlugInGroupListEditingSupportOverrides(..)
  , defaultIMServicePlugInGroupListEditingSupportOverrides
  , newIMServicePlugInGroupListEditingSupport
  ) where

import Foreign.Ptr (Ptr, FunPtr, castPtr, nullPtr)
import Foreign.C.Types
import Foreign.StablePtr (newStablePtr, deRefStablePtr)
import System.IO.Unsafe (unsafePerformIO)
import Foreign.C.String (withCString)
import Foreign.LibFFI (retCULong, argPtr)

import ObjC.Runtime.Types
import ObjC.Runtime.Class (getRequiredClass, class_createInstance)
import ObjC.Runtime.ClassBuilder (objc_allocateClassPair, objc_registerClassPair)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.MsgSend (sendSuperMsg)
import ObjC.Runtime.StableIvar

-- | Overrides record for @\@protocol IMServicePlugInGroupListEditingSupport@.
--
-- Each field corresponds to a protocol method.  'Nothing' means the
-- method is not implemented (the object will not respond to that
-- selector).  'Just' provides the Haskell implementation.
data IMServicePlugInGroupListEditingSupportOverrides = IMServicePlugInGroupListEditingSupportOverrides
  { _addGroups :: !(Maybe (RawId -> IO ()))
  , _removeGroups :: !(Maybe (RawId -> IO ()))
  , _renameGroup_toGroup :: !(Maybe (RawId -> RawId -> IO ()))
  , _addHandles_toGroup :: !(Maybe (RawId -> RawId -> IO ()))
  , _removeHandles_fromGroup :: !(Maybe (RawId -> RawId -> IO ()))
  }

-- | Default overrides with all methods unimplemented.
defaultIMServicePlugInGroupListEditingSupportOverrides :: IMServicePlugInGroupListEditingSupportOverrides
defaultIMServicePlugInGroupListEditingSupportOverrides = IMServicePlugInGroupListEditingSupportOverrides
  { _addGroups = Nothing
  , _removeGroups = Nothing
  , _renameGroup_toGroup = Nothing
  , _addHandles_toGroup = Nothing
  , _removeHandles_fromGroup = Nothing
  }

foreign import ccall "wrapper"
  wrap_at_at_v
    :: (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCObject -> Ptr ObjCObject -> IO ())
    -> IO (FunPtr (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCObject -> Ptr ObjCObject -> IO ()))

foreign import ccall "wrapper"
  wrap_at_v
    :: (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCObject -> IO ())
    -> IO (FunPtr (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCObject -> IO ()))


foreign import ccall "wrapper"
  wrap_respondsToSel
    :: (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCSel -> IO CULong)
    -> IO (FunPtr (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCSel -> IO CULong))

-- | The ObjC class for this delegate.  Created once, shared by all instances.
{-# NOINLINE imServicePlugInGroupListEditingSupportDelegateClass #-}
imServicePlugInGroupListEditingSupportDelegateClass :: Class
imServicePlugInGroupListEditingSupportDelegateClass = unsafePerformIO $ do
  superCls <- getRequiredClass "NSObject"
  cls <- withCString "HsIMServicePlugInGroupListEditingSupport" $ \n ->
    objc_allocateClassPair superCls n 0
  addHsDataIvar cls
  let sel_addGroups = unSelector (mkSelector "addGroups:")
      sel_removeGroups = unSelector (mkSelector "removeGroups:")
      sel_renameGroup_toGroup = unSelector (mkSelector "renameGroup:toGroup:")
      sel_addHandles_toGroup = unSelector (mkSelector "addHandles:toGroup:")
      sel_removeHandles_fromGroup = unSelector (mkSelector "removeHandles:fromGroup:")
  -- addGroups:
  stub_0 <- wrap_at_v $ \self _cmd arg0 -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO IMServicePlugInGroupListEditingSupportOverrides
    case _addGroups rec_ of
      Nothing -> pure ()
      Just f -> f (RawId arg0)
  addObjCMethod cls "addGroups:" "v@:@" stub_0

  -- removeGroups:
  stub_1 <- wrap_at_v $ \self _cmd arg0 -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO IMServicePlugInGroupListEditingSupportOverrides
    case _removeGroups rec_ of
      Nothing -> pure ()
      Just f -> f (RawId arg0)
  addObjCMethod cls "removeGroups:" "v@:@" stub_1

  -- renameGroup:toGroup:
  stub_2 <- wrap_at_at_v $ \self _cmd arg0 arg1 -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO IMServicePlugInGroupListEditingSupportOverrides
    case _renameGroup_toGroup rec_ of
      Nothing -> pure ()
      Just f -> f (RawId arg0) (RawId arg1)
  addObjCMethod cls "renameGroup:toGroup:" "v@:@@" stub_2

  -- addHandles:toGroup:
  stub_3 <- wrap_at_at_v $ \self _cmd arg0 arg1 -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO IMServicePlugInGroupListEditingSupportOverrides
    case _addHandles_toGroup rec_ of
      Nothing -> pure ()
      Just f -> f (RawId arg0) (RawId arg1)
  addObjCMethod cls "addHandles:toGroup:" "v@:@@" stub_3

  -- removeHandles:fromGroup:
  stub_4 <- wrap_at_at_v $ \self _cmd arg0 arg1 -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO IMServicePlugInGroupListEditingSupportOverrides
    case _removeHandles_fromGroup rec_ of
      Nothing -> pure ()
      Just f -> f (RawId arg0) (RawId arg1)
  addObjCMethod cls "removeHandles:fromGroup:" "v@:@@" stub_4

  -- respondsToSelector: override
  rtsStub <- wrap_respondsToSel $ \self _cmd queriedSel -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO IMServicePlugInGroupListEditingSupportOverrides
    if queriedSel == sel_addGroups then pure (maybe 0 (const 1) (_addGroups rec_))
    else if queriedSel == sel_removeGroups then pure (maybe 0 (const 1) (_removeGroups rec_))
    else if queriedSel == sel_renameGroup_toGroup then pure (maybe 0 (const 1) (_renameGroup_toGroup rec_))
    else if queriedSel == sel_addHandles_toGroup then pure (maybe 0 (const 1) (_addHandles_toGroup rec_))
    else if queriedSel == sel_removeHandles_fromGroup then pure (maybe 0 (const 1) (_removeHandles_fromGroup rec_))
    else do
      let super_ = ObjCSuper (RawId self) superCls
      sendSuperMsg super_ (mkSelector "respondsToSelector:") retCULong
        [argPtr (castPtr queriedSel :: Ptr ())]
  addObjCMethod cls "respondsToSelector:" "B@::" rtsStub

  addStablePtrDeallocHandler cls
  objc_registerClassPair cls
  pure cls

-- | Create a new delegate implementing this protocol.
--
-- The returned 'RawId' can be used as a delegate or data source.
newIMServicePlugInGroupListEditingSupport :: IMServicePlugInGroupListEditingSupportOverrides -> IO RawId
newIMServicePlugInGroupListEditingSupport overrides = do
  inst <- class_createInstance imServicePlugInGroupListEditingSupportDelegateClass 0
  sp <- newStablePtr overrides
  writeHsData inst sp
  pure inst
