(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-690b8455"],{"76f4":function(t,e,n){"use strict";n.r(e);var r=function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",{staticClass:"dashboard-container"},[n("div",{staticClass:"dashboard-text"},[t._v("Hi "+t._s(t.name)+", 欢迎来到 HyperfAdmin. ")]),t._v(" "),n("el-row",{staticClass:"moduleList",attrs:{gutter:20}},t._l(t.moduleList,(function(e){return n("el-col",{key:e.name,attrs:{xs:8,sm:6,md:4,lg:3,xl:2}},[n("el-card",{staticClass:"moduleCard",attrs:{shadow:"hover"},nativeOn:{click:function(n){return t.gotoModule(e.name)}}},[t._v("\n        "+t._s(e.label||e.name)+"\n      ")])],1)})),1)],1)},o=[],s=(n("8e6e"),n("ac6a"),n("456d"),n("7f7f"),n("bd86")),a=n("2f62");function c(t,e){var n=Object.keys(t);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(t);e&&(r=r.filter((function(e){return Object.getOwnPropertyDescriptor(t,e).enumerable}))),n.push.apply(n,r)}return n}function i(t){for(var e=1;e<arguments.length;e++){var n=null!=arguments[e]?arguments[e]:{};e%2?c(Object(n),!0).forEach((function(e){Object(s["a"])(t,e,n[e])})):Object.getOwnPropertyDescriptors?Object.defineProperties(t,Object.getOwnPropertyDescriptors(n)):c(Object(n)).forEach((function(e){Object.defineProperty(t,e,Object.getOwnPropertyDescriptor(n,e))}))}return t}var u={name:"Dashboard",data:function(){return{moduleList:this.getSetting("system_module")}},computed:i(i({},Object(a["b"])(["name","roles"])),{},{moduleName:function(){return console.log(this.$store.app),this.$store.state.app.moduleName}}),methods:{gotoModule:function(t){location.href="".concat(location.origin,"/").concat(t,"/#/dashboard")},getSetting:function(t){return this.$store.state.settings[t]}}},l=u,d=(n("f554"),n("2877")),f=Object(d["a"])(l,r,o,!1,null,"267fad7e",null);e["default"]=f.exports},b133:function(t,e,n){},f554:function(t,e,n){"use strict";n("b133")}}]);