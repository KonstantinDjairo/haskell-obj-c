{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# LANGUAGE ForeignFunctionInterface #-}

-- | Generated delegate overrides for @\@protocol AVPlayerItemOutputPushDelegate@.
--
-- Usage:
--
-- @
-- delegate <- newAVPlayerItemOutputPushDelegate defaultAVPlayerItemOutputPushDelegateOverrides
--   { ... = Just $ \\arg0 -> ...
--   }
-- @
module ObjC.AVFoundation.Delegate.AVPlayerItemOutputPushDelegate
  ( AVPlayerItemOutputPushDelegateOverrides(..)
  , defaultAVPlayerItemOutputPushDelegateOverrides
  , newAVPlayerItemOutputPushDelegate
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

-- | Overrides record for @\@protocol AVPlayerItemOutputPushDelegate@.
--
-- Each field corresponds to a protocol method.  'Nothing' means the
-- method is not implemented (the object will not respond to that
-- selector).  'Just' provides the Haskell implementation.
data AVPlayerItemOutputPushDelegateOverrides = AVPlayerItemOutputPushDelegateOverrides
  { _outputSequenceWasFlushed :: !(Maybe (RawId -> IO ()))
  }

-- | Default overrides with all methods unimplemented.
defaultAVPlayerItemOutputPushDelegateOverrides :: AVPlayerItemOutputPushDelegateOverrides
defaultAVPlayerItemOutputPushDelegateOverrides = AVPlayerItemOutputPushDelegateOverrides
  { _outputSequenceWasFlushed = Nothing
  }

foreign import ccall "wrapper"
  wrap_at_v
    :: (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCObject -> IO ())
    -> IO (FunPtr (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCObject -> IO ()))


foreign import ccall "wrapper"
  wrap_respondsToSel
    :: (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCSel -> IO CULong)
    -> IO (FunPtr (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCSel -> IO CULong))

-- | The ObjC class for this delegate.  Created once, shared by all instances.
{-# NOINLINE avPlayerItemOutputPushDelegateDelegateClass #-}
avPlayerItemOutputPushDelegateDelegateClass :: Class
avPlayerItemOutputPushDelegateDelegateClass = unsafePerformIO $ do
  superCls <- getRequiredClass "NSObject"
  cls <- withCString "HsAVPlayerItemOutputPushDelegate" $ \n ->
    objc_allocateClassPair superCls n 0
  addHsDataIvar cls
  let sel_outputSequenceWasFlushed = unSelector (mkSelector "outputSequenceWasFlushed:")
  -- outputSequenceWasFlushed:
  stub_0 <- wrap_at_v $ \self _cmd arg0 -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO AVPlayerItemOutputPushDelegateOverrides
    case _outputSequenceWasFlushed rec_ of
      Nothing -> pure ()
      Just f -> f (RawId arg0)
  addObjCMethod cls "outputSequenceWasFlushed:" "v@:@" stub_0

  -- respondsToSelector: override
  rtsStub <- wrap_respondsToSel $ \self _cmd queriedSel -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO AVPlayerItemOutputPushDelegateOverrides
    if queriedSel == sel_outputSequenceWasFlushed then pure (maybe 0 (const 1) (_outputSequenceWasFlushed rec_))
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
newAVPlayerItemOutputPushDelegate :: AVPlayerItemOutputPushDelegateOverrides -> IO RawId
newAVPlayerItemOutputPushDelegate overrides = do
  inst <- class_createInstance avPlayerItemOutputPushDelegateDelegateClass 0
  sp <- newStablePtr overrides
  writeHsData inst sp
  pure inst
