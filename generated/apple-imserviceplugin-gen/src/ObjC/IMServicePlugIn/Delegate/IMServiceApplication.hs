{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# LANGUAGE ForeignFunctionInterface #-}

-- | Generated delegate overrides for @\@protocol IMServiceApplication@.
--
-- Usage:
--
-- @
-- delegate <- newIMServiceApplication defaultIMServiceApplicationOverrides
--   { ... = Just $ \\arg0 -> ...
--   }
-- @
module ObjC.IMServicePlugIn.Delegate.IMServiceApplication
  ( IMServiceApplicationOverrides(..)
  , defaultIMServiceApplicationOverrides
  , newIMServiceApplication
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

-- | Overrides record for @\@protocol IMServiceApplication@.
--
-- Each field corresponds to a protocol method.  'Nothing' means the
-- method is not implemented (the object will not respond to that
-- selector).  'Just' provides the Haskell implementation.
data IMServiceApplicationOverrides = IMServiceApplicationOverrides
  { _plugInDidLogIn :: !(Maybe (IO ()))
  , _plugInDidLogOutWithError_reconnect :: !(Maybe (RawId -> Bool -> IO ()))
  , _plugInDidFailToAuthenticate :: !(Maybe (IO ()))
  , _plugInDidUpdateProperties_ofHandle :: !(Maybe (RawId -> RawId -> IO ()))
  }

-- | Default overrides with all methods unimplemented.
defaultIMServiceApplicationOverrides :: IMServiceApplicationOverrides
defaultIMServiceApplicationOverrides = IMServiceApplicationOverrides
  { _plugInDidLogIn = Nothing
  , _plugInDidLogOutWithError_reconnect = Nothing
  , _plugInDidFailToAuthenticate = Nothing
  , _plugInDidUpdateProperties_ofHandle = Nothing
  }

foreign import ccall "wrapper"
  wrap_at_at_v
    :: (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCObject -> Ptr ObjCObject -> IO ())
    -> IO (FunPtr (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCObject -> Ptr ObjCObject -> IO ()))

foreign import ccall "wrapper"
  wrap_at_B_v
    :: (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCObject -> CULong -> IO ())
    -> IO (FunPtr (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCObject -> CULong -> IO ()))

foreign import ccall "wrapper"
  wrap_v
    :: (Ptr ObjCObject -> Ptr ObjCSel -> IO ())
    -> IO (FunPtr (Ptr ObjCObject -> Ptr ObjCSel -> IO ()))


foreign import ccall "wrapper"
  wrap_respondsToSel
    :: (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCSel -> IO CULong)
    -> IO (FunPtr (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCSel -> IO CULong))

-- | The ObjC class for this delegate.  Created once, shared by all instances.
{-# NOINLINE imServiceApplicationDelegateClass #-}
imServiceApplicationDelegateClass :: Class
imServiceApplicationDelegateClass = unsafePerformIO $ do
  superCls <- getRequiredClass "NSObject"
  cls <- withCString "HsIMServiceApplication" $ \n ->
    objc_allocateClassPair superCls n 0
  addHsDataIvar cls
  let sel_plugInDidLogIn = unSelector (mkSelector "plugInDidLogIn")
      sel_plugInDidLogOutWithError_reconnect = unSelector (mkSelector "plugInDidLogOutWithError:reconnect:")
      sel_plugInDidFailToAuthenticate = unSelector (mkSelector "plugInDidFailToAuthenticate")
      sel_plugInDidUpdateProperties_ofHandle = unSelector (mkSelector "plugInDidUpdateProperties:ofHandle:")
  -- plugInDidLogIn
  stub_0 <- wrap_v $ \self _cmd -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO IMServiceApplicationOverrides
    case _plugInDidLogIn rec_ of
      Nothing -> pure ()
      Just f -> f 
  addObjCMethod cls "plugInDidLogIn" "v@:" stub_0

  -- plugInDidLogOutWithError:reconnect:
  stub_1 <- wrap_at_B_v $ \self _cmd arg0 arg1 -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO IMServiceApplicationOverrides
    case _plugInDidLogOutWithError_reconnect rec_ of
      Nothing -> pure ()
      Just f -> f (RawId arg0) (arg1 /= 0)
  addObjCMethod cls "plugInDidLogOutWithError:reconnect:" "v@:@B" stub_1

  -- plugInDidFailToAuthenticate
  stub_2 <- wrap_v $ \self _cmd -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO IMServiceApplicationOverrides
    case _plugInDidFailToAuthenticate rec_ of
      Nothing -> pure ()
      Just f -> f 
  addObjCMethod cls "plugInDidFailToAuthenticate" "v@:" stub_2

  -- plugInDidUpdateProperties:ofHandle:
  stub_3 <- wrap_at_at_v $ \self _cmd arg0 arg1 -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO IMServiceApplicationOverrides
    case _plugInDidUpdateProperties_ofHandle rec_ of
      Nothing -> pure ()
      Just f -> f (RawId arg0) (RawId arg1)
  addObjCMethod cls "plugInDidUpdateProperties:ofHandle:" "v@:@@" stub_3

  -- respondsToSelector: override
  rtsStub <- wrap_respondsToSel $ \self _cmd queriedSel -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO IMServiceApplicationOverrides
    if queriedSel == sel_plugInDidLogIn then pure (maybe 0 (const 1) (_plugInDidLogIn rec_))
    else if queriedSel == sel_plugInDidLogOutWithError_reconnect then pure (maybe 0 (const 1) (_plugInDidLogOutWithError_reconnect rec_))
    else if queriedSel == sel_plugInDidFailToAuthenticate then pure (maybe 0 (const 1) (_plugInDidFailToAuthenticate rec_))
    else if queriedSel == sel_plugInDidUpdateProperties_ofHandle then pure (maybe 0 (const 1) (_plugInDidUpdateProperties_ofHandle rec_))
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
newIMServiceApplication :: IMServiceApplicationOverrides -> IO RawId
newIMServiceApplication overrides = do
  inst <- class_createInstance imServiceApplicationDelegateClass 0
  sp <- newStablePtr overrides
  writeHsData inst sp
  pure inst
