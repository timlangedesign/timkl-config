"use strict";var c=Object.defineProperty;var $=Object.getOwnPropertyDescriptor;var d=Object.getOwnPropertyNames;var h=Object.prototype.hasOwnProperty;var m=(n,t)=>{for(var o in t)c(n,o,{get:t[o],enumerable:!0})},y=(n,t,o,s)=>{if(t&&typeof t=="object"||typeof t=="function")for(let r of d(t))!h.call(n,r)&&r!==o&&c(n,r,{get:()=>t[r],enumerable:!(s=$(t,r))||s.enumerable});return n};var A=n=>y(c({},"__esModule",{value:!0}),n);var I={};m(I,{default:()=>f});module.exports=A(I);var e=require("@raycast/api"),l=require("fs"),a=require("react/jsx-runtime"),u=(0,e.getPreferenceValues)(),i=u.homedir,p=u.layout;function f(){return p=="List"?(0,a.jsx)(e.List,{children:(0,l.readdirSync)(i,{withFileTypes:!0}).map(function(n){return n.name.charAt(0)!="."&&n.isDirectory()?(0,a.jsx)(e.List.Item,{icon:{fileIcon:`${n.path}/${n.name}`},title:n.name,actions:(0,a.jsx)(e.ActionPanel,{children:(0,a.jsx)(e.Action.Open,{title:`Open ${n.name}`,target:`${n.path}/${n.name}`})})},n.name):null})}):(0,a.jsx)(e.Grid,{columns:Number.parseInt(p),inset:e.Grid.Inset.Small,aspectRatio:"4/3",children:(0,l.readdirSync)(i,{withFileTypes:!0}).map(function(n){return n.name.charAt(0)!="."&&n.isDirectory()?(0,a.jsx)(e.Grid.Item,{content:{fileIcon:`${n.path}/${n.name}`},title:n.name,actions:(0,a.jsx)(e.ActionPanel,{children:(0,a.jsx)(e.Action.Open,{title:`Open ${n.name}`,target:`${n.path}/${n.name}`})})},n.name):null})})}
