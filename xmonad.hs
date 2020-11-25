import  XMonad 
import XMonad.Util.EZConfig(additionalKeys)
import qualified Data.Map as M
import qualified XMonad.StackSet as W
import XMonad.Layout.ResizableTile
import System.Exit
myTerm = "xfce4-terminal"

focusFollowMouse = True
main = xmonad $ def
  {
  borderWidth = 5
  , terminal = myTerm
  ,keys = myKey
  
    , normalBorderColor = "#cccccc"
    , focusedBorderColor = "#cd8b00"
    , startupHook  = do
      spawn "nitrogen --restore"
}


myModMask = mod3Mask
altMask = mod1Mask 

myKey conf@(XConfig{XMonad.modMask = modMask}) = M.fromList $  
  [ ((altMask,xK_f), spawn $ "terminology"),
    ((modMask .|. shiftMask, xK_Return), spawn $ "terminology"),
   ((modMask,xK_q),kill),
    ((modMask .|. shiftMask, xK_q),io (exitWith ExitSuccess)),
   ((modMask,xK_1),spawn $ "terminology"),
   ((modMask,xK_p),spawn $ "dmenu --toggle"),
    ((modMask,xK_w), spawn $ "xmonad --recompile && xmonad --restart"),
    ((modMask,xK_space),sendMessage NextLayout),
    
    ((modMask,xK_a) , windows W.swapUp),
    ((modMask,xK_Tab) , windows W.focusDown),
    ((modMask,xK_h) , sendMessage Shrink),
    ((modMask,xK_l) ,sendMessage Expand),
    ((modMask,xK_s) , windows W.swapDown),
    ((modMask,xK_m) , windows W.focusMaster),
    ((modMask,xK_p) ,spawn $ "yeganesh -x")
     


  ]




