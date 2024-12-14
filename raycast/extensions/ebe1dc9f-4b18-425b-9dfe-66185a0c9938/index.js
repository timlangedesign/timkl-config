"use strict";var c=Object.defineProperty;var x=Object.getOwnPropertyDescriptor;var b=Object.getOwnPropertyNames;var z=Object.prototype.hasOwnProperty;var v=(e,i)=>{for(var o in i)c(e,o,{get:i[o],enumerable:!0})},S=(e,i,o,n)=>{if(i&&typeof i=="object"||typeof i=="function")for(let p of b(i))!z.call(e,p)&&p!==o&&c(e,p,{get:()=>i[p],enumerable:!(n=x(i,p))||n.enumerable});return e};var C=e=>S(c({},"__esModule",{value:!0}),e);var L={};v(L,{buildCommand:()=>R,default:()=>T});module.exports=C(L);var t=require("@raycast/api");var s=require("@raycast/api");async function y(){let e=await(0,s.getApplications)();return e.some(({bundleId:i})=>i==="com.knollsoft.Hookshot")?"rectangle-pro":e.some(({bundleId:i})=>i==="com.knollsoft.Rectangle")?"rectangle":"none"}async function w(){let e=await y();if(e==="none"){let i={style:s.Toast.Style.Failure,title:"Rectangle is not installed.",message:"You can download it from rectangleapp.com \u{1F609}",primaryAction:{title:"Open https://rectangleapp.com in default browser",onAction:o=>{(0,s.open)("https://rectangleapp.com"),o.hide()}}};await(0,s.showToast)(i)}return e}var g={maximize:{title:"Maximize",items:[{name:"maximize",title:"Maximize",icon:"window-positions/maximizeTemplate.png",description:"Maximize the focused window to fill the screen"},{name:"almost-maximize",title:"Almost Maximize",icon:"window-positions/almostMaximizeTemplate.png",description:"Almost maximize the focused window"},{name:"maximize-height",title:"Maximize Height",icon:"window-positions/maximizeHeightTemplate.png",description:"Maximize the height of the focused window"}]},halves:{title:"Halves",items:[{name:"left-half",title:"Left Half",icon:"window-positions/leftHalfTemplate.png",description:"Move the focused window to the left half of the current display"},{name:"right-half",title:"Right Half",icon:"window-positions/rightHalfTemplate.png",description:"Move the focused window to the right half of the current display"},{name:"center-half",title:"Center Half",icon:"window-positions/halfWidthCenterTemplate.png",description:"Center the focused window in half-width"},{name:"top-half",title:"Top Half",icon:"window-positions/topHalfTemplate.png",description:"Move the focused window to the top half of the current display"},{name:"bottom-half",title:"Bottom Half",icon:"window-positions/bottomHalfTemplate.png",description:"Move the focused window to the bottom half of the current display"}]},corners:{title:"Corners",items:[{name:"top-left",title:"Top Left",icon:"window-positions/topLeftTemplate.png",description:"Move the focused window to the top-left corner"},{name:"top-right",title:"Top Right",icon:"window-positions/topRightTemplate.png",description:"Move the focused window to the top-right corner"},{name:"bottom-left",title:"Bottom Left",icon:"window-positions/bottomLeftTemplate.png",description:"Move the focused window to the bottom-left corner"},{name:"bottom-right",title:"Bottom Right",icon:"window-positions/bottomRightTemplate.png",description:"Move the focused window to the bottom-right corner"}]},thirds:{title:"Thirds",items:[{name:"first-third",title:"First Third",icon:"window-positions/firstThirdTemplate.png",description:"Resize the focused window to the first third of the screen"},{name:"center-third",title:"Center Third",icon:"window-positions/centerThirdTemplate.png",description:"Resize the focused window to the center third of the screen"},{name:"last-third",title:"Last Third",icon:"window-positions/lastThirdTemplate.png",description:"Resize the focused window to the last third of the screen"},{name:"first-two-thirds",title:"First Two Thirds",icon:"window-positions/firstTwoThirdsTemplate.png",description:"Resize the focused window to the first two-thirds of the screen"},{name:"last-two-thirds",title:"Last Two Thirds",icon:"window-positions/lastTwoThirdsTemplate.png",description:"Resize the focused window to the last two-thirds of the screen"}]},cornerTwoThirds:{title:"Corner Two Thirds",items:[{name:"top-left-third",title:"Top Left Two Thirds",icon:"window-positions/tlCornerTwoThirdsTemplate.png",description:"Resize the focused window to the top-left two-thirds of the screen"},{name:"top-right-third",title:"Top Right Two Thirds",icon:"window-positions/trCornerTwoThirdsTemplate.png",description:"Resize the focused window to the top-right two-thirds of the screen"},{name:"bottom-left-third",title:"Bottom Left Two Thirds",icon:"window-positions/blCornerTwoThirdsTemplate.png",description:"Resize the focused window to the bottom-left two-thirds of the screen"},{name:"bottom-right-third",title:"Bottom Right Two Thirds",icon:"window-positions/brCornerTwoThirdsTemplate.png",description:"Resize the focused window to the bottom-right two-thirds of the screen"}]},fourths:{title:"Fourths",items:[{name:"first-fourth",title:"First Fourth",icon:"window-positions/leftFourthTemplate.png",description:"Resize the focused window to the first fourth of the screen"},{name:"second-fourth",title:"Second Fourth",icon:"window-positions/centerLeftFourthTemplate.png",description:"Resize the focused window to the second fourth of the screen"},{name:"third-fourth",title:"Third Fourth",icon:"window-positions/centerRightFourthTemplate.png",description:"Resize the focused window to the third fourth of the screen"},{name:"last-fourth",title:"Last Fourth",icon:"window-positions/rightFourthTemplate.png",description:"Resize the focused window to the last fourth of the screen"},{name:"first-three-fourths",title:"First Three Fourths",icon:"window-positions/firstThreeFourthsTemplate.png",description:"Resize the focused window to the first three-fourths of the screen"},{name:"last-three-fourths",title:"Last Three Fourths",icon:"window-positions/lastThreeFourthsTemplate.png",description:"Resize the focused window to the last three-fourths of the screen"}]},sixths:{title:"Sixths",items:[{name:"top-left-sixth",title:"Top Left Sixth",icon:"window-positions/topLeftSixthTemplate.png",description:"Resize the focused window to the top-left sixth of the screen"},{name:"top-center-sixth",title:"Top Center Sixth",icon:"window-positions/topCenterSixthTemplate.png",description:"Resize the focused window to the top-center sixth of the screen"},{name:"top-right-sixth",title:"Top Right Sixth",icon:"window-positions/topRightSixthTemplate.png",description:"Resize the focused window to the top-right sixth of the screen"},{name:"bottom-left-sixth",title:"Bottom Left Sixth",icon:"window-positions/bottomLeftSixthTemplate.png",description:"Resize the focused window to the bottom-left sixth of the screen"},{name:"bottom-center-sixth",title:"Bottom Center Sixth",icon:"window-positions/bottomCenterSixthTemplate.png",description:"Resize the focused window to the bottom-center sixth of the screen"},{name:"bottom-right-sixth",title:"Bottom Right Sixth",icon:"window-positions/bottomRightSixthTemplate.png",description:"Resize the focused window to the bottom-right sixth of the screen"}]},eighths:{title:"Eighths",items:[{name:"top-left-eighth",title:"Top Left Eighth",icon:"window-positions/tlEighthTemplate.png",description:"Resize the focused window to the top-left eighth of the screen"},{name:"top-center-left-eighth",title:"Top Center Left Eighth",icon:"window-positions/ctlEighthTemplate.png",description:"Resize the focused window to the top-center-left eighth of the screen"},{name:"top-center-right-eighth",title:"Top Center Right Eighth",icon:"window-positions/ctrEighthTemplate.png",description:"Resize the focused window to the top-center-right eighth of the screen"},{name:"top-right-eighth",title:"Top Right Eighth",icon:"window-positions/trEighthTemplate.png",description:"Resize the focused window to the top-right eighth of the screen"},{name:"bottom-left-eighth",title:"Bottom Left Eighth",icon:"window-positions/blEighthTemplate.png",description:"Resize the focused window to the bottom-left eighth of the screen"},{name:"bottom-center-left-eighth",title:"Bottom Center Left Eighth",icon:"window-positions/cblEighthTemplate.png",description:"Resize the focused window to the bottom-center-left eighth of the screen"},{name:"bottom-center-right-eighth",title:"Bottom Center Right Eighth",icon:"window-positions/cbrEighthTemplate.png",description:"Resize the focused window to the bottom-center-right eighth of the screen"},{name:"bottom-right-eighth",title:"Bottom Right Eighth",icon:"window-positions/brEighthTemplate.png",description:"Resize the focused window to the bottom-right eighth of the screen"}]},ninths:{title:"Ninths",items:[{name:"top-left-ninth",title:"Top Left Ninth",icon:"window-positions/tlNinthTemplate.png",description:"Resize the focused window to the top-left ninth of the screen"},{name:"top-center-ninth",title:"Top Center Ninth",icon:"window-positions/tNinthTemplate.png",description:"Resize the focused window to the top-center ninth of the screen"},{name:"top-right-ninth",title:"Top Right Ninth",icon:"window-positions/trNinthTemplate.png",description:"Resize the focused window to the top-right ninth of the screen"},{name:"middle-left-ninth",title:"Middle Left Ninth",icon:"window-positions/lNinthTemplate.png",description:"Resize the focused window to the middle-left ninth of the screen"},{name:"middle-center-ninth",title:"Middle Center Ninth",icon:"window-positions/cNinthTemplate.png",description:"Resize the focused window to the middle-center ninth of the screen"},{name:"middle-right-ninth",title:"Middle Right Ninth",icon:"window-positions/rNinthTemplate.png",description:"Resize the focused window to the middle-right ninth of the screen"},{name:"bottom-left-ninth",title:"Bottom Left Ninth",icon:"window-positions/blNinthTemplate.png",description:"Resize the focused window to the bottom-left ninth of the screen"},{name:"bottom-center-ninth",title:"Bottom Center Ninth",icon:"window-positions/bNinthTemplate.png",description:"Resize the focused window to the bottom-center ninth of the screen"},{name:"bottom-right-ninth",title:"Bottom Right Ninth",icon:"window-positions/brNinthTemplate.png",description:"Resize the focused window to the bottom-right ninth of the screen"}]},display:{title:"Display",items:[{name:"previous-display",title:"Previous Display",icon:"window-positions/prevDisplayTemplate.png",description:"Move the focused window to the previous display"},{name:"next-display",title:"Next Display",icon:"window-positions/nextDisplayTemplate.png",description:"Move the focused window to the next display"}]},snap:{title:"Snap",items:[{name:"move-left",title:"Snap Left",icon:"window-positions/moveLeftTemplate.png",description:"Snap the focused window to the left"},{name:"move-right",title:"Snap Right",icon:"window-positions/moveRightTemplate.png",description:"Snap the focused window to the right"},{name:"move-up",title:"Snap Up",icon:"window-positions/moveUpTemplate.png",description:"Snap the focused window up"},{name:"move-down",title:"Snap Down",icon:"window-positions/moveDownTemplate.png",description:"Snap the focused window down"}]},size:{title:"Size",items:[{name:"larger",title:"Make Larger",icon:"window-positions/makeLargerTemplate.png",description:"Increase the size of the focused window"},{name:"smaller",title:"Make Smaller",icon:"window-positions/makeSmallerTemplate.png",description:"Decrease the size of the focused window"}]},other:{title:"Other",items:[{name:"center",title:"Center",icon:"window-positions/centerTemplate.png",description:"Center the focused window on the screen"},{name:"restore",title:"Restore",icon:"window-positions/restoreTemplate.png",description:"Restore the focused window to its previous size"}]}};var u={fill:{title:"Fill",items:[{name:"fill-left",title:"Fill Left",icon:"window-positions/fillLeftTemplate.png",description:"Fill the left side of the screen with the focused window"},{name:"fill-right",title:"Fill Right",icon:"window-positions/fillRightTemplate.png",description:"Fill the right side of the screen with the focused window"},{name:"fill-top-left",title:"Fill Top Left",icon:"window-positions/fillCornersTLTemplate.png",description:"Fill the top-left corner with the focused window"},{name:"fill-top-right",title:"Fill Top Right",icon:"window-positions/fillCornersTRTemplate.png",description:"Fill the top-right corner with the focused window"},{name:"fill-bottom-left",title:"Fill Bottom Left",icon:"window-positions/fillCornersBLTemplate.png",description:"Fill the bottom-left corner with the focused window"},{name:"fill-bottom-right",title:"Fill Bottom Right",icon:"window-positions/fillCornersBRTemplate.png",description:"Fill the bottom-right corner with the focused window"}]},maximize:{title:"Maximize",items:[{name:"maximize",title:"Maximize",icon:"window-positions/maximizeTemplate.png",description:"Maximize the focused window to fill the screen"},{name:"almost-maximize",title:"Almost Maximize",icon:"window-positions/almostMaximizeTemplate.png",description:"Almost maximize the focused window"},{name:"maximize-height",title:"Maximize Height",icon:"window-positions/maximizeHeightTemplate.png",description:"Maximize the height of the focused window"}]},halves:{title:"Halves",items:[{name:"left-half",title:"Left Half",icon:"window-positions/leftHalfTemplate.png",description:"Move the focused window to the left half of the current display"},{name:"right-half",title:"Right Half",icon:"window-positions/rightHalfTemplate.png",description:"Move the focused window to the right half of the current display"},{name:"center-half",title:"Center Half",icon:"window-positions/halfWidthCenterTemplate.png",description:"Center the focused window in half-width"},{name:"top-half",title:"Top Half",icon:"window-positions/topHalfTemplate.png",description:"Move the focused window to the top half of the current display"},{name:"bottom-half",title:"Bottom Half",icon:"window-positions/bottomHalfTemplate.png",description:"Move the focused window to the bottom half of the current display"}]},corners:{title:"Corners",items:[{name:"top-left",title:"Top Left",icon:"window-positions/topLeftTemplate.png",description:"Move the focused window to the top-left corner"},{name:"top-right",title:"Top Right",icon:"window-positions/topRightTemplate.png",description:"Move the focused window to the top-right corner"},{name:"bottom-left",title:"Bottom Left",icon:"window-positions/bottomLeftTemplate.png",description:"Move the focused window to the bottom-left corner"},{name:"bottom-right",title:"Bottom Right",icon:"window-positions/bottomRightTemplate.png",description:"Move the focused window to the bottom-right corner"}]},thirds:{title:"Thirds",items:[{name:"first-third",title:"First Third",icon:"window-positions/firstThirdTemplate.png",description:"Resize the focused window to the first third of the screen"},{name:"center-third",title:"Center Third",icon:"window-positions/centerThirdTemplate.png",description:"Resize the focused window to the center third of the screen"},{name:"last-third",title:"Last Third",icon:"window-positions/lastThirdTemplate.png",description:"Resize the focused window to the last third of the screen"},{name:"first-two-thirds",title:"First Two Thirds",icon:"window-positions/firstTwoThirdsTemplate.png",description:"Resize the focused window to the first two-thirds of the screen"},{name:"center-two-thirds",title:"Center Two Thirds",icon:"window-positions/centerTwoThirdsTemplate.png",description:"Resize the focused window to the center two-thirds of the screen"},{name:"last-two-thirds",title:"Last Two Thirds",icon:"window-positions/lastTwoThirdsTemplate.png",description:"Resize the focused window to the last two-thirds of the screen"}]},cornerTwoThirds:{title:"Corner Two Thirds",items:[{name:"top-left-third",title:"Top Left Two Thirds",icon:"window-positions/tlCornerTwoThirdsTemplate.png",description:"Resize the focused window to the top-left two-thirds of the screen"},{name:"top-right-third",title:"Top Right Two Thirds",icon:"window-positions/trCornerTwoThirdsTemplate.png",description:"Resize the focused window to the top-right two-thirds of the screen"},{name:"bottom-left-third",title:"Bottom Left Two Thirds",icon:"window-positions/blCornerTwoThirdsTemplate.png",description:"Resize the focused window to the bottom-left two-thirds of the screen"},{name:"bottom-right-third",title:"Bottom Right Two Thirds",icon:"window-positions/brCornerTwoThirdsTemplate.png",description:"Resize the focused window to the bottom-right two-thirds of the screen"}]},fourths:{title:"Fourths",items:[{name:"first-fourth",title:"First Fourth",icon:"window-positions/leftFourthTemplate.png",description:"Resize the focused window to the first fourth of the screen"},{name:"second-fourth",title:"Second Fourth",icon:"window-positions/centerLeftFourthTemplate.png",description:"Resize the focused window to the second fourth of the screen"},{name:"third-fourth",title:"Third Fourth",icon:"window-positions/centerRightFourthTemplate.png",description:"Resize the focused window to the third fourth of the screen"},{name:"last-fourth",title:"Last Fourth",icon:"window-positions/rightFourthTemplate.png",description:"Resize the focused window to the last fourth of the screen"},{name:"first-three-fourths",title:"First Three Fourths",icon:"window-positions/firstThreeFourthsTemplate.png",description:"Resize the focused window to the first three-fourths of the screen"},{name:"last-three-fourths",title:"Last Three Fourths",icon:"window-positions/lastThreeFourthsTemplate.png",description:"Resize the focused window to the last three-fourths of the screen"}]},sixths:{title:"Sixths",items:[{name:"top-left-sixth",title:"Top Left Sixth",icon:"window-positions/topLeftSixthTemplate.png",description:"Resize the focused window to the top-left sixth of the screen"},{name:"top-center-sixth",title:"Top Center Sixth",icon:"window-positions/topCenterSixthTemplate.png",description:"Resize the focused window to the top-center sixth of the screen"},{name:"top-right-sixth",title:"Top Right Sixth",icon:"window-positions/topRightSixthTemplate.png",description:"Resize the focused window to the top-right sixth of the screen"},{name:"bottom-left-sixth",title:"Bottom Left Sixth",icon:"window-positions/bottomLeftSixthTemplate.png",description:"Resize the focused window to the bottom-left sixth of the screen"},{name:"bottom-center-sixth",title:"Bottom Center Sixth",icon:"window-positions/bottomCenterSixthTemplate.png",description:"Resize the focused window to the bottom-center sixth of the screen"},{name:"bottom-right-sixth",title:"Bottom Right Sixth",icon:"window-positions/bottomRightSixthTemplate.png",description:"Resize the focused window to the bottom-right sixth of the screen"},{name:"first-sixth",title:"First Sixth",icon:"window-positions/leftSixthTemplate.png",description:"Resize the focused window to the first sixth of the screen"},{name:"last-sixth",title:"Last Sixth",icon:"window-positions/rightSixthTemplate.png",description:"Resize the focused window to the last sixth of the screen"}]},eighths:{title:"Eighths",items:[{name:"top-left-eighth",title:"Top Left Eighth",icon:"window-positions/tlEighthTemplate.png",description:"Resize the focused window to the top-left eighth of the screen"},{name:"top-center-left-eighth",title:"Top Center Left Eighth",icon:"window-positions/ctlEighthTemplate.png",description:"Resize the focused window to the top-center-left eighth of the screen"},{name:"top-center-right-eighth",title:"Top Center Right Eighth",icon:"window-positions/ctrEighthTemplate.png",description:"Resize the focused window to the top-center-right eighth of the screen"},{name:"top-right-eighth",title:"Top Right Eighth",icon:"window-positions/trEighthTemplate.png",description:"Resize the focused window to the top-right eighth of the screen"},{name:"bottom-left-eighth",title:"Bottom Left Eighth",icon:"window-positions/blEighthTemplate.png",description:"Resize the focused window to the bottom-left eighth of the screen"},{name:"bottom-center-left-eighth",title:"Bottom Center Left Eighth",icon:"window-positions/cblEighthTemplate.png",description:"Resize the focused window to the bottom-center-left eighth of the screen"},{name:"bottom-center-right-eighth",title:"Bottom Center Right Eighth",icon:"window-positions/cbrEighthTemplate.png",description:"Resize the focused window to the bottom-center-right eighth of the screen"},{name:"bottom-right-eighth",title:"Bottom Right Eighth",icon:"window-positions/brEighthTemplate.png",description:"Resize the focused window to the bottom-right eighth of the screen"}]},ninths:{title:"Ninths",items:[{name:"top-left-ninth",title:"Top Left Ninth",icon:"window-positions/tlNinthTemplate.png",description:"Resize the focused window to the top-left ninth of the screen"},{name:"top-center-ninth",title:"Top Center Ninth",icon:"window-positions/tNinthTemplate.png",description:"Resize the focused window to the top-center ninth of the screen"},{name:"top-right-ninth",title:"Top Right Ninth",icon:"window-positions/trNinthTemplate.png",description:"Resize the focused window to the top-right ninth of the screen"},{name:"middle-left-ninth",title:"Middle Left Ninth",icon:"window-positions/lNinthTemplate.png",description:"Resize the focused window to the middle-left ninth of the screen"},{name:"middle-center-ninth",title:"Middle Center Ninth",icon:"window-positions/cNinthTemplate.png",description:"Resize the focused window to the middle-center ninth of the screen"},{name:"middle-right-ninth",title:"Middle Right Ninth",icon:"window-positions/rNinthTemplate.png",description:"Resize the focused window to the middle-right ninth of the screen"},{name:"bottom-left-ninth",title:"Bottom Left Ninth",icon:"window-positions/blNinthTemplate.png",description:"Resize the focused window to the bottom-left ninth of the screen"},{name:"bottom-center-ninth",title:"Bottom Center Ninth",icon:"window-positions/bNinthTemplate.png",description:"Resize the focused window to the bottom-center ninth of the screen"},{name:"bottom-right-ninth",title:"Bottom Right Ninth",icon:"window-positions/brNinthTemplate.png",description:"Resize the focused window to the bottom-right ninth of the screen"}]},display:{title:"Display",items:[{name:"previous-display",title:"Previous Display",icon:"window-positions/prevDisplayTemplate.png",description:"Move the focused window to the previous display"},{name:"next-display",title:"Next Display",icon:"window-positions/nextDisplayTemplate.png",description:"Move the focused window to the next display"},{name:"next-display-ratio",title:"Next Display Centered",icon:"window-positions/nextDisplayCenterTemplate.png",description:"Move the focused window to the next display, keeping ratio"},{name:"prev-display-ratio",title:"Previous Display Centered",icon:"window-positions/prevDisplayCenterTemplate.png",description:"Move the focused window to the previous display, keeping ratio"},{name:"next-space",title:"Next Space",icon:"window-positions/moveSpaceLeftLargerTemplate.png",description:"Move the focused window to the next space"},{name:"prev-space",title:"Previous Space",icon:"window-positions/moveSpaceRightLargerTemplate.png",description:"Move the focused window to the previous space"}]},snap:{title:"Snap",items:[{name:"move-left",title:"Snap Left",icon:"window-positions/moveLeftTemplate.png",description:"Snap the focused window to the left"},{name:"move-right",title:"Snap Right",icon:"window-positions/moveRightTemplate.png",description:"Snap the focused window to the right"},{name:"move-up",title:"Snap Up",icon:"window-positions/moveUpTemplate.png",description:"Snap the focused window up"},{name:"move-down",title:"Snap Down",icon:"window-positions/moveDownTemplate.png",description:"Snap the focused window down"},{name:"snap-top-left",title:"Snap Top Left",icon:"window-positions/snapTopLeftTemplate.png",description:"Snap the focused window to the top-left corner"},{name:"snap-top-right",title:"Snap Top Right",icon:"window-positions/snapTopRightTemplate.png",description:"Snap the focused window to the top-right corner"},{name:"snap-bottom-left",title:"Snap Bottom Left",icon:"window-positions/snapBottomLeftTemplate.png",description:"Snap the focused window to the bottom-left corner"},{name:"snap-bottom-right",title:"Snap Bottom Right",icon:"window-positions/snapBottomRightTemplate.png",description:"Snap the focused window to the bottom-right corner"}]},nudge:{title:"Nudge",items:[{name:"nudge-left",title:"Nudge Left",icon:"window-positions/nudgeLeftTemplate.png",description:"Nudge the focused window to the left"},{name:"nudge-right",title:"Nudge Right",icon:"window-positions/nudgeRightTemplate.png",description:"Nudge the focused window to the right"},{name:"nudge-up",title:"Nudge Up",icon:"window-positions/nudgeUpTemplate.png",description:"Nudge the focused window up"},{name:"nudge-down",title:"Nudge Down",icon:"window-positions/nudgeDownTemplate.png",description:"Nudge the focused window down"}]},size:{title:"Size",items:[{name:"larger",title:"Make Larger",icon:"window-positions/makeLargerTemplate.png",description:"Increase the size of the focused window"},{name:"smaller",title:"Make Smaller",icon:"window-positions/makeSmallerTemplate.png",description:"Decrease the size of the focused window"}]},other:{title:"Other",items:[{name:"center",title:"Center",icon:"window-positions/centerTemplate.png",description:"Center the focused window on the screen"},{name:"upper-center",title:"Upper Center",icon:"window-positions/upperCenterTemplate.png",description:"Move the focused window to the upper-center"},{name:"restore",title:"Restore",icon:"window-positions/restoreTemplate.png",description:"Restore the focused window to its previous size"},{name:"stash-left",title:"Stash Left",icon:"window-positions/hideoutLeftTemplate.png",description:"Stash the focused window to the left"},{name:"stash-right",title:"Stash Right",icon:"window-positions/hideoutRightTemplate.png",description:"Stash the focused window to the right"},{name:"stash-up",title:"Stash Up",icon:"window-positions/stashUpTemplate.png",description:"Stash the focused window upward"},{name:"stash-down",title:"Stash Down",icon:"window-positions/hideoutBottomTemplate.png",description:"Stash the focused window downward"},{name:"unstash",title:"Unstash",icon:"window-positions/untuckAllTemplate.png",description:"Unstash all windows"},{name:"cycle-stashed",title:"Cycle Stashed",icon:"window-positions/cycleStashedTemplate.png",description:"Cycle through stashed windows"},{name:"toggle-stashed",title:"Toggle Stashed",icon:"window-positions/toggleTuckedTemplate.png",description:"Toggle the stashed state of the focused window"},{name:"unstash-all",title:"Unstash All",icon:"window-positions/untuckAllTemplate.png",description:"Unstash all windows"},{name:"stash-all",title:"Stash All",icon:"window-positions/stashAllTemplate.png",description:"Stash all windows"},{name:"stash-all-but-front",title:"Stash All But Front",icon:"window-positions/stashAllButFront.png",description:"Stash all windows except the front"}]},multipleWindows:{title:"Multiple Windows",items:[{name:"app-next-display",title:"App Next Display",icon:"window-positions/nextDisplayTemplate.png",description:"Move the application to the next display"},{name:"app-prev-display",title:"App Previous Display",icon:"window-positions/prevDisplayTemplate.png",description:"Move the application to the previous display"},{name:"app-left-half",title:"App Left Half",icon:"window-positions/leftHalfTemplate.png",description:"Resize the application to the left half of the screen"},{name:"app-right-half",title:"App Right Half",icon:"window-positions/rightHalfTemplate.png",description:"Resize the application to the right half of the screen"}]}};var l=require("react"),h=require("react/jsx-runtime");function T(){let[e,i]=(0,l.useState)();(0,l.useEffect)(()=>{w().then(r=>{i(r)})},[]);let o=e===void 0,n=e==="rectangle-pro"?u:g,p=e==="rectangle-pro"?"Find a Rectangle Pro action":"Find a Rectangle action";return(0,h.jsx)(t.Grid,{inset:t.Grid.Inset.Medium,searchBarPlaceholder:p,isLoading:o,children:Object.values(n).map(r=>(0,h.jsx)(t.Grid.Section,{title:r.title,children:r.items.map(({name:a,title:d,icon:m,description:f})=>(0,h.jsx)(t.Grid.Item,{content:{value:{source:{light:m,dark:m.replace(".png","@dark.png")}},tooltip:f},title:d,subtitle:f,actions:(0,h.jsxs)(t.ActionPanel,{children:[(0,h.jsx)(t.Action,{title:`Execute ${d}`,onAction:()=>R(a)(),icon:t.Icon.Play}),(0,h.jsx)(t.Action.CreateQuicklink,{title:`Create Quicklink for ${d}`,icon:t.Icon.Link,quicklink:{link:`${e}://execute-action?name=${a}`,name:d}})]})},a))},r.title))})}var R=e=>async()=>{let i=await w();if(i==="none")return;let o=`${i}://execute-action?name=${e}`;try{await(0,t.getFrontmostApplication)()}catch(n){(0,t.captureException)(n),await(0,t.showToast)({style:t.Toast.Style.Failure,title:`Failed to run action "${e}: unable to obtain focused window"`});return}await(0,t.closeMainWindow)();try{await(0,t.open)(o)}catch(n){(0,t.captureException)(n),await(0,t.showToast)({style:t.Toast.Style.Failure,title:`Failed to run action "${e}"`})}};0&&(module.exports={buildCommand});
