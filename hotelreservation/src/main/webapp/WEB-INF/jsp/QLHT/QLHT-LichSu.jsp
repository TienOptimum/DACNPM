<html lang="en">
<%@ page contentType="text/html; charset=UTF-8" %>
<head>
   <meta charset="utf-8">
   <title>SHOTEL</title>
   <base href="/">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="icon" type="image/x-icon" href="favicon.ico">
   <link href="https://fonts.googleapis.com/icon?family=Material+Icons|Material+Icons+Outlined" rel="stylesheet">
   <link rel="stylesheet"  href="css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
   <script src="https://apis.google.com/_/scs/apps-static/_/js/k=oz.gapi.vi.OqeHn6JG0ew.O/m=auth2/rt=j/sv=1/d=1/ed=1/am=wQE/rs=AGLTcCNpDL4OrveV-s5ATjWVth_wbuLQqA/cb=gapi.loaded_0" async=""></script><script src="https://apis.google.com/js/platform.js?onload=onLoad" gapi_processed="true"></script>
   <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500" rel="stylesheet">
   <style type="text/css">
      body,
      html {
         height: 100%;
      }
      .app-loading {
         display: flex;
         flex-direction: column;
         align-items: center;
         justify-content: center;
         height: 100%;
      }
      #image {
         height: 260px;
         width: 180px;
         background:
                 url('/assets/img/sprite.png') 0px -0px;
         background-repeat: no-repeat;
      }
   </style>
   <link rel="stylesheet" href="css/styles.css">
   <style></style>
   <script charset="utf-8" src="1.d8b1a80d404fed8a7a5e.js"></script><script charset="utf-8" src="0.6b42a3ddf543bb988c41.js"></script><script charset="utf-8" src="4.5285356e2ef5104265d0.js"></script>
   <style>[_nghost-c1]     .mat-drawer-side{border-right:none}[_nghost-c1]     .mat-input-element:disabled{color:#212529}[_nghost-c1]     .mat-form-field-appearance-legacy.mat-form-field-disabled .mat-form-field-underline{background-color:rgba(0,0,0,.22)!important;background-image:none!important}[_nghost-c1]     .mat-card{padding:0!important}[_nghost-c1]     .mat-card .mat-icon{color:rgba(0,0,0,.7)}</style>
   <style>.mat-drawer-container{position:relative;z-index:1;box-sizing:border-box;-webkit-overflow-scrolling:touch;display:block;overflow:hidden}.mat-drawer-container[fullscreen]{top:0;left:0;right:0;bottom:0;position:absolute}.mat-drawer-container[fullscreen].mat-drawer-opened{overflow:hidden}.mat-drawer-container.mat-drawer-container-explicit-backdrop .mat-drawer-side{z-index:3}.mat-drawer-container.ng-animate-disabled .mat-drawer-backdrop,.mat-drawer-container.ng-animate-disabled .mat-drawer-content,.ng-animate-disabled .mat-drawer-container .mat-drawer-backdrop,.ng-animate-disabled .mat-drawer-container .mat-drawer-content{transition:none}.mat-drawer-backdrop{top:0;left:0;right:0;bottom:0;position:absolute;display:block;z-index:3;visibility:hidden}.mat-drawer-backdrop.mat-drawer-shown{visibility:visible}.mat-drawer-transition .mat-drawer-backdrop{transition-duration:.4s;transition-timing-function:cubic-bezier(.25,.8,.25,1);transition-property:background-color,visibility}@media (-ms-high-contrast:active){.mat-drawer-backdrop{opacity:.5}}.mat-drawer-content{position:relative;z-index:1;display:block;height:100%;overflow:auto}.mat-drawer-transition .mat-drawer-content{transition-duration:.4s;transition-timing-function:cubic-bezier(.25,.8,.25,1);transition-property:transform,margin-left,margin-right}.mat-drawer{position:relative;z-index:4;display:block;position:absolute;top:0;bottom:0;z-index:3;outline:0;box-sizing:border-box;overflow-y:auto;transform:translate3d(-100%,0,0)}@media (-ms-high-contrast:active){.mat-drawer,[dir=rtl] .mat-drawer.mat-drawer-end{border-right:solid 1px currentColor}}@media (-ms-high-contrast:active){.mat-drawer.mat-drawer-end,[dir=rtl] .mat-drawer{border-left:solid 1px currentColor;border-right:none}}.mat-drawer.mat-drawer-side{z-index:2}.mat-drawer.mat-drawer-end{right:0;transform:translate3d(100%,0,0)}[dir=rtl] .mat-drawer{transform:translate3d(100%,0,0)}[dir=rtl] .mat-drawer.mat-drawer-end{left:0;right:auto;transform:translate3d(-100%,0,0)}.mat-drawer-inner-container{width:100%;height:100%;overflow:auto;-webkit-overflow-scrolling:touch}.mat-sidenav-fixed{position:fixed}</style>
   <style>.nav-link[_ngcontent-c4]{text-transform:none!important}.off-canvas-sidebar[_ngcontent-c4]   .nav[_ngcontent-c4]   i[_ngcontent-c4], .sidebar[_ngcontent-c4]   .nav[_ngcontent-c4]   i[_ngcontent-c4]{font-size:24px;float:left;margin-right:15px;line-height:30px;width:30px;text-align:center}.off-canvas-sidebar[_ngcontent-c4]   .nav[_ngcontent-c4]   p[_ngcontent-c4], .sidebar[_ngcontent-c4]   .nav[_ngcontent-c4]   p[_ngcontent-c4]{margin:0;line-height:30px;font-size:12px;font-weight:600;text-transform:none}.nav[_ngcontent-c4]{display:list-item!important}</style>
   <style>.card[_ngcontent-c5]{color:rgba(0,0,0,.6)}.room-panel[_ngcontent-c5]{flex-grow:1;min-width:700px;overflow-x:auto;padding-top:14px;width:calc(100vh - 710px)}.mat-expansion-panel[_ngcontent-c5]:not([class*=mat-elevation-z]){box-shadow:0 3px 1px -2px rgba(0,0,0,.2),0 2px 2px 0 rgba(0,0,0,.14),0 1px 5px 0 rgba(0,0,0,.12)}.mat-expansion-panel[_ngcontent-c5]{border-radius:0}[_nghost-c5]     .mat-tab-body-wrapper{height:100%!important}[_nghost-c5]     .mat-card{padding:0}[_nghost-c5]     .mat-card .mat-icon{color:rgba(0,0,0,.7)}.room-name[_ngcontent-c5]{line-height:40px;text-align:left;width:120px;margin-left:.75rem;font-size:15px}.icon-text[_ngcontent-c5]   span[_ngcontent-c5]{margin-left:.5rem}.room-list-panel[_ngcontent-c5]{margin-top:-1rem}.rent-room-header[_ngcontent-c5]{width:250px}.rent-room-name[_ngcontent-c5]{line-height:40px;text-align:left;margin-left:.75rem;font-size:15px}.icon-yellow[_ngcontent-c5]{color:#ffd600!important}.icon-black[_ngcontent-c5]{color:#000!important}.left-text[_ngcontent-c5]{width:90px}</style>
   <style>.mat-form-field{display:inline-block;position:relative;text-align:left}[dir=rtl] .mat-form-field{text-align:right}.mat-form-field-wrapper{position:relative}.mat-form-field-flex{display:inline-flex;align-items:baseline;box-sizing:border-box;width:100%}.mat-form-field-prefix,.mat-form-field-suffix{white-space:nowrap;flex:none;position:relative}.mat-form-field-infix{display:block;position:relative;flex:auto;min-width:0;width:180px}@media (-ms-high-contrast:active){.mat-form-field-infix{border-image:linear-gradient(transparent,transparent)}}.mat-form-field-label-wrapper{position:absolute;left:0;box-sizing:content-box;width:100%;height:100%;overflow:hidden;pointer-events:none}[dir=rtl] .mat-form-field-label-wrapper{left:auto;right:0}.mat-form-field-label{position:absolute;left:0;font:inherit;pointer-events:none;width:100%;white-space:nowrap;text-overflow:ellipsis;overflow:hidden;transform-origin:0 0;transition:transform .4s cubic-bezier(.25,.8,.25,1),color .4s cubic-bezier(.25,.8,.25,1),width .4s cubic-bezier(.25,.8,.25,1);display:none}[dir=rtl] .mat-form-field-label{transform-origin:100% 0;left:auto;right:0}.mat-form-field-can-float.mat-form-field-should-float .mat-form-field-label,.mat-form-field-empty.mat-form-field-label{display:block}.mat-form-field-autofill-control:-webkit-autofill+.mat-form-field-label-wrapper .mat-form-field-label{display:none}.mat-form-field-can-float .mat-form-field-autofill-control:-webkit-autofill+.mat-form-field-label-wrapper .mat-form-field-label{display:block;transition:none}.mat-input-server:focus+.mat-form-field-label-wrapper .mat-form-field-label,.mat-input-server[placeholder]:not(:placeholder-shown)+.mat-form-field-label-wrapper .mat-form-field-label{display:none}.mat-form-field-can-float .mat-input-server:focus+.mat-form-field-label-wrapper .mat-form-field-label,.mat-form-field-can-float .mat-input-server[placeholder]:not(:placeholder-shown)+.mat-form-field-label-wrapper .mat-form-field-label{display:block}.mat-form-field-label:not(.mat-form-field-empty){transition:none}.mat-form-field-underline{position:absolute;width:100%;pointer-events:none;transform:scaleY(1.0001)}.mat-form-field-ripple{position:absolute;left:0;width:100%;transform-origin:50%;transform:scaleX(.5);opacity:0;transition:background-color .3s cubic-bezier(.55,0,.55,.2)}.mat-form-field.mat-focused .mat-form-field-ripple,.mat-form-field.mat-form-field-invalid .mat-form-field-ripple{opacity:1;transform:scaleX(1);transition:transform .3s cubic-bezier(.25,.8,.25,1),opacity .1s cubic-bezier(.25,.8,.25,1),background-color .3s cubic-bezier(.25,.8,.25,1)}.mat-form-field-subscript-wrapper{position:absolute;box-sizing:border-box;width:100%;overflow:hidden}.mat-form-field-label-wrapper .mat-icon,.mat-form-field-subscript-wrapper .mat-icon{width:1em;height:1em;font-size:inherit;vertical-align:baseline}.mat-form-field-hint-wrapper{display:flex}.mat-form-field-hint-spacer{flex:1 0 1em}.mat-error{display:block}.mat-form-field-control-wrapper{position:relative}.mat-form-field._mat-animation-noopable .mat-form-field-label,.mat-form-field._mat-animation-noopable .mat-form-field-ripple{transition:none}</style>
   <style>.mat-form-field-appearance-fill .mat-form-field-flex{border-radius:4px 4px 0 0;padding:.75em .75em 0 .75em}@media (-ms-high-contrast:active){.mat-form-field-appearance-fill .mat-form-field-flex{outline:solid 1px}}.mat-form-field-appearance-fill .mat-form-field-underline::before{content:'';display:block;position:absolute;bottom:0;height:1px;width:100%}.mat-form-field-appearance-fill .mat-form-field-ripple{bottom:0;height:2px}@media (-ms-high-contrast:active){.mat-form-field-appearance-fill .mat-form-field-ripple{height:0;border-top:solid 2px}}.mat-form-field-appearance-fill:not(.mat-form-field-disabled) .mat-form-field-flex:hover~.mat-form-field-underline .mat-form-field-ripple{opacity:1;transform:none;transition:opacity .6s cubic-bezier(.25,.8,.25,1)}.mat-form-field-appearance-fill._mat-animation-noopable:not(.mat-form-field-disabled) .mat-form-field-flex:hover~.mat-form-field-underline .mat-form-field-ripple{transition:none}.mat-form-field-appearance-fill .mat-form-field-subscript-wrapper{padding:0 1em}</style>
   <style>.mat-input-element{font:inherit;background:0 0;color:currentColor;border:none;outline:0;padding:0;margin:0;width:100%;max-width:100%;vertical-align:bottom;text-align:inherit}.mat-input-element:-moz-ui-invalid{box-shadow:none}.mat-input-element::-ms-clear,.mat-input-element::-ms-reveal{display:none}.mat-input-element,.mat-input-element::-webkit-search-cancel-button,.mat-input-element::-webkit-search-decoration,.mat-input-element::-webkit-search-results-button,.mat-input-element::-webkit-search-results-decoration{-webkit-appearance:none}.mat-input-element::-webkit-caps-lock-indicator,.mat-input-element::-webkit-contacts-auto-fill-button,.mat-input-element::-webkit-credentials-auto-fill-button{visibility:hidden}.mat-input-element[type=date]::after,.mat-input-element[type=datetime-local]::after,.mat-input-element[type=datetime]::after,.mat-input-element[type=month]::after,.mat-input-element[type=time]::after,.mat-input-element[type=week]::after{content:' ';white-space:pre;width:1px}.mat-input-element::-webkit-calendar-picker-indicator,.mat-input-element::-webkit-clear-button,.mat-input-element::-webkit-inner-spin-button{font-size:.75em}.mat-input-element::placeholder{-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;transition:color .4s .133s cubic-bezier(.25,.8,.25,1)}.mat-input-element::-moz-placeholder{-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;transition:color .4s .133s cubic-bezier(.25,.8,.25,1)}.mat-input-element::-webkit-input-placeholder{-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;transition:color .4s .133s cubic-bezier(.25,.8,.25,1)}.mat-input-element:-ms-input-placeholder{-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;transition:color .4s .133s cubic-bezier(.25,.8,.25,1)}.mat-form-field-hide-placeholder .mat-input-element::placeholder{color:transparent!important;-webkit-text-fill-color:transparent;transition:none}.mat-form-field-hide-placeholder .mat-input-element::-moz-placeholder{color:transparent!important;-webkit-text-fill-color:transparent;transition:none}.mat-form-field-hide-placeholder .mat-input-element::-webkit-input-placeholder{color:transparent!important;-webkit-text-fill-color:transparent;transition:none}.mat-form-field-hide-placeholder .mat-input-element:-ms-input-placeholder{color:transparent!important;-webkit-text-fill-color:transparent;transition:none}textarea.mat-input-element{resize:vertical;overflow:auto}textarea.mat-input-element.cdk-textarea-autosize{resize:none}textarea.mat-input-element{padding:2px 0;margin:-2px 0}select.mat-input-element{-moz-appearance:none;-webkit-appearance:none;position:relative;background-color:transparent;display:inline-flex;box-sizing:border-box;padding-top:1em;top:-1em;margin-bottom:-1em}select.mat-input-element::-ms-expand{display:none}select.mat-input-element::-moz-focus-inner{border:0}select.mat-input-element:not(:disabled){cursor:pointer}select.mat-input-element::-ms-value{color:inherit;background:0 0}@media (-ms-high-contrast:active){.mat-focused select.mat-input-element::-ms-value{color:inherit}}.mat-form-field-type-mat-native-select .mat-form-field-infix::after{content:'';width:0;height:0;border-left:5px solid transparent;border-right:5px solid transparent;border-top:5px solid;position:absolute;top:50%;right:0;margin-top:-2.5px;pointer-events:none}[dir=rtl] .mat-form-field-type-mat-native-select .mat-form-field-infix::after{right:auto;left:0}.mat-form-field-type-mat-native-select .mat-input-element{padding-right:15px}[dir=rtl] .mat-form-field-type-mat-native-select .mat-input-element{padding-right:0;padding-left:15px}.mat-form-field-type-mat-native-select .mat-form-field-label-wrapper{max-width:calc(100% - 10px)}.mat-form-field-type-mat-native-select.mat-form-field-appearance-outline .mat-form-field-infix::after{margin-top:-5px}.mat-form-field-type-mat-native-select.mat-form-field-appearance-fill .mat-form-field-infix::after{margin-top:-10px}</style>
   <style>.mat-form-field-appearance-legacy .mat-form-field-label{transform:perspective(100px);-ms-transform:none}.mat-form-field-appearance-legacy .mat-form-field-prefix .mat-icon,.mat-form-field-appearance-legacy .mat-form-field-suffix .mat-icon{width:1em}.mat-form-field-appearance-legacy .mat-form-field-prefix .mat-icon-button,.mat-form-field-appearance-legacy .mat-form-field-suffix .mat-icon-button{font:inherit;vertical-align:baseline}.mat-form-field-appearance-legacy .mat-form-field-prefix .mat-icon-button .mat-icon,.mat-form-field-appearance-legacy .mat-form-field-suffix .mat-icon-button .mat-icon{font-size:inherit}.mat-form-field-appearance-legacy .mat-form-field-underline{height:1px}@media (-ms-high-contrast:active){.mat-form-field-appearance-legacy .mat-form-field-underline{height:0;border-top:solid 1px}}.mat-form-field-appearance-legacy .mat-form-field-ripple{top:0;height:2px;overflow:hidden}@media (-ms-high-contrast:active){.mat-form-field-appearance-legacy .mat-form-field-ripple{height:0;border-top:solid 2px}}.mat-form-field-appearance-legacy.mat-form-field-disabled .mat-form-field-underline{background-position:0;background-color:transparent}@media (-ms-high-contrast:active){.mat-form-field-appearance-legacy.mat-form-field-disabled .mat-form-field-underline{border-top-style:dotted;border-top-width:2px}}.mat-form-field-appearance-legacy.mat-form-field-invalid:not(.mat-focused) .mat-form-field-ripple{height:1px}</style>
   <style>.mat-form-field-appearance-outline .mat-form-field-wrapper{margin:.25em 0}.mat-form-field-appearance-outline .mat-form-field-flex{padding:0 .75em 0 .75em;margin-top:-.25em;position:relative}.mat-form-field-appearance-outline .mat-form-field-prefix,.mat-form-field-appearance-outline .mat-form-field-suffix{top:.25em}.mat-form-field-appearance-outline .mat-form-field-outline{display:flex;position:absolute;top:.25em;left:0;right:0;bottom:0;pointer-events:none}.mat-form-field-appearance-outline .mat-form-field-outline-end,.mat-form-field-appearance-outline .mat-form-field-outline-start{border:1px solid currentColor;min-width:5px}.mat-form-field-appearance-outline .mat-form-field-outline-start{border-radius:5px 0 0 5px;border-right-style:none}[dir=rtl] .mat-form-field-appearance-outline .mat-form-field-outline-start{border-right-style:solid;border-left-style:none;border-radius:0 5px 5px 0}.mat-form-field-appearance-outline .mat-form-field-outline-end{border-radius:0 5px 5px 0;border-left-style:none;flex-grow:1}[dir=rtl] .mat-form-field-appearance-outline .mat-form-field-outline-end{border-left-style:solid;border-right-style:none;border-radius:5px 0 0 5px}.mat-form-field-appearance-outline .mat-form-field-outline-gap{border-radius:.000001px;border:1px solid currentColor;border-left-style:none;border-right-style:none}.mat-form-field-appearance-outline.mat-form-field-can-float.mat-form-field-should-float .mat-form-field-outline-gap{border-top-color:transparent}.mat-form-field-appearance-outline .mat-form-field-outline-thick{opacity:0}.mat-form-field-appearance-outline .mat-form-field-outline-thick .mat-form-field-outline-end,.mat-form-field-appearance-outline .mat-form-field-outline-thick .mat-form-field-outline-gap,.mat-form-field-appearance-outline .mat-form-field-outline-thick .mat-form-field-outline-start{border-width:2px;transition:border-color .3s cubic-bezier(.25,.8,.25,1)}.mat-form-field-appearance-outline.mat-focused .mat-form-field-outline,.mat-form-field-appearance-outline.mat-form-field-invalid .mat-form-field-outline{opacity:0;transition:opacity .1s cubic-bezier(.25,.8,.25,1)}.mat-form-field-appearance-outline.mat-focused .mat-form-field-outline-thick,.mat-form-field-appearance-outline.mat-form-field-invalid .mat-form-field-outline-thick{opacity:1}.mat-form-field-appearance-outline:not(.mat-form-field-disabled) .mat-form-field-flex:hover .mat-form-field-outline{opacity:0;transition:opacity .6s cubic-bezier(.25,.8,.25,1)}.mat-form-field-appearance-outline:not(.mat-form-field-disabled) .mat-form-field-flex:hover .mat-form-field-outline-thick{opacity:1}.mat-form-field-appearance-outline .mat-form-field-subscript-wrapper{padding:0 1em}.mat-form-field-appearance-outline._mat-animation-noopable .mat-form-field-outline,.mat-form-field-appearance-outline._mat-animation-noopable .mat-form-field-outline-end,.mat-form-field-appearance-outline._mat-animation-noopable .mat-form-field-outline-gap,.mat-form-field-appearance-outline._mat-animation-noopable .mat-form-field-outline-start,.mat-form-field-appearance-outline._mat-animation-noopable:not(.mat-form-field-disabled) .mat-form-field-flex:hover~.mat-form-field-outline{transition:none}</style>
   <style>.mat-form-field-appearance-standard .mat-form-field-flex{padding-top:.75em}.mat-form-field-appearance-standard .mat-form-field-underline{height:1px}@media (-ms-high-contrast:active){.mat-form-field-appearance-standard .mat-form-field-underline{height:0;border-top:solid 1px}}.mat-form-field-appearance-standard .mat-form-field-ripple{bottom:0;height:2px}@media (-ms-high-contrast:active){.mat-form-field-appearance-standard .mat-form-field-ripple{height:0;border-top:2px}}.mat-form-field-appearance-standard.mat-form-field-disabled .mat-form-field-underline{background-position:0;background-color:transparent}@media (-ms-high-contrast:active){.mat-form-field-appearance-standard.mat-form-field-disabled .mat-form-field-underline{border-top-style:dotted;border-top-width:2px}}.mat-form-field-appearance-standard:not(.mat-form-field-disabled) .mat-form-field-flex:hover~.mat-form-field-underline .mat-form-field-ripple{opacity:1;transform:none;transition:opacity .6s cubic-bezier(.25,.8,.25,1)}.mat-form-field-appearance-standard._mat-animation-noopable:not(.mat-form-field-disabled) .mat-form-field-flex:hover~.mat-form-field-underline .mat-form-field-ripple{transition:none}</style>
   <style>.mat-select{display:inline-block;width:100%;outline:0}.mat-select-trigger{display:inline-table;cursor:pointer;position:relative;box-sizing:border-box}.mat-select-disabled .mat-select-trigger{-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;cursor:default}.mat-select-value{display:table-cell;max-width:0;width:100%;overflow:hidden;text-overflow:ellipsis;white-space:nowrap}.mat-select-value-text{white-space:nowrap;overflow:hidden;text-overflow:ellipsis}.mat-select-arrow-wrapper{display:table-cell;vertical-align:middle}.mat-form-field-appearance-fill .mat-select-arrow-wrapper{transform:translateY(-50%)}.mat-form-field-appearance-outline .mat-select-arrow-wrapper{transform:translateY(-25%)}.mat-form-field-appearance-standard.mat-form-field-has-label .mat-select:not(.mat-select-empty) .mat-select-arrow-wrapper{transform:translateY(-50%)}.mat-form-field-appearance-standard .mat-select.mat-select-empty .mat-select-arrow-wrapper{transition:transform .4s cubic-bezier(.25,.8,.25,1)}._mat-animation-noopable.mat-form-field-appearance-standard .mat-select.mat-select-empty .mat-select-arrow-wrapper{transition:none}.mat-select-arrow{width:0;height:0;border-left:5px solid transparent;border-right:5px solid transparent;border-top:5px solid;margin:0 4px}.mat-select-panel-wrap{flex-basis:100%}.mat-select-panel{min-width:112px;max-width:280px;overflow:auto;-webkit-overflow-scrolling:touch;padding-top:0;padding-bottom:0;max-height:256px;min-width:100%;border-radius:4px}@media (-ms-high-contrast:active){.mat-select-panel{outline:solid 1px}}.mat-select-panel .mat-optgroup-label,.mat-select-panel .mat-option{font-size:inherit;line-height:3em;height:3em}.mat-form-field-type-mat-select:not(.mat-form-field-disabled) .mat-form-field-flex{cursor:pointer}.mat-form-field-type-mat-select .mat-form-field-label{width:calc(100% - 18px)}.mat-select-placeholder{transition:color .4s .133s cubic-bezier(.25,.8,.25,1)}._mat-animation-noopable .mat-select-placeholder{transition:none}.mat-form-field-hide-placeholder .mat-select-placeholder{color:transparent;-webkit-text-fill-color:transparent;transition:none;display:block}</style>
   <style>.mat-option{white-space:nowrap;overflow:hidden;text-overflow:ellipsis;display:block;line-height:48px;height:48px;padding:0 16px;text-align:left;text-decoration:none;max-width:100%;position:relative;cursor:pointer;outline:0;display:flex;flex-direction:row;max-width:100%;box-sizing:border-box;align-items:center;-webkit-tap-highlight-color:transparent}.mat-option[disabled]{cursor:default}[dir=rtl] .mat-option{text-align:right}.mat-option .mat-icon{margin-right:16px;vertical-align:middle}.mat-option .mat-icon svg{vertical-align:top}[dir=rtl] .mat-option .mat-icon{margin-left:16px;margin-right:0}.mat-option[aria-disabled=true]{-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;cursor:default}.mat-optgroup .mat-option:not(.mat-option-multiple){padding-left:32px}[dir=rtl] .mat-optgroup .mat-option:not(.mat-option-multiple){padding-left:16px;padding-right:32px}@media (-ms-high-contrast:active){.mat-option{margin:0 1px}.mat-option.mat-active{border:solid 1px currentColor;margin:0}}.mat-option-text{display:inline-block;flex-grow:1;overflow:hidden;text-overflow:ellipsis}.mat-option .mat-option-ripple{top:0;left:0;right:0;bottom:0;position:absolute;pointer-events:none}@media (-ms-high-contrast:active){.mat-option .mat-option-ripple{opacity:.5}}.mat-option-pseudo-checkbox{margin-right:8px}[dir=rtl] .mat-option-pseudo-checkbox{margin-left:8px;margin-right:0}</style>
   <style>.mat-tab-group{display:flex;flex-direction:column}.mat-tab-group.mat-tab-group-inverted-header{flex-direction:column-reverse}.mat-tab-label{height:48px;padding:0 24px;cursor:pointer;box-sizing:border-box;opacity:.6;min-width:160px;text-align:center;display:inline-flex;justify-content:center;align-items:center;white-space:nowrap;position:relative}.mat-tab-label:focus{outline:0}.mat-tab-label:focus:not(.mat-tab-disabled){opacity:1}@media (-ms-high-contrast:active){.mat-tab-label:focus{outline:dotted 2px}}.mat-tab-label.mat-tab-disabled{cursor:default}@media (-ms-high-contrast:active){.mat-tab-label.mat-tab-disabled{opacity:.5}}.mat-tab-label .mat-tab-label-content{display:inline-flex;justify-content:center;align-items:center;white-space:nowrap}@media (-ms-high-contrast:active){.mat-tab-label{opacity:1}}@media (max-width:599px){.mat-tab-label{padding:0 12px}}@media (max-width:959px){.mat-tab-label{padding:0 12px}}.mat-tab-group[mat-stretch-tabs]>.mat-tab-header .mat-tab-label{flex-basis:0;flex-grow:1}.mat-tab-body-wrapper{position:relative;overflow:hidden;display:flex;transition:height .5s cubic-bezier(.35,0,.25,1)}.mat-tab-body{top:0;left:0;right:0;bottom:0;position:absolute;display:block;overflow:hidden;flex-basis:100%}.mat-tab-body.mat-tab-body-active{position:relative;overflow-x:hidden;overflow-y:auto;z-index:1;flex-grow:1}.mat-tab-group.mat-tab-group-dynamic-height .mat-tab-body.mat-tab-body-active{overflow-y:hidden}</style>
   <style>.mat-expansion-panel{box-sizing:content-box;display:block;margin:0;border-radius:4px;overflow:hidden;transition:margin 225ms cubic-bezier(.4,0,.2,1),box-shadow 280ms cubic-bezier(.4,0,.2,1)}.mat-accordion .mat-expansion-panel:not(.mat-expanded),.mat-accordion .mat-expansion-panel:not(.mat-expansion-panel-spacing){border-radius:0}.mat-accordion .mat-expansion-panel:first-of-type{border-top-right-radius:4px;border-top-left-radius:4px}.mat-accordion .mat-expansion-panel:last-of-type{border-bottom-right-radius:4px;border-bottom-left-radius:4px}@media (-ms-high-contrast:active){.mat-expansion-panel{outline:solid 1px}}.mat-expansion-panel._mat-animation-noopable,.mat-expansion-panel.ng-animate-disabled,.ng-animate-disabled .mat-expansion-panel{transition:none}.mat-expansion-panel-content{display:flex;flex-direction:column;overflow:visible}.mat-expansion-panel-body{padding:0 24px 16px}.mat-expansion-panel-spacing{margin:16px 0}.mat-accordion>.mat-expansion-panel-spacing:first-child,.mat-accordion>:first-child:not(.mat-expansion-panel) .mat-expansion-panel-spacing{margin-top:0}.mat-accordion>.mat-expansion-panel-spacing:last-child,.mat-accordion>:last-child:not(.mat-expansion-panel) .mat-expansion-panel-spacing{margin-bottom:0}.mat-action-row{border-top-style:solid;border-top-width:1px;display:flex;flex-direction:row;justify-content:flex-end;padding:16px 8px 16px 24px}.mat-action-row button.mat-button{margin-left:8px}[dir=rtl] .mat-action-row button.mat-button{margin-left:0;margin-right:8px}</style>
   <style>.mat-expansion-panel-header{display:flex;flex-direction:row;align-items:center;padding:0 24px;border-radius:inherit}.mat-expansion-panel-header:focus,.mat-expansion-panel-header:hover{outline:0}.mat-expansion-panel-header.mat-expanded:focus,.mat-expansion-panel-header.mat-expanded:hover{background:inherit}.mat-expansion-panel-header:not([aria-disabled=true]){cursor:pointer}.mat-content{display:flex;flex:1;flex-direction:row;overflow:hidden}.mat-expansion-panel-header-description,.mat-expansion-panel-header-title{display:flex;flex-grow:1;margin-right:16px}[dir=rtl] .mat-expansion-panel-header-description,[dir=rtl] .mat-expansion-panel-header-title{margin-right:0;margin-left:16px}.mat-expansion-panel-header-description{flex-grow:2}.mat-expansion-indicator::after{border-style:solid;border-width:0 2px 2px 0;content:'';display:inline-block;padding:3px;transform:rotate(45deg);vertical-align:middle}</style>
   <style>.mat-tab-header{display:flex;overflow:hidden;position:relative;flex-shrink:0}.mat-tab-label{height:48px;padding:0 24px;cursor:pointer;box-sizing:border-box;opacity:.6;min-width:160px;text-align:center;display:inline-flex;justify-content:center;align-items:center;white-space:nowrap;position:relative}.mat-tab-label:focus{outline:0}.mat-tab-label:focus:not(.mat-tab-disabled){opacity:1}@media (-ms-high-contrast:active){.mat-tab-label:focus{outline:dotted 2px}}.mat-tab-label.mat-tab-disabled{cursor:default}@media (-ms-high-contrast:active){.mat-tab-label.mat-tab-disabled{opacity:.5}}.mat-tab-label .mat-tab-label-content{display:inline-flex;justify-content:center;align-items:center;white-space:nowrap}@media (-ms-high-contrast:active){.mat-tab-label{opacity:1}}@media (max-width:599px){.mat-tab-label{min-width:72px}}.mat-ink-bar{position:absolute;bottom:0;height:2px;transition:.5s cubic-bezier(.35,0,.25,1)}.mat-tab-group-inverted-header .mat-ink-bar{bottom:auto;top:0}@media (-ms-high-contrast:active){.mat-ink-bar{outline:solid 2px;height:0}}.mat-tab-header-pagination{-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;position:relative;display:none;justify-content:center;align-items:center;min-width:32px;cursor:pointer;z-index:2;-webkit-tap-highlight-color:transparent;touch-action:none}.mat-tab-header-pagination-controls-enabled .mat-tab-header-pagination{display:flex}.mat-tab-header-pagination-before,.mat-tab-header-rtl .mat-tab-header-pagination-after{padding-left:4px}.mat-tab-header-pagination-before .mat-tab-header-pagination-chevron,.mat-tab-header-rtl .mat-tab-header-pagination-after .mat-tab-header-pagination-chevron{transform:rotate(-135deg)}.mat-tab-header-pagination-after,.mat-tab-header-rtl .mat-tab-header-pagination-before{padding-right:4px}.mat-tab-header-pagination-after .mat-tab-header-pagination-chevron,.mat-tab-header-rtl .mat-tab-header-pagination-before .mat-tab-header-pagination-chevron{transform:rotate(45deg)}.mat-tab-header-pagination-chevron{border-style:solid;border-width:2px 2px 0 0;content:'';height:8px;width:8px}.mat-tab-header-pagination-disabled{box-shadow:none;cursor:default}.mat-tab-label-container{display:flex;flex-grow:1;overflow:hidden;z-index:1}.mat-tab-list{flex-grow:1;position:relative;transition:transform .5s cubic-bezier(.35,0,.25,1)}.mat-tab-labels{display:flex}[mat-align-tabs=center] .mat-tab-labels{justify-content:center}[mat-align-tabs=end] .mat-tab-labels{justify-content:flex-end}</style>
   <script charset="utf-8" src="3.6c098552832d79f746cb.js"></script><script charset="utf-8" src="2.a3cbf4ac2200ddd71257.js"></script>
   <style>.mat-progress-bar{display:block;height:4px;overflow:hidden;position:relative;transition:opacity 250ms linear;width:100%}._mat-animation-noopable.mat-progress-bar{transition:none;animation:none}.mat-progress-bar .mat-progress-bar-element,.mat-progress-bar .mat-progress-bar-fill::after{height:100%;position:absolute;width:100%}.mat-progress-bar .mat-progress-bar-background{width:calc(100% + 10px)}@media (-ms-high-contrast:active){.mat-progress-bar .mat-progress-bar-background{display:none}}.mat-progress-bar .mat-progress-bar-buffer{transform-origin:top left;transition:transform 250ms ease}@media (-ms-high-contrast:active){.mat-progress-bar .mat-progress-bar-buffer{border-top:solid 5px;opacity:.5}}.mat-progress-bar .mat-progress-bar-secondary{display:none}.mat-progress-bar .mat-progress-bar-fill{animation:none;transform-origin:top left;transition:transform 250ms ease}@media (-ms-high-contrast:active){.mat-progress-bar .mat-progress-bar-fill{border-top:solid 4px}}.mat-progress-bar .mat-progress-bar-fill::after{animation:none;content:'';display:inline-block;left:0}.mat-progress-bar[dir=rtl],[dir=rtl] .mat-progress-bar{transform:rotateY(180deg)}.mat-progress-bar[mode=query]{transform:rotateZ(180deg)}.mat-progress-bar[mode=query][dir=rtl],[dir=rtl] .mat-progress-bar[mode=query]{transform:rotateZ(180deg) rotateY(180deg)}.mat-progress-bar[mode=indeterminate] .mat-progress-bar-fill,.mat-progress-bar[mode=query] .mat-progress-bar-fill{transition:none}.mat-progress-bar[mode=indeterminate] .mat-progress-bar-primary,.mat-progress-bar[mode=query] .mat-progress-bar-primary{-webkit-backface-visibility:hidden;backface-visibility:hidden;animation:mat-progress-bar-primary-indeterminate-translate 2s infinite linear;left:-145.166611%}.mat-progress-bar[mode=indeterminate] .mat-progress-bar-primary.mat-progress-bar-fill::after,.mat-progress-bar[mode=query] .mat-progress-bar-primary.mat-progress-bar-fill::after{-webkit-backface-visibility:hidden;backface-visibility:hidden;animation:mat-progress-bar-primary-indeterminate-scale 2s infinite linear}.mat-progress-bar[mode=indeterminate] .mat-progress-bar-secondary,.mat-progress-bar[mode=query] .mat-progress-bar-secondary{-webkit-backface-visibility:hidden;backface-visibility:hidden;animation:mat-progress-bar-secondary-indeterminate-translate 2s infinite linear;left:-54.888891%;display:block}.mat-progress-bar[mode=indeterminate] .mat-progress-bar-secondary.mat-progress-bar-fill::after,.mat-progress-bar[mode=query] .mat-progress-bar-secondary.mat-progress-bar-fill::after{-webkit-backface-visibility:hidden;backface-visibility:hidden;animation:mat-progress-bar-secondary-indeterminate-scale 2s infinite linear}.mat-progress-bar[mode=buffer] .mat-progress-bar-background{-webkit-backface-visibility:hidden;backface-visibility:hidden;animation:mat-progress-bar-background-scroll 250ms infinite linear;display:block}.mat-progress-bar._mat-animation-noopable .mat-progress-bar-background,.mat-progress-bar._mat-animation-noopable .mat-progress-bar-buffer,.mat-progress-bar._mat-animation-noopable .mat-progress-bar-fill,.mat-progress-bar._mat-animation-noopable .mat-progress-bar-fill::after,.mat-progress-bar._mat-animation-noopable .mat-progress-bar-primary,.mat-progress-bar._mat-animation-noopable .mat-progress-bar-primary.mat-progress-bar-fill::after,.mat-progress-bar._mat-animation-noopable .mat-progress-bar-secondary,.mat-progress-bar._mat-animation-noopable .mat-progress-bar-secondary.mat-progress-bar-fill::after{animation:none;transition:none}@keyframes mat-progress-bar-primary-indeterminate-translate{0%{transform:translateX(0)}20%{animation-timing-function:cubic-bezier(.5,0,.70173,.49582);transform:translateX(0)}59.15%{animation-timing-function:cubic-bezier(.30244,.38135,.55,.95635);transform:translateX(83.67142%)}100%{transform:translateX(200.61106%)}}@keyframes mat-progress-bar-primary-indeterminate-scale{0%{transform:scaleX(.08)}36.65%{animation-timing-function:cubic-bezier(.33473,.12482,.78584,1);transform:scaleX(.08)}69.15%{animation-timing-function:cubic-bezier(.06,.11,.6,1);transform:scaleX(.66148)}100%{transform:scaleX(.08)}}@keyframes mat-progress-bar-secondary-indeterminate-translate{0%{animation-timing-function:cubic-bezier(.15,0,.51506,.40969);transform:translateX(0)}25%{animation-timing-function:cubic-bezier(.31033,.28406,.8,.73371);transform:translateX(37.65191%)}48.35%{animation-timing-function:cubic-bezier(.4,.62704,.6,.90203);transform:translateX(84.38617%)}100%{transform:translateX(160.27778%)}}@keyframes mat-progress-bar-secondary-indeterminate-scale{0%{animation-timing-function:cubic-bezier(.15,0,.51506,.40969);transform:scaleX(.08)}19.15%{animation-timing-function:cubic-bezier(.31033,.28406,.8,.73371);transform:scaleX(.4571)}44.15%{animation-timing-function:cubic-bezier(.4,.62704,.6,.90203);transform:scaleX(.72796)}100%{transform:scaleX(.08)}}@keyframes mat-progress-bar-background-scroll{to{transform:translateX(-8px)}}</style>
   <style>.mat-tab-body-content{height:100%;overflow:auto}.mat-tab-group-dynamic-height .mat-tab-body-content{overflow:hidden}</style>
   <style>.mat-icon{background-repeat:no-repeat;display:inline-block;fill:currentColor;height:24px;width:24px}.mat-icon.mat-icon-inline{font-size:inherit;height:inherit;line-height:inherit;width:inherit}[dir=rtl] .mat-icon-rtl-mirror{transform:scale(-1,1)}.mat-form-field:not(.mat-form-field-appearance-legacy) .mat-form-field-prefix .mat-icon,.mat-form-field:not(.mat-form-field-appearance-legacy) .mat-form-field-suffix .mat-icon{display:block}.mat-form-field:not(.mat-form-field-appearance-legacy) .mat-form-field-prefix .mat-icon-button .mat-icon,.mat-form-field:not(.mat-form-field-appearance-legacy) .mat-form-field-suffix .mat-icon-button .mat-icon{margin:auto}</style>
   <style>.mat-card{transition:box-shadow 280ms cubic-bezier(.4,0,.2,1);display:block;position:relative;padding:16px;border-radius:4px}.mat-card .mat-divider-horizontal{position:absolute;left:0;width:100%}[dir=rtl] .mat-card .mat-divider-horizontal{left:auto;right:0}.mat-card .mat-divider-horizontal.mat-divider-inset{position:static;margin:0}[dir=rtl] .mat-card .mat-divider-horizontal.mat-divider-inset{margin-right:0}@media (-ms-high-contrast:active){.mat-card{outline:solid 1px}}.mat-card-actions,.mat-card-content,.mat-card-subtitle{display:block;margin-bottom:16px}.mat-card-title{display:block;margin-bottom:8px}.mat-card-actions{margin-left:-8px;margin-right:-8px;padding:8px 0}.mat-card-actions-align-end{display:flex;justify-content:flex-end}.mat-card-image{width:calc(100% + 32px);margin:0 -16px 16px -16px}.mat-card-footer{display:block;margin:0 -16px -16px -16px}.mat-card-actions .mat-button,.mat-card-actions .mat-raised-button{margin:0 8px}.mat-card-header{display:flex;flex-direction:row}.mat-card-header .mat-card-title{margin-bottom:12px}.mat-card-header-text{margin:0 16px}.mat-card-avatar{height:40px;width:40px;border-radius:50%;flex-shrink:0;object-fit:cover}.mat-card-title-group{display:flex;justify-content:space-between}.mat-card-sm-image{width:80px;height:80px}.mat-card-md-image{width:112px;height:112px}.mat-card-lg-image{width:152px;height:152px}.mat-card-xl-image{width:240px;height:240px;margin:-8px}.mat-card-title-group>.mat-card-xl-image{margin:-8px 0 8px 0}@media (max-width:599px){.mat-card-title-group{margin:0}.mat-card-xl-image{margin-left:0;margin-right:0}}.mat-card-content>:first-child,.mat-card>:first-child{margin-top:0}.mat-card-content>:last-child:not(.mat-card-footer),.mat-card>:last-child:not(.mat-card-footer){margin-bottom:0}.mat-card-image:first-child{margin-top:-16px;border-top-left-radius:inherit;border-top-right-radius:inherit}.mat-card>.mat-card-actions:last-child{margin-bottom:-8px;padding-bottom:0}.mat-card-actions .mat-button:first-child,.mat-card-actions .mat-raised-button:first-child{margin-left:0;margin-right:0}.mat-card-subtitle:not(:first-child),.mat-card-title:not(:first-child){margin-top:-4px}.mat-card-header .mat-card-subtitle:not(:first-child){margin-top:-8px}.mat-card>.mat-card-xl-image:first-child{margin-top:-8px}.mat-card>.mat-card-xl-image:last-child{margin-bottom:-8px}</style>
   <style>.mat-button .mat-button-focus-overlay,.mat-icon-button .mat-button-focus-overlay{opacity:0}.mat-button:hover .mat-button-focus-overlay,.mat-stroked-button:hover .mat-button-focus-overlay{opacity:.04}@media (hover:none){.mat-button:hover .mat-button-focus-overlay,.mat-stroked-button:hover .mat-button-focus-overlay{opacity:0}}.mat-button,.mat-flat-button,.mat-icon-button,.mat-stroked-button{box-sizing:border-box;position:relative;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;cursor:pointer;outline:0;border:none;-webkit-tap-highlight-color:transparent;display:inline-block;white-space:nowrap;text-decoration:none;vertical-align:baseline;text-align:center;margin:0;min-width:64px;line-height:36px;padding:0 16px;border-radius:4px;overflow:visible}.mat-button::-moz-focus-inner,.mat-flat-button::-moz-focus-inner,.mat-icon-button::-moz-focus-inner,.mat-stroked-button::-moz-focus-inner{border:0}.mat-button[disabled],.mat-flat-button[disabled],.mat-icon-button[disabled],.mat-stroked-button[disabled]{cursor:default}.mat-button.cdk-keyboard-focused .mat-button-focus-overlay,.mat-button.cdk-program-focused .mat-button-focus-overlay,.mat-flat-button.cdk-keyboard-focused .mat-button-focus-overlay,.mat-flat-button.cdk-program-focused .mat-button-focus-overlay,.mat-icon-button.cdk-keyboard-focused .mat-button-focus-overlay,.mat-icon-button.cdk-program-focused .mat-button-focus-overlay,.mat-stroked-button.cdk-keyboard-focused .mat-button-focus-overlay,.mat-stroked-button.cdk-program-focused .mat-button-focus-overlay{opacity:.12}.mat-button::-moz-focus-inner,.mat-flat-button::-moz-focus-inner,.mat-icon-button::-moz-focus-inner,.mat-stroked-button::-moz-focus-inner{border:0}.mat-raised-button{box-sizing:border-box;position:relative;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;cursor:pointer;outline:0;border:none;-webkit-tap-highlight-color:transparent;display:inline-block;white-space:nowrap;text-decoration:none;vertical-align:baseline;text-align:center;margin:0;min-width:64px;line-height:36px;padding:0 16px;border-radius:4px;overflow:visible;transform:translate3d(0,0,0);transition:background .4s cubic-bezier(.25,.8,.25,1),box-shadow 280ms cubic-bezier(.4,0,.2,1)}.mat-raised-button::-moz-focus-inner{border:0}.mat-raised-button[disabled]{cursor:default}.mat-raised-button.cdk-keyboard-focused .mat-button-focus-overlay,.mat-raised-button.cdk-program-focused .mat-button-focus-overlay{opacity:.12}.mat-raised-button::-moz-focus-inner{border:0}._mat-animation-noopable.mat-raised-button{transition:none;animation:none}.mat-stroked-button{border:1px solid currentColor;padding:0 15px;line-height:34px}.mat-stroked-button .mat-button-focus-overlay,.mat-stroked-button .mat-button-ripple.mat-ripple{top:-1px;left:-1px;right:-1px;bottom:-1px}.mat-fab{box-sizing:border-box;position:relative;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;cursor:pointer;outline:0;border:none;-webkit-tap-highlight-color:transparent;display:inline-block;white-space:nowrap;text-decoration:none;vertical-align:baseline;text-align:center;margin:0;min-width:64px;line-height:36px;padding:0 16px;border-radius:4px;overflow:visible;transform:translate3d(0,0,0);transition:background .4s cubic-bezier(.25,.8,.25,1),box-shadow 280ms cubic-bezier(.4,0,.2,1);min-width:0;border-radius:50%;width:56px;height:56px;padding:0;flex-shrink:0}.mat-fab::-moz-focus-inner{border:0}.mat-fab[disabled]{cursor:default}.mat-fab.cdk-keyboard-focused .mat-button-focus-overlay,.mat-fab.cdk-program-focused .mat-button-focus-overlay{opacity:.12}.mat-fab::-moz-focus-inner{border:0}._mat-animation-noopable.mat-fab{transition:none;animation:none}.mat-fab .mat-button-wrapper{padding:16px 0;display:inline-block;line-height:24px}.mat-mini-fab{box-sizing:border-box;position:relative;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;cursor:pointer;outline:0;border:none;-webkit-tap-highlight-color:transparent;display:inline-block;white-space:nowrap;text-decoration:none;vertical-align:baseline;text-align:center;margin:0;min-width:64px;line-height:36px;padding:0 16px;border-radius:4px;overflow:visible;transform:translate3d(0,0,0);transition:background .4s cubic-bezier(.25,.8,.25,1),box-shadow 280ms cubic-bezier(.4,0,.2,1);min-width:0;border-radius:50%;width:40px;height:40px;padding:0;flex-shrink:0}.mat-mini-fab::-moz-focus-inner{border:0}.mat-mini-fab[disabled]{cursor:default}.mat-mini-fab.cdk-keyboard-focused .mat-button-focus-overlay,.mat-mini-fab.cdk-program-focused .mat-button-focus-overlay{opacity:.12}.mat-mini-fab::-moz-focus-inner{border:0}._mat-animation-noopable.mat-mini-fab{transition:none;animation:none}.mat-mini-fab .mat-button-wrapper{padding:8px 0;display:inline-block;line-height:24px}.mat-icon-button{padding:0;min-width:0;width:40px;height:40px;flex-shrink:0;line-height:40px;border-radius:50%}.mat-icon-button .mat-icon,.mat-icon-button i{line-height:24px}.mat-button-focus-overlay,.mat-button-ripple.mat-ripple{top:0;left:0;right:0;bottom:0;position:absolute;pointer-events:none;border-radius:inherit}.mat-button-focus-overlay{opacity:0;transition:opacity .2s cubic-bezier(.35,0,.25,1),background-color .2s cubic-bezier(.35,0,.25,1)}._mat-animation-noopable .mat-button-focus-overlay{transition:none}@media (-ms-high-contrast:active){.mat-button-focus-overlay{background-color:#fff}}@media (-ms-high-contrast:black-on-white){.mat-button-focus-overlay{background-color:#000}}.mat-button-ripple-round{border-radius:50%;z-index:1}.mat-button .mat-button-wrapper>*,.mat-fab .mat-button-wrapper>*,.mat-flat-button .mat-button-wrapper>*,.mat-icon-button .mat-button-wrapper>*,.mat-mini-fab .mat-button-wrapper>*,.mat-raised-button .mat-button-wrapper>*,.mat-stroked-button .mat-button-wrapper>*{vertical-align:middle}.mat-form-field:not(.mat-form-field-appearance-legacy) .mat-form-field-prefix .mat-icon-button,.mat-form-field:not(.mat-form-field-appearance-legacy) .mat-form-field-suffix .mat-icon-button{display:block;font-size:inherit;width:2.5em;height:2.5em}@media (-ms-high-contrast:active){.mat-button,.mat-fab,.mat-flat-button,.mat-icon-button,.mat-mini-fab,.mat-raised-button{outline:solid 1px}}</style>
   <style>.mat-menu-panel{min-width:112px;max-width:280px;overflow:auto;-webkit-overflow-scrolling:touch;max-height:calc(100vh - 48px);border-radius:4px;outline:0}.mat-menu-panel.ng-animating{pointer-events:none}@media (-ms-high-contrast:active){.mat-menu-panel{outline:solid 1px}}.mat-menu-content:not(:empty){padding-top:8px;padding-bottom:8px}.mat-menu-item{-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;cursor:pointer;outline:0;border:none;-webkit-tap-highlight-color:transparent;white-space:nowrap;overflow:hidden;text-overflow:ellipsis;display:block;line-height:48px;height:48px;padding:0 16px;text-align:left;text-decoration:none;max-width:100%;position:relative}.mat-menu-item::-moz-focus-inner{border:0}.mat-menu-item[disabled]{cursor:default}[dir=rtl] .mat-menu-item{text-align:right}.mat-menu-item .mat-icon{margin-right:16px;vertical-align:middle}.mat-menu-item .mat-icon svg{vertical-align:top}[dir=rtl] .mat-menu-item .mat-icon{margin-left:16px;margin-right:0}@media (-ms-high-contrast:active){.mat-menu-item-highlighted,.mat-menu-item.cdk-keyboard-focused,.mat-menu-item.cdk-program-focused{outline:dotted 1px}}.mat-menu-item-submenu-trigger{padding-right:32px}.mat-menu-item-submenu-trigger::after{width:0;height:0;border-style:solid;border-width:5px 0 5px 5px;border-color:transparent transparent transparent currentColor;content:'';display:inline-block;position:absolute;top:50%;right:16px;transform:translateY(-50%)}[dir=rtl] .mat-menu-item-submenu-trigger{padding-right:16px;padding-left:32px}[dir=rtl] .mat-menu-item-submenu-trigger::after{right:auto;left:16px;transform:rotateY(180deg) translateY(-50%)}button.mat-menu-item{width:100%}.mat-menu-item .mat-menu-ripple{top:0;left:0;right:0;bottom:0;position:absolute;pointer-events:none}</style>
   <style>.mat-tooltip-panel{pointer-events:none!important}.mat-tooltip{color:#fff;border-radius:4px;margin:14px;max-width:250px;padding-left:8px;padding-right:8px;overflow:hidden;text-overflow:ellipsis}@media (-ms-high-contrast:active){.mat-tooltip{outline:solid 1px}}.mat-tooltip-handset{margin:24px;padding-left:16px;padding-right:16px}</style>
   <style>.changed[_ngcontent-c19]{background:#eaeff9}.mat-toolbar-single-row[_ngcontent-c19], [_nghost-c19]     .mat-toolbar-row{height:45px}.title-toolbar[_ngcontent-c19]{font-weight:400;font-size:14px;color:grey}[_nghost-c19]     .mat-toolbar{background-color:#fff}[_nghost-c19]     .mat-input-element:disabled{color:#212529!important}[_nghost-c19]     .mat-form-field-appearance-legacy.mat-form-field-disabled .mat-form-field-underline{background-color:rgba(0,0,0,.22)!important;background-image:none!important}</style>
   <style>.error-list[_ngcontent-c26]{list-style:none;-webkit-padding-start:0!important;padding-inline-start:0!important;font-size:14px}</style>
   <style>.mat-form-field-appearance-legacy .mat-form-field-prefix .mat-datepicker-toggle-default-icon,.mat-form-field-appearance-legacy .mat-form-field-suffix .mat-datepicker-toggle-default-icon{width:1em}.mat-form-field:not(.mat-form-field-appearance-legacy) .mat-form-field-prefix .mat-datepicker-toggle-default-icon,.mat-form-field:not(.mat-form-field-appearance-legacy) .mat-form-field-suffix .mat-datepicker-toggle-default-icon{display:block;width:1.5em;height:1.5em}.mat-form-field:not(.mat-form-field-appearance-legacy) .mat-form-field-prefix .mat-icon-button .mat-datepicker-toggle-default-icon,.mat-form-field:not(.mat-form-field-appearance-legacy) .mat-form-field-suffix .mat-icon-button .mat-datepicker-toggle-default-icon{margin:auto}</style>
   <style>@media (-ms-high-contrast:active){.mat-toolbar{outline:solid 1px}}.mat-toolbar-row,.mat-toolbar-single-row{display:flex;box-sizing:border-box;padding:0 16px;width:100%;flex-direction:row;align-items:center;white-space:nowrap}.mat-toolbar-multiple-rows{display:flex;box-sizing:border-box;flex-direction:column;width:100%}.mat-toolbar-multiple-rows{min-height:64px}.mat-toolbar-row,.mat-toolbar-single-row{height:64px}@media (max-width:599px){.mat-toolbar-multiple-rows{min-height:56px}.mat-toolbar-row,.mat-toolbar-single-row{height:56px}}</style>
   <style>mat-table{display:block}mat-header-row{min-height:56px}mat-footer-row,mat-row{min-height:48px}mat-footer-row,mat-header-row,mat-row{display:flex;border-width:0;border-bottom-width:1px;border-style:solid;align-items:center;box-sizing:border-box}mat-footer-row::after,mat-header-row::after,mat-row::after{display:inline-block;min-height:inherit;content:''}mat-cell:first-of-type,mat-footer-cell:first-of-type,mat-header-cell:first-of-type{padding-left:24px}[dir=rtl] mat-cell:first-of-type,[dir=rtl] mat-footer-cell:first-of-type,[dir=rtl] mat-header-cell:first-of-type{padding-left:0;padding-right:24px}mat-cell:last-of-type,mat-footer-cell:last-of-type,mat-header-cell:last-of-type{padding-right:24px}[dir=rtl] mat-cell:last-of-type,[dir=rtl] mat-footer-cell:last-of-type,[dir=rtl] mat-header-cell:last-of-type{padding-right:0;padding-left:24px}mat-cell,mat-footer-cell,mat-header-cell{flex:1;display:flex;align-items:center;overflow:hidden;word-wrap:break-word;min-height:inherit}table.mat-table{border-spacing:0}tr.mat-header-row{height:56px}tr.mat-footer-row,tr.mat-row{height:48px}th.mat-header-cell{text-align:left}[dir=rtl] th.mat-header-cell{text-align:right}td.mat-cell,td.mat-footer-cell,th.mat-header-cell{padding:0;border-bottom-width:1px;border-bottom-style:solid}td.mat-cell:first-of-type,td.mat-footer-cell:first-of-type,th.mat-header-cell:first-of-type{padding-left:24px}[dir=rtl] td.mat-cell:first-of-type,[dir=rtl] td.mat-footer-cell:first-of-type,[dir=rtl] th.mat-header-cell:first-of-type{padding-left:0;padding-right:24px}td.mat-cell:last-of-type,td.mat-footer-cell:last-of-type,th.mat-header-cell:last-of-type{padding-right:24px}[dir=rtl] td.mat-cell:last-of-type,[dir=rtl] td.mat-footer-cell:last-of-type,[dir=rtl] th.mat-header-cell:last-of-type{padding-right:0;padding-left:24px}</style>
   <style>.mat-dialog-container{display:block;padding:24px;border-radius:4px;box-sizing:border-box;overflow:auto;outline:0;width:100%;height:100%;min-height:inherit;max-height:inherit}@media (-ms-high-contrast:active){.mat-dialog-container{outline:solid 1px}}.mat-dialog-content{display:block;margin:0 -24px;padding:0 24px;max-height:65vh;overflow:auto;-webkit-overflow-scrolling:touch}.mat-dialog-title{margin:0 0 20px;display:block}.mat-dialog-actions{padding:8px 0;display:flex;flex-wrap:wrap;min-height:52px;align-items:center;margin-bottom:-24px}.mat-dialog-actions[align=end]{justify-content:flex-end}.mat-dialog-actions[align=center]{justify-content:center}.mat-dialog-actions .mat-button+.mat-button,.mat-dialog-actions .mat-button+.mat-raised-button,.mat-dialog-actions .mat-raised-button+.mat-button,.mat-dialog-actions .mat-raised-button+.mat-raised-button{margin-left:8px}[dir=rtl] .mat-dialog-actions .mat-button+.mat-button,[dir=rtl] .mat-dialog-actions .mat-button+.mat-raised-button,[dir=rtl] .mat-dialog-actions .mat-raised-button+.mat-button,[dir=rtl] .mat-dialog-actions .mat-raised-button+.mat-raised-button{margin-left:0;margin-right:8px}</style>
   <style>.mat-snack-bar-container{border-radius:4px;box-sizing:border-box;display:block;margin:24px;max-width:33vw;min-width:344px;padding:14px 16px;min-height:48px;transform-origin:center}@media (-ms-high-contrast:active){.mat-snack-bar-container{border:solid 1px}}.mat-snack-bar-handset{width:100%}.mat-snack-bar-handset .mat-snack-bar-container{margin:8px;max-width:100%;min-width:0;width:100%}</style>
   <style>.mat-simple-snackbar{display:flex;justify-content:space-between;align-items:center;height:100%;line-height:20px;opacity:1}.mat-simple-snackbar-action{flex-shrink:0;margin:-8px -8px -8px 8px}.mat-simple-snackbar-action button{max-height:36px;min-width:0}[dir=rtl] .mat-simple-snackbar-action{margin-left:-8px;margin-right:8px}</style>
   <style>.card[_ngcontent-c34]{width:9rem;cursor:pointer}</style>
   <style>.mat-paginator{display:block}.mat-paginator-outer-container{display:flex}.mat-paginator-container{display:flex;align-items:center;justify-content:flex-end;min-height:56px;padding:0 8px;flex-wrap:wrap-reverse;width:100%}.mat-paginator-page-size{display:flex;align-items:baseline;margin-right:8px}[dir=rtl] .mat-paginator-page-size{margin-right:0;margin-left:8px}.mat-paginator-page-size-label{margin:0 4px}.mat-paginator-page-size-select{margin:6px 4px 0 4px;width:56px}.mat-paginator-page-size-select.mat-form-field-appearance-outline{width:64px}.mat-paginator-page-size-select.mat-form-field-appearance-fill{width:64px}.mat-paginator-range-label{margin:0 32px 0 24px}.mat-paginator-range-actions{display:flex;align-items:center}.mat-paginator-icon{width:28px;fill:currentColor}[dir=rtl] .mat-paginator-icon{transform:rotate(180deg)}</style>
   <style>.mat-sort-header-container{display:flex;cursor:pointer;align-items:center}.mat-sort-header-disabled .mat-sort-header-container{cursor:default}.mat-sort-header-position-before{flex-direction:row-reverse}.mat-sort-header-button{border:none;background:0 0;display:flex;align-items:center;padding:0;cursor:inherit;outline:0;font:inherit;color:currentColor}.mat-sort-header-button::-moz-focus-inner{border:0}.mat-sort-header-arrow{height:12px;width:12px;min-width:12px;position:relative;display:flex;opacity:0}.mat-sort-header-arrow,[dir=rtl] .mat-sort-header-position-before .mat-sort-header-arrow{margin:0 0 0 6px}.mat-sort-header-position-before .mat-sort-header-arrow,[dir=rtl] .mat-sort-header-arrow{margin:0 6px 0 0}.mat-sort-header-stem{background:currentColor;height:10px;width:2px;margin:auto;display:flex;align-items:center}@media (-ms-high-contrast:active){.mat-sort-header-stem{width:0;border-left:solid 2px}}.mat-sort-header-indicator{width:100%;height:2px;display:flex;align-items:center;position:absolute;top:0;left:0}.mat-sort-header-pointer-middle{margin:auto;height:2px;width:2px;background:currentColor;transform:rotate(45deg)}@media (-ms-high-contrast:active){.mat-sort-header-pointer-middle{width:0;height:0;border-top:solid 2px;border-left:solid 2px}}.mat-sort-header-pointer-left,.mat-sort-header-pointer-right{background:currentColor;width:6px;height:2px;position:absolute;top:0}@media (-ms-high-contrast:active){.mat-sort-header-pointer-left,.mat-sort-header-pointer-right{width:0;height:0;border-left:solid 6px;border-top:solid 2px}}.mat-sort-header-pointer-left{transform-origin:right;left:0}.mat-sort-header-pointer-right{transform-origin:left;right:0}</style>
   <style>.w-date[_ngcontent-c39]{width:200px}.data-change[_ngcontent-c39]{background-color:#ffe8e1}[_nghost-c39]     .mat-input-element:disabled{color:#212529!important}[_nghost-c39]     .mat-form-field-appearance-legacy.mat-form-field-disabled .mat-form-field-underline{background-color:rgba(0,0,0,.22)!important;background-image:none!important}</style>
</head>
<body>
<app-root _nghost-c0="" ng-version="6.1.7">
   <router-outlet _ngcontent-c0=""></router-outlet>
   <app-main-layout _nghost-c1="" class="ng-star-inserted">
      <mat-drawer-container _ngcontent-c1="" autosize="" class="wrapper mat-drawer-container">
         <!---->
         <div class="mat-drawer-backdrop ng-star-inserted"></div>
         <div class="cdk-visually-hidden cdk-focus-trap-anchor" aria-hidden="true"></div>
         <mat-drawer _ngcontent-c1="" class="sidebar mat-drawer ng-tns-c3-0 ng-trigger ng-trigger-transform mat-drawer-side ng-star-inserted" data-active-color="danger" data-background-color="white" mode="side" opened="" tabindex="-1" style="transform: none; visibility: visible;">
            <div class="mat-drawer-inner-container">
               <app-sidebar _ngcontent-c1="" _nghost-c4="">
                  <div _ngcontent-c4="" class="sidebar-wrapper">
                     <div _ngcontent-c4="" class="logo">
                        <a _ngcontent-c4="" class="simple-text text-left" style="cursor: pointer">
                           <div _ngcontent-c4="" class="logo-img"><img _ngcontent-c4="" src="/assets/img/logo.png"></div>
                           <span _ngcontent-c4="" style="margin-left: 70px; font-size: 20px;">HOTEL</span>
                        </a>
                     </div>
                     <ul _ngcontent-c4="" class="nav flex-column">
                        <!---->
                        <li _ngcontent-c4="" class="nav-item ng-star-inserted" style="">
                           <!---->
                           <a _ngcontent-c4="" class="nav-link ng-star-inserted" style="cursor: pointer">
                              <i _ngcontent-c4="" class="fas fa-home"></i>
                              <p _ngcontent-c4="">Trang chính</p>
                           </a>
                        </li>
                        <li _ngcontent-c4="" class="nav-item ng-star-inserted" style="">
                           <!---->
                           <a _ngcontent-c4="" class="nav-link ng-star-inserted" style="cursor: pointer">
                              <i _ngcontent-c4="" class="fas fa-retweet"></i>
                              <p _ngcontent-c4="">Thuê - trả phòng</p>
                           </a>
                        </li>
                        <li _ngcontent-c4="" class="nav-item ng-star-inserted" style="">
                           <!---->
                           <a _ngcontent-c4="" class="nav-link ng-star-inserted" style="cursor: pointer">
                              <i _ngcontent-c4="" class="far fa-calendar-alt"></i>
                              <p _ngcontent-c4="">Đặt phòng</p>
                           </a>
                        </li>
                        <li _ngcontent-c4="" class="nav-item ng-star-inserted" style="">
                           <!---->
                           <a _ngcontent-c4="" class="nav-link ng-star-inserted" style="cursor: pointer">
                              <i _ngcontent-c4="" class="fas fa-database"></i>
                              <p _ngcontent-c4="">Quản lý kho</p>
                           </a>
                        </li>
                        <li _ngcontent-c4="" class="nav-item ng-star-inserted" style="">
                           <!---->
                           <a _ngcontent-c4="" class="nav-link ng-star-inserted" style="cursor: pointer">
                              <i _ngcontent-c4="" class="fas fa-balance-scale"></i>
                              <p _ngcontent-c4="">Quản lý thu chi</p>
                           </a>
                        </li>
                        <li _ngcontent-c4="" class="nav-item ng-star-inserted active" style="">
                           <!---->
                           <a _ngcontent-c4="" class="nav-link ng-star-inserted" style="cursor: pointer">
                              <i _ngcontent-c4="" class="fas fa-cog"></i>
                              <p _ngcontent-c4="">Quản lý hệ thống</p>
                           </a>
                        </li>
                        <li _ngcontent-c4="" class="nav-item ng-star-inserted" style="">
                           <!---->
                           <a _ngcontent-c4="" class="nav-link ng-star-inserted" style="cursor: pointer">
                              <i _ngcontent-c4="" class="fas fa-user-circle"></i>
                              <p _ngcontent-c4="">Tài khoản</p>
                           </a>
                        </li>
                        <li _ngcontent-c4="" class="nav-item ng-star-inserted" style="">
                           <!---->
                           <a _ngcontent-c4="" class="nav-link ng-star-inserted" style="cursor: pointer">
                              <i _ngcontent-c4="" class="fas fa-credit-card"></i>
                              <p _ngcontent-c4="">Gia hạn</p>
                           </a>
                        </li>
                        <li _ngcontent-c4="" class="nav-item ng-star-inserted" style="">
                           <!---->
                           <a _ngcontent-c4="" class="nav-link ng-star-inserted" style="cursor: pointer">
                              <i _ngcontent-c4="" class="fas fa-sign-out-alt"></i>
                              <p _ngcontent-c4="">Đăng xuất</p>
                           </a>
                        </li>
                     </ul>
                  </div>
               </app-sidebar>
            </div>
         </mat-drawer>
         <div class="cdk-visually-hidden cdk-focus-trap-anchor" aria-hidden="true"></div>
         <!---->
         <mat-drawer-content class="mat-drawer-content ng-star-inserted" style="margin-left: 260px;">
            <div _ngcontent-c1="" class="main-panel">
               <router-outlet _ngcontent-c1=""></router-outlet>
               <app-history _nghost-c39="" class="ng-star-inserted">
                  <div _ngcontent-c39="" class="topbar">
                     <div _ngcontent-c39="" class="container-fluid d-flex h-100">
                        <div _ngcontent-c39="" class="justify-content-center align-self-center">
                           <button _ngcontent-c39="" class="btn btn-secondary bmd-btn-icon btn-back" type="button"><i _ngcontent-c39="" class="material-icons">arrow_back</i></button><span _ngcontent-c39="" class="topbar-title">Lịch sử thuê phòng</span>
                           <button _ngcontent-c39="" class="btn-top text-primary mat-button" mat-button="">
                                    <span class="mat-button-wrapper">
                                       <mat-icon _ngcontent-c39="" class="mat-icon notranslate material-icons mat-icon-no-color" role="img" aria-hidden="true">cloud_download</mat-icon>
                                       <span _ngcontent-c39="" class="icon-text">Xuất Excel</span>
                                    </span>
                              <div class="mat-button-ripple mat-ripple" matripple=""></div>
                              <div class="mat-button-focus-overlay"></div>
                           </button>
                        </div>
                     </div>
                  </div>
                  <!---->
                  <div _ngcontent-c39="" class="main-container d-flex flex-row">
                     <div _ngcontent-c39="" class="list-panel">
                        <mat-form-field _ngcontent-c39="" class="w-date pr-2 mat-form-field ng-tns-c6-57 mat-primary mat-form-field-type-mat-input mat-form-field-appearance-legacy mat-form-field-can-float mat-form-field-has-label mat-form-field-hide-placeholder ng-untouched ng-pristine mat-form-field-disabled mat-form-field-should-float">
                           <div class="mat-form-field-wrapper">
                              <div class="mat-form-field-flex">
                                 <!----><!---->
                                 <div class="mat-form-field-infix">
                                    <span class="bmd-form-group"><input _ngcontent-c39="" class="mat-input-element mat-form-field-autofill-control cdk-text-field-autofill-monitored ng-untouched ng-pristine" matinput="" name="model.startDate" placeholder="Từ ngày" required="" aria-haspopup="true" id="mat-input-14" aria-invalid="false" aria-required="true" disabled=""></span>
                                    <mat-datepicker _ngcontent-c39="" disabled="false"></mat-datepicker>
                                    <span class="mat-form-field-label-wrapper">
                                             <!---->
                                             <label class="mat-form-field-label ng-tns-c6-57 ng-star-inserted" id="mat-form-field-label-35" for="mat-input-14" aria-owns="mat-input-14">
                                                <!----><!---->Từ ngày<!----><!---->
                                             </label>
                                          </span>
                                 </div>
                                 <!---->
                                 <div class="mat-form-field-suffix ng-tns-c6-57 ng-star-inserted">
                                    <mat-datepicker-toggle _ngcontent-c39="" class="mat-datepicker-toggle" matsuffix="" tabindex="-1">
                                       <button aria-haspopup="true" mat-icon-button="" type="button" class="mat-icon-button" aria-label="Open calendar" tabindex="0">
                                                <span class="mat-button-wrapper">
                                                   <!---->
                                                   <svg class="mat-datepicker-toggle-default-icon ng-star-inserted" fill="currentColor" focusable="false" height="24px" viewBox="0 0 24 24" width="24px">
                                                      <path d="M19 3h-1V1h-2v2H8V1H6v2H5c-1.11 0-1.99.9-1.99 2L3 19c0 1.1.89 2 2 2h14c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2zm0 16H5V8h14v11zM7 10h5v5H7z"></path>
                                                   </svg>
                                                </span>
                                          <div class="mat-button-ripple mat-ripple mat-button-ripple-round" matripple=""></div>
                                          <div class="mat-button-focus-overlay"></div>
                                       </button>
                                    </mat-datepicker-toggle>
                                 </div>
                              </div>
                              <!---->
                              <div class="mat-form-field-underline ng-tns-c6-57 ng-star-inserted"><span class="mat-form-field-ripple"></span></div>
                              <div class="mat-form-field-subscript-wrapper">
                                 <!----><!---->
                                 <div class="mat-form-field-hint-wrapper ng-tns-c6-57 ng-trigger ng-trigger-transitionMessages ng-star-inserted" style="opacity: 1; transform: translateY(0%);">
                                    <!---->
                                    <div class="mat-form-field-hint-spacer"></div>
                                 </div>
                              </div>
                           </div>
                        </mat-form-field>
                        <mat-form-field _ngcontent-c39="" class="w-date pr-2 mat-form-field ng-tns-c6-58 mat-primary mat-form-field-type-mat-input mat-form-field-appearance-legacy mat-form-field-can-float mat-form-field-has-label mat-form-field-hide-placeholder ng-untouched ng-pristine mat-form-field-disabled mat-form-field-should-float">
                           <div class="mat-form-field-wrapper">
                              <div class="mat-form-field-flex">
                                 <!----><!---->
                                 <div class="mat-form-field-infix">
                                    <span class="bmd-form-group"><input _ngcontent-c39="" class="mat-input-element mat-form-field-autofill-control cdk-text-field-autofill-monitored ng-untouched ng-pristine" matinput="" name="model.endDate" placeholder="Đến ngày" required="" aria-haspopup="true" id="mat-input-15" aria-invalid="false" aria-required="true" disabled=""></span>
                                    <mat-datepicker _ngcontent-c39="" disabled="false"></mat-datepicker>
                                    <span class="mat-form-field-label-wrapper">
                                             <!---->
                                             <label class="mat-form-field-label ng-tns-c6-58 ng-star-inserted" id="mat-form-field-label-37" for="mat-input-15" aria-owns="mat-input-15">
                                                <!----><!---->Đến ngày<!----><!---->
                                             </label>
                                          </span>
                                 </div>
                                 <!---->
                                 <div class="mat-form-field-suffix ng-tns-c6-58 ng-star-inserted">
                                    <mat-datepicker-toggle _ngcontent-c39="" class="mat-datepicker-toggle" matsuffix="" tabindex="-1">
                                       <button aria-haspopup="true" mat-icon-button="" type="button" class="mat-icon-button" aria-label="Open calendar" tabindex="0">
                                                <span class="mat-button-wrapper">
                                                   <!---->
                                                   <svg class="mat-datepicker-toggle-default-icon ng-star-inserted" fill="currentColor" focusable="false" height="24px" viewBox="0 0 24 24" width="24px">
                                                      <path d="M19 3h-1V1h-2v2H8V1H6v2H5c-1.11 0-1.99.9-1.99 2L3 19c0 1.1.89 2 2 2h14c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2zm0 16H5V8h14v11zM7 10h5v5H7z"></path>
                                                   </svg>
                                                </span>
                                          <div class="mat-button-ripple mat-ripple mat-button-ripple-round" matripple=""></div>
                                          <div class="mat-button-focus-overlay"></div>
                                       </button>
                                    </mat-datepicker-toggle>
                                 </div>
                              </div>
                              <!---->
                              <div class="mat-form-field-underline ng-tns-c6-58 ng-star-inserted"><span class="mat-form-field-ripple"></span></div>
                              <div class="mat-form-field-subscript-wrapper">
                                 <!----><!---->
                                 <div class="mat-form-field-hint-wrapper ng-tns-c6-58 ng-trigger ng-trigger-transitionMessages ng-star-inserted" style="opacity: 1; transform: translateY(0%);">
                                    <!---->
                                    <div class="mat-form-field-hint-spacer"></div>
                                 </div>
                              </div>
                           </div>
                        </mat-form-field>
                        <button _ngcontent-c39="" mat-icon-button="" class="mat-icon-button">
                                 <span class="mat-button-wrapper">
                                    <mat-icon _ngcontent-c39="" class="text-primary mat-icon notranslate material-icons mat-icon-no-color" role="img" aria-hidden="true">search</mat-icon>
                                 </span>
                           <div class="mat-button-ripple mat-ripple mat-button-ripple-round" matripple=""></div>
                           <div class="mat-button-focus-overlay"></div>
                        </button>
                        <mat-form-field _ngcontent-c39="" class="w-100 mat-form-field ng-tns-c6-59 mat-primary mat-form-field-type-mat-input mat-form-field-appearance-legacy mat-form-field-can-float mat-form-field-has-label mat-form-field-hide-placeholder">
                           <div class="mat-form-field-wrapper">
                              <div class="mat-form-field-flex">
                                 <!----><!---->
                                 <div class="mat-form-field-infix">
                                    <span class="bmd-form-group"><input _ngcontent-c39="" class="w-100 mat-input-element mat-form-field-autofill-control cdk-text-field-autofill-monitored" matinput="" placeholder="Tìm kiếm" id="mat-input-16" aria-invalid="false" aria-required="false"></span>
                                    <span class="mat-form-field-label-wrapper">
                                             <!---->
                                             <label class="mat-form-field-label ng-tns-c6-59 mat-empty mat-form-field-empty ng-star-inserted" id="mat-form-field-label-39" for="mat-input-16" aria-owns="mat-input-16">
                                                <!----><!---->Tìm kiếm<!----><!---->
                                             </label>
                                          </span>
                                 </div>
                                 <!---->
                              </div>
                              <!---->
                              <div class="mat-form-field-underline ng-tns-c6-59 ng-star-inserted"><span class="mat-form-field-ripple"></span></div>
                              <div class="mat-form-field-subscript-wrapper">
                                 <!----><!---->
                                 <div class="mat-form-field-hint-wrapper ng-tns-c6-59 ng-trigger ng-trigger-transitionMessages ng-star-inserted" style="opacity: 1; transform: translateY(0%);">
                                    <!---->
                                    <div class="mat-form-field-hint-spacer"></div>
                                 </div>
                              </div>
                           </div>
                        </mat-form-field>
                        <div _ngcontent-c39="" class="card">
                           <table _ngcontent-c39="" class="w-100 mat-table" mat-table="" matsort="" role="grid">
                              <thead role="rowgroup">
                              <!---->
                              <tr _ngcontent-c39="" class="mat-header-row ng-star-inserted" mat-header-row="" role="row">
                                 <!---->
                                 <th _ngcontent-c39="" class="mat-header-cell ng-tns-c36-60 cdk-column-roomName mat-column-roomName ng-star-inserted" mat-header-cell="" mat-sort-header="" role="columnheader" style="touch-action: none; user-select: none; -webkit-user-drag: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
                                    <div class="mat-sort-header-container">
                                       <button class="mat-sort-header-button" type="button" aria-label="Change sorting for roomName"> Phòng </button><!---->
                                       <div class="mat-sort-header-arrow ng-trigger ng-trigger-arrowPosition ng-tns-c36-60 ng-star-inserted" style="transform: translateY(25%); opacity: 0;">
                                          <div class="mat-sort-header-stem"></div>
                                          <div class="mat-sort-header-indicator ng-trigger ng-trigger-indicator" style="transform: translateY(0px);">
                                             <div class="mat-sort-header-pointer-left ng-trigger ng-trigger-leftPointer" style="transform: rotate(-45deg);"></div>
                                             <div class="mat-sort-header-pointer-right ng-trigger ng-trigger-rightPointer" style="transform: rotate(45deg);"></div>
                                             <div class="mat-sort-header-pointer-middle"></div>
                                          </div>
                                       </div>
                                    </div>
                                 </th>
                                 <th _ngcontent-c39="" class="mat-header-cell ng-tns-c36-61 cdk-column-startTime mat-column-startTime ng-star-inserted" mat-header-cell="" mat-sort-header="" role="columnheader" style="touch-action: none; user-select: none; -webkit-user-drag: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
                                    <div class="mat-sort-header-container">
                                       <button class="mat-sort-header-button" type="button" aria-label="Change sorting for startTime"> Thời gian bắt đầu </button><!---->
                                       <div class="mat-sort-header-arrow ng-trigger ng-trigger-arrowPosition ng-tns-c36-61 ng-star-inserted" style="transform: translateY(25%); opacity: 0;">
                                          <div class="mat-sort-header-stem"></div>
                                          <div class="mat-sort-header-indicator ng-trigger ng-trigger-indicator" style="transform: translateY(0px);">
                                             <div class="mat-sort-header-pointer-left ng-trigger ng-trigger-leftPointer" style="transform: rotate(-45deg);"></div>
                                             <div class="mat-sort-header-pointer-right ng-trigger ng-trigger-rightPointer" style="transform: rotate(45deg);"></div>
                                             <div class="mat-sort-header-pointer-middle"></div>
                                          </div>
                                       </div>
                                    </div>
                                 </th>
                                 <th _ngcontent-c39="" class="mat-header-cell ng-tns-c36-62 cdk-column-endTime mat-column-endTime ng-star-inserted" mat-header-cell="" mat-sort-header="" role="columnheader" aria-sort="descending" style="touch-action: none; user-select: none; -webkit-user-drag: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
                                    <div class="mat-sort-header-container mat-sort-header-sorted">
                                       <button class="mat-sort-header-button" type="button" aria-label="Change sorting for endTime"> Thời gian kết thúc </button><!---->
                                       <div class="mat-sort-header-arrow ng-trigger ng-trigger-arrowPosition ng-tns-c36-62 ng-star-inserted" style="transform: translateY(0px); opacity: 1;">
                                          <div class="mat-sort-header-stem"></div>
                                          <div class="mat-sort-header-indicator ng-trigger ng-trigger-indicator" style="transform: translateY(10px);">
                                             <div class="mat-sort-header-pointer-left ng-trigger ng-trigger-leftPointer" style="transform: rotate(45deg);"></div>
                                             <div class="mat-sort-header-pointer-right ng-trigger ng-trigger-rightPointer" style="transform: rotate(-45deg);"></div>
                                             <div class="mat-sort-header-pointer-middle"></div>
                                          </div>
                                       </div>
                                    </div>
                                 </th>
                                 <th _ngcontent-c39="" class="mat-header-cell ng-tns-c36-63 cdk-column-createdAt mat-column-createdAt ng-star-inserted" mat-header-cell="" mat-sort-header="" role="columnheader" style="touch-action: none; user-select: none; -webkit-user-drag: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
                                    <div class="mat-sort-header-container">
                                       <button class="mat-sort-header-button" type="button" aria-label="Change sorting for createdAt"> Thời gian khởi tạo </button><!---->
                                       <div class="mat-sort-header-arrow ng-trigger ng-trigger-arrowPosition ng-tns-c36-63 ng-star-inserted" style="transform: translateY(25%); opacity: 0;">
                                          <div class="mat-sort-header-stem"></div>
                                          <div class="mat-sort-header-indicator ng-trigger ng-trigger-indicator" style="transform: translateY(0px);">
                                             <div class="mat-sort-header-pointer-left ng-trigger ng-trigger-leftPointer" style="transform: rotate(-45deg);"></div>
                                             <div class="mat-sort-header-pointer-right ng-trigger ng-trigger-rightPointer" style="transform: rotate(45deg);"></div>
                                             <div class="mat-sort-header-pointer-middle"></div>
                                          </div>
                                       </div>
                                    </div>
                                 </th>
                                 <th _ngcontent-c39="" class="mat-header-cell ng-tns-c36-64 cdk-column-updatedAt mat-column-updatedAt ng-star-inserted" mat-header-cell="" mat-sort-header="" role="columnheader" style="touch-action: none; user-select: none; -webkit-user-drag: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
                                    <div class="mat-sort-header-container">
                                       <button class="mat-sort-header-button" type="button" aria-label="Change sorting for updatedAt"> Thời gian lưu lịch sử </button><!---->
                                       <div class="mat-sort-header-arrow ng-trigger ng-trigger-arrowPosition ng-tns-c36-64 ng-star-inserted" style="transform: translateY(25%); opacity: 0;">
                                          <div class="mat-sort-header-stem"></div>
                                          <div class="mat-sort-header-indicator ng-trigger ng-trigger-indicator" style="transform: translateY(0px);">
                                             <div class="mat-sort-header-pointer-left ng-trigger ng-trigger-leftPointer" style="transform: rotate(-45deg);"></div>
                                             <div class="mat-sort-header-pointer-right ng-trigger ng-trigger-rightPointer" style="transform: rotate(45deg);"></div>
                                             <div class="mat-sort-header-pointer-middle"></div>
                                          </div>
                                       </div>
                                    </div>
                                 </th>
                                 <th _ngcontent-c39="" class="mat-header-cell ng-tns-c36-65 cdk-column-type mat-column-type ng-star-inserted" mat-header-cell="" mat-sort-header="" role="columnheader" style="touch-action: none; user-select: none; -webkit-user-drag: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
                                    <div class="mat-sort-header-container">
                                       <button class="mat-sort-header-button" type="button" aria-label="Change sorting for type"> Loại thuê phòng </button><!---->
                                       <div class="mat-sort-header-arrow ng-trigger ng-trigger-arrowPosition ng-tns-c36-65 ng-star-inserted" style="transform: translateY(25%); opacity: 0;">
                                          <div class="mat-sort-header-stem"></div>
                                          <div class="mat-sort-header-indicator ng-trigger ng-trigger-indicator" style="transform: translateY(0px);">
                                             <div class="mat-sort-header-pointer-left ng-trigger ng-trigger-leftPointer" style="transform: rotate(-45deg);"></div>
                                             <div class="mat-sort-header-pointer-right ng-trigger ng-trigger-rightPointer" style="transform: rotate(45deg);"></div>
                                             <div class="mat-sort-header-pointer-middle"></div>
                                          </div>
                                       </div>
                                    </div>
                                 </th>
                                 <th _ngcontent-c39="" class="mat-header-cell ng-tns-c36-66 cdk-column-totalMoney mat-column-totalMoney ng-star-inserted" mat-header-cell="" mat-sort-header="" role="columnheader" style="touch-action: none; user-select: none; -webkit-user-drag: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
                                    <div class="mat-sort-header-container">
                                       <button class="mat-sort-header-button" type="button" aria-label="Change sorting for totalMoney"> Tổng tiền </button><!---->
                                       <div class="mat-sort-header-arrow ng-trigger ng-trigger-arrowPosition ng-tns-c36-66 ng-star-inserted" style="transform: translateY(25%); opacity: 0;">
                                          <div class="mat-sort-header-stem"></div>
                                          <div class="mat-sort-header-indicator ng-trigger ng-trigger-indicator" style="transform: translateY(0px);">
                                             <div class="mat-sort-header-pointer-left ng-trigger ng-trigger-leftPointer" style="transform: rotate(-45deg);"></div>
                                             <div class="mat-sort-header-pointer-right ng-trigger ng-trigger-rightPointer" style="transform: rotate(45deg);"></div>
                                             <div class="mat-sort-header-pointer-middle"></div>
                                          </div>
                                       </div>
                                    </div>
                                 </th>
                                 <th _ngcontent-c39="" class="mat-header-cell ng-tns-c36-67 cdk-column-edit mat-column-edit ng-star-inserted" mat-header-cell="" mat-sort-header="" role="columnheader" style="touch-action: none; user-select: none; -webkit-user-drag: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
                                    <div class="mat-sort-header-container">
                                       <button class="mat-sort-header-button" type="button" aria-label="Change sorting for edit">Chỉnh sửa</button><!---->
                                       <div class="mat-sort-header-arrow ng-trigger ng-trigger-arrowPosition ng-tns-c36-67 ng-star-inserted" style="transform: translateY(25%); opacity: 0;">
                                          <div class="mat-sort-header-stem"></div>
                                          <div class="mat-sort-header-indicator ng-trigger ng-trigger-indicator" style="transform: translateY(0px);">
                                             <div class="mat-sort-header-pointer-left ng-trigger ng-trigger-leftPointer" style="transform: rotate(-45deg);"></div>
                                             <div class="mat-sort-header-pointer-right ng-trigger ng-trigger-rightPointer" style="transform: rotate(45deg);"></div>
                                             <div class="mat-sort-header-pointer-middle"></div>
                                          </div>
                                       </div>
                                    </div>
                                 </th>
                              </tr>
                              </thead>
                              <tbody role="rowgroup">
                              <!---->
                              <tr _ngcontent-c39="" class="pointer mat-row ng-star-inserted" mat-row="" role="row" onclick="swapForm('edit_rent_room','')">
                                 <!---->
                                 <td _ngcontent-c39="" class="mat-cell cdk-column-roomName mat-column-roomName ng-star-inserted" mat-cell="" role="gridcell"> 1 </td>
                                 <td _ngcontent-c39="" class="mat-cell cdk-column-startTime mat-column-startTime ng-star-inserted" mat-cell="" role="gridcell"> ${kindofroom.time}	 </td>
                                 <td _ngcontent-c39="" class="mat-cell cdk-column-endTime mat-column-endTime ng-star-inserted" mat-cell="" role="gridcell"> ${kindofroom.time} </td>
                                 <td _ngcontent-c39="" class="mat-cell cdk-column-createdAt mat-column-createdAt ng-star-inserted" mat-cell="" role="gridcell"> ${kindofroom.time} </td>
                                 <td _ngcontent-c39="" class="mat-cell cdk-column-updatedAt mat-column-updatedAt ng-star-inserted" mat-cell="" role="gridcell"> ${kindofroom.time} </td>
                                 <td _ngcontent-c39="" class="mat-cell cdk-column-type mat-column-type ng-star-inserted" mat-cell="" role="gridcell"> ${kindofroom.kindOfRent} </td>
                                 <td _ngcontent-c39="" class="mat-cell cdk-column-totalMoney mat-column-totalMoney ng-star-inserted" mat-cell="" role="gridcell"> ${kindofroom.price}&nbsp;₫</td>
                                 <td _ngcontent-c39="" class="mat-cell cdk-column-edit mat-column-edit ng-star-inserted" mat-cell="" role="gridcell">
                                    <div _ngcontent-c39="" class="icon-sm">
                                       <mat-icon _ngcontent-c39="" class="pointer text-primary mat-icon notranslate material-icons mat-icon-inline mat-icon-no-color" role="img" aria-hidden="true">edit</mat-icon>
                                    </div>
                                 </td>
                              </tr>
                              </tbody>
                              <tfoot role="rowgroup" class="mat-table-sticky" style="display: none; bottom: 0px; position: sticky; z-index: 10;">
                              <!---->
                              </tfoot>
                           </table>
                           <mat-paginator _ngcontent-c39="" class="mat-paginator">
                              <div class="mat-paginator-outer-container">
                                 <div class="mat-paginator-container">
                                    <!---->
                                    <div class="mat-paginator-page-size ng-star-inserted">
                                       <div class="mat-paginator-page-size-label">Số dòng mỗi trang</div>
                                       <!---->
                                       <mat-form-field class="mat-paginator-page-size-select mat-form-field ng-tns-c6-68 mat-primary mat-form-field-type-mat-select mat-form-field-appearance-legacy mat-form-field-can-float mat-form-field-hide-placeholder ng-star-inserted mat-form-field-should-float">
                                          <div class="mat-form-field-wrapper">
                                             <div class="mat-form-field-flex">
                                                <!----><!---->
                                                <div class="mat-form-field-infix">
                                                   <mat-select class="mat-select ng-tns-c7-69 ng-star-inserted" role="listbox" id="mat-select-3" tabindex="0" aria-label="Số dòng mỗi trang" aria-required="false" aria-disabled="false" aria-invalid="false" aria-multiselectable="false">
                                                      <div class="mat-select-trigger" aria-hidden="true" cdk-overlay-origin="">
                                                         <div class="mat-select-value">
                                                            <!----><!---->
                                                            <span class="mat-select-value-text ng-tns-c7-69 ng-star-inserted">
                                                                     <!----><span class="ng-tns-c7-69 ng-star-inserted">10</span><!---->
                                                                  </span>
                                                         </div>
                                                         <div class="mat-select-arrow-wrapper">
                                                            <div class="mat-select-arrow"></div>
                                                         </div>
                                                      </div>
                                                      <!---->
                                                   </mat-select>
                                                   <span class="mat-form-field-label-wrapper">
                                                            <!---->
                                                         </span>
                                                </div>
                                                <!---->
                                             </div>
                                             <!---->
                                             <div class="mat-form-field-underline ng-tns-c6-68 ng-star-inserted"><span class="mat-form-field-ripple"></span></div>
                                             <div class="mat-form-field-subscript-wrapper">
                                                <!----><!---->
                                                <div class="mat-form-field-hint-wrapper ng-tns-c6-68 ng-trigger ng-trigger-transitionMessages ng-star-inserted" style="opacity: 1; transform: translateY(0%);">
                                                   <!---->
                                                   <div class="mat-form-field-hint-spacer"></div>
                                                </div>
                                             </div>
                                          </div>
                                       </mat-form-field>
                                       <!---->
                                    </div>
                                    <div class="mat-paginator-range-actions">
                                       <div class="mat-paginator-range-label">1 - 1 trong 1</div>
                                       <!---->
                                       <button class="mat-paginator-navigation-previous mat-icon-button" mat-icon-button="" type="button" aria-describedby="cdk-describedby-message-17" cdk-describedby-host="" aria-label="Trang trước" disabled="" style="touch-action: none; user-select: none; -webkit-user-drag: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
                                                <span class="mat-button-wrapper">
                                                   <svg class="mat-paginator-icon" focusable="false" viewBox="0 0 24 24">
                                                      <path d="M15.41 7.41L14 6l-6 6 6 6 1.41-1.41L10.83 12z"></path>
                                                   </svg>
                                                </span>
                                          <div class="mat-button-ripple mat-ripple mat-button-ripple-round" matripple=""></div>
                                          <div class="mat-button-focus-overlay"></div>
                                       </button>
                                       <button class="mat-paginator-navigation-next mat-icon-button" mat-icon-button="" type="button" aria-describedby="cdk-describedby-message-18" cdk-describedby-host="" aria-label="Trang sau" disabled="" style="touch-action: none; user-select: none; -webkit-user-drag: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
                                                <span class="mat-button-wrapper">
                                                   <svg class="mat-paginator-icon" focusable="false" viewBox="0 0 24 24">
                                                      <path d="M10 6L8.59 7.41 13.17 12l-4.58 4.59L10 18l6-6z"></path>
                                                   </svg>
                                                </span>
                                          <div class="mat-button-ripple mat-ripple mat-button-ripple-round" matripple=""></div>
                                          <div class="mat-button-focus-overlay"></div>
                                       </button>
                                       <!---->
                                    </div>
                                 </div>
                              </div>
                           </mat-paginator>
                        </div>
                     </div>
                     <div _ngcontent-c39="" class="right-panel">
                        <app-history-update _ngcontent-c38="" _nghost-c40="" class="ng-star-inserted" id="edit_rent_room" style="display:none;" >
                           <div _ngcontent-c40="" class="topbar-sub" >
                              <div _ngcontent-c40="" class="container-fluid d-flex h-100">
                                 <div _ngcontent-c40="" class="justify-content-center align-self-center d-flex flex-row w-100">
                                    <i _ngcontent-c40="" class="material-icons icon-bar-sub text-warning">meeting_room</i>
                                    <div _ngcontent-c40="" class="topbar-sub-title">111</div>
                                    <div _ngcontent-c40="" class="flex-grow-1"></div>
                                    <button _ngcontent-c40="" class="btn btn-danger btn-bar" type="button"><i _ngcontent-c40="" class="fas fa-trash"></i> Xóa</button><button _ngcontent-c40="" class="btn btn-info btn-bar" type="button"><i _ngcontent-c40="" class="fas fa-print"></i> In</button><button _ngcontent-c40="" class="btn btn-primary btn-bar" type="button"><i _ngcontent-c40="" class="fas fa-save"></i> Lưu</button>
                                 </div>
                              </div>
                           </div>
                           <div _ngcontent-c40="" class="form-sub">
                              <form _ngcontent-c40="" novalidate="" class="ng-untouched ng-pristine ng-valid">
                                 <app-error _ngcontent-c40="" _nghost-c4="">
                                    <ul _ngcontent-c4="" class="error-list my-1">
                                       <!---->
                                    </ul>
                                 </app-error>
                                 <mat-form-field _ngcontent-c40="" class="w-50 pr-2 mat-form-field ng-tns-c5-161 mat-primary mat-form-field-type-mat-input mat-form-field-appearance-legacy mat-form-field-can-float mat-form-field-has-label mat-form-field-hide-placeholder ng-untouched ng-pristine mat-form-field-disabled mat-form-field-should-float">
                                    <div class="mat-form-field-wrapper">
                                       <div class="mat-form-field-flex">
                                          <!----><!---->
                                          <div class="mat-form-field-infix">
                                             <span class="bmd-form-group"><input _ngcontent-c40="" class="mat-input-element mat-form-field-autofill-control cdk-text-field-autofill-monitored ng-untouched ng-pristine" matinput="" name="model.startDate" placeholder="Ngày nhận phòng" required="" aria-haspopup="true" id="mat-input-33" aria-invalid="false" aria-required="true" disabled=""></span>
                                             <mat-datepicker _ngcontent-c40="" disabled="false"></mat-datepicker>
                                             <span class="mat-form-field-label-wrapper">
                        <!---->
                        <label class="mat-form-field-label ng-tns-c5-161 ng-star-inserted" id="mat-form-field-label-87" for="mat-input-33" aria-owns="mat-input-33">
                           <!----><!---->Ngày nhận phòng<!----><!---->
                        </label>
                     </span>
                                          </div>
                                          <!---->
                                          <div class="mat-form-field-suffix ng-tns-c5-161 ng-star-inserted">
                                             <mat-datepicker-toggle _ngcontent-c40="" class="mat-datepicker-toggle" matsuffix="" tabindex="-1">
                                                <button aria-haspopup="true" mat-icon-button="" type="button" class="mat-icon-button" aria-label="Open calendar" tabindex="0">
                           <span class="mat-button-wrapper">
                              <!---->
                              <svg class="mat-datepicker-toggle-default-icon ng-star-inserted" fill="currentColor" focusable="false" height="24px" viewBox="0 0 24 24" width="24px">
                                 <path d="M19 3h-1V1h-2v2H8V1H6v2H5c-1.11 0-1.99.9-1.99 2L3 19c0 1.1.89 2 2 2h14c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2zm0 16H5V8h14v11zM7 10h5v5H7z"></path>
                              </svg>
                           </span>
                                                   <div class="mat-button-ripple mat-ripple mat-button-ripple-round" matripple=""></div>
                                                   <div class="mat-button-focus-overlay"></div>
                                                </button>
                                             </mat-datepicker-toggle>
                                          </div>
                                       </div>
                                       <!---->
                                       <div class="mat-form-field-underline ng-tns-c5-161 ng-star-inserted"><span class="mat-form-field-ripple"></span></div>
                                       <div class="mat-form-field-subscript-wrapper">
                                          <!----><!---->
                                          <div class="mat-form-field-hint-wrapper ng-tns-c5-161 ng-trigger ng-trigger-transitionMessages ng-star-inserted" style="opacity: 1; transform: translateY(0%);">
                                             <!---->
                                             <div class="mat-form-field-hint-spacer"></div>
                                          </div>
                                       </div>
                                    </div>
                                 </mat-form-field>
                                 <mat-form-field _ngcontent-c40="" class="w-50 pl-2 mat-form-field ng-tns-c5-162 mat-primary mat-form-field-type-mat-input mat-form-field-appearance-legacy mat-form-field-can-float mat-form-field-has-label mat-form-field-hide-placeholder ng-untouched ng-pristine mat-form-field-should-float ng-valid">
                                    <div class="mat-form-field-wrapper">
                                       <div class="mat-form-field-flex">
                                          <!----><!---->
                                          <div class="mat-form-field-infix">
                                             <span class="bmd-form-group"><input _ngcontent-c40="" class="mat-input-element mat-form-field-autofill-control cdk-text-field-autofill-monitored ng-untouched ng-pristine ng-valid" matinput="" maxlength="5" name="model.startTime" placeholder="Giờ nhận phòng" required="" id="mat-input-34" aria-invalid="false" aria-required="true"></span>
                                             <span class="mat-form-field-label-wrapper">
                        <!---->
                        <label class="mat-form-field-label ng-tns-c5-162 ng-star-inserted" id="mat-form-field-label-89" for="mat-input-34" aria-owns="mat-input-34">
                           <!----><!---->Giờ nhận phòng<!----><!----><span aria-hidden="true" class="mat-placeholder-required mat-form-field-required-marker ng-tns-c5-162 ng-star-inserted"> *</span>
                        </label>
                     </span>
                                          </div>
                                          <!---->
                                       </div>
                                       <!---->
                                       <div class="mat-form-field-underline ng-tns-c5-162 ng-star-inserted"><span class="mat-form-field-ripple"></span></div>
                                       <div class="mat-form-field-subscript-wrapper">
                                          <!----><!---->
                                          <div class="mat-form-field-hint-wrapper ng-tns-c5-162 ng-trigger ng-trigger-transitionMessages ng-star-inserted" style="opacity: 1; transform: translateY(0%);">
                                             <!---->
                                             <div class="mat-form-field-hint-spacer"></div>
                                          </div>
                                       </div>
                                    </div>
                                 </mat-form-field>
                                 <mat-form-field _ngcontent-c40="" class="w-50 pr-2 mat-form-field ng-tns-c5-163 mat-primary mat-form-field-type-mat-input mat-form-field-appearance-legacy mat-form-field-can-float mat-form-field-has-label mat-form-field-hide-placeholder ng-untouched ng-pristine mat-form-field-disabled mat-form-field-should-float">
                                    <div class="mat-form-field-wrapper">
                                       <div class="mat-form-field-flex">
                                          <!----><!---->
                                          <div class="mat-form-field-infix">
                                             <span class="bmd-form-group"><input _ngcontent-c40="" class="mat-input-element mat-form-field-autofill-control cdk-text-field-autofill-monitored ng-untouched ng-pristine" matinput="" name="model.endDate" placeholder="Ngày trả phòng" required="" aria-haspopup="true" id="mat-input-35" aria-invalid="false" aria-required="true" disabled=""></span>
                                             <mat-datepicker _ngcontent-c40="" disabled="false"></mat-datepicker>
                                             <span class="mat-form-field-label-wrapper">
                        <!---->
                        <label class="mat-form-field-label ng-tns-c5-163 ng-star-inserted" id="mat-form-field-label-91" for="mat-input-35" aria-owns="mat-input-35">
                           <!----><!---->Ngày trả phòng<!----><!---->
                        </label>
                     </span>
                                          </div>
                                          <!---->
                                          <div class="mat-form-field-suffix ng-tns-c5-163 ng-star-inserted">
                                             <mat-datepicker-toggle _ngcontent-c40="" class="mat-datepicker-toggle" matsuffix="" tabindex="-1">
                                                <button aria-haspopup="true" mat-icon-button="" type="button" class="mat-icon-button" aria-label="Open calendar" tabindex="0">
                           <span class="mat-button-wrapper">
                              <!---->
                              <svg class="mat-datepicker-toggle-default-icon ng-star-inserted" fill="currentColor" focusable="false" height="24px" viewBox="0 0 24 24" width="24px">
                                 <path d="M19 3h-1V1h-2v2H8V1H6v2H5c-1.11 0-1.99.9-1.99 2L3 19c0 1.1.89 2 2 2h14c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2zm0 16H5V8h14v11zM7 10h5v5H7z"></path>
                              </svg>
                           </span>
                                                   <div class="mat-button-ripple mat-ripple mat-button-ripple-round" matripple=""></div>
                                                   <div class="mat-button-focus-overlay"></div>
                                                </button>
                                             </mat-datepicker-toggle>
                                          </div>
                                       </div>
                                       <!---->
                                       <div class="mat-form-field-underline ng-tns-c5-163 ng-star-inserted"><span class="mat-form-field-ripple"></span></div>
                                       <div class="mat-form-field-subscript-wrapper">
                                          <!----><!---->
                                          <div class="mat-form-field-hint-wrapper ng-tns-c5-163 ng-trigger ng-trigger-transitionMessages ng-star-inserted" style="opacity: 1; transform: translateY(0%);">
                                             <!---->
                                             <div class="mat-form-field-hint-spacer"></div>
                                          </div>
                                       </div>
                                    </div>
                                 </mat-form-field>
                                 <mat-form-field _ngcontent-c40="" class="w-50 pl-2 mat-form-field ng-tns-c5-164 mat-primary mat-form-field-type-mat-input mat-form-field-appearance-legacy mat-form-field-can-float mat-form-field-has-label mat-form-field-hide-placeholder ng-untouched ng-pristine mat-form-field-should-float ng-valid">
                                    <div class="mat-form-field-wrapper">
                                       <div class="mat-form-field-flex">
                                          <!----><!---->
                                          <div class="mat-form-field-infix">
                                             <span class="bmd-form-group"><input _ngcontent-c40="" class="mat-input-element mat-form-field-autofill-control cdk-text-field-autofill-monitored ng-untouched ng-pristine ng-valid" matinput="" maxlength="5" name="model.endTime" placeholder="Giờ trả phòng" required="" id="mat-input-36" aria-invalid="false" aria-required="true"></span>
                                             <span class="mat-form-field-label-wrapper">
                        <!---->
                        <label class="mat-form-field-label ng-tns-c5-164 ng-star-inserted" id="mat-form-field-label-93" for="mat-input-36" aria-owns="mat-input-36">
                           <!----><!---->Giờ trả phòng<!----><!----><span aria-hidden="true" class="mat-placeholder-required mat-form-field-required-marker ng-tns-c5-164 ng-star-inserted"> *</span>
                        </label>
                     </span>
                                          </div>
                                          <!---->
                                       </div>
                                       <!---->
                                       <div class="mat-form-field-underline ng-tns-c5-164 ng-star-inserted"><span class="mat-form-field-ripple"></span></div>
                                       <div class="mat-form-field-subscript-wrapper">
                                          <!----><!---->
                                          <div class="mat-form-field-hint-wrapper ng-tns-c5-164 ng-trigger ng-trigger-transitionMessages ng-star-inserted" style="opacity: 1; transform: translateY(0%);">
                                             <!---->
                                             <div class="mat-form-field-hint-spacer"></div>
                                          </div>
                                       </div>
                                    </div>
                                 </mat-form-field>
                                 <mat-form-field _ngcontent-c40="" class="w-50 pr-2 mat-form-field ng-tns-c5-165 mat-primary mat-form-field-type-mat-select mat-form-field-appearance-legacy mat-form-field-can-float mat-form-field-has-label mat-form-field-hide-placeholder ng-untouched ng-pristine ng-valid mat-form-field-should-float">
                                    <div class="mat-form-field-wrapper">
                                       <div class="mat-form-field-flex">
                                          <!----><!---->
                                          <div class="mat-form-field-infix">
                                             <mat-select _ngcontent-c40="" class="mat-select ng-tns-c33-166 ng-untouched ng-pristine ng-valid ng-star-inserted" name="type" placeholder="Kiểu thuê phòng" role="listbox" id="mat-select-10" tabindex="0" aria-label="Kiểu thuê phòng" aria-required="false" aria-disabled="false" aria-invalid="false" aria-multiselectable="false">
                                                <div class="mat-select-trigger" aria-hidden="true" cdk-overlay-origin="">
                                                   <div class="mat-select-value">
                                                      <!----><!---->
                                                      <span class="mat-select-value-text ng-tns-c33-166 ng-star-inserted">
                                 <!----><span class="ng-tns-c33-166 ng-star-inserted">Thuê theo giờ</span><!---->
                              </span>
                                                   </div>
                                                   <div class="mat-select-arrow-wrapper">
                                                      <div class="mat-select-arrow"></div>
                                                   </div>
                                                </div>
                                                <!---->
                                             </mat-select>
                                             <span class="mat-form-field-label-wrapper">
                        <!---->
                        <label class="mat-form-field-label ng-tns-c5-165 ng-star-inserted" id="mat-form-field-label-95" for="mat-select-10" aria-owns="mat-select-10">
                           <!----><!---->Kiểu thuê phòng<!----><!---->
                        </label>
                     </span>
                                          </div>
                                          <!---->
                                       </div>
                                       <!---->
                                       <div class="mat-form-field-underline ng-tns-c5-165 ng-star-inserted"><span class="mat-form-field-ripple"></span></div>
                                       <div class="mat-form-field-subscript-wrapper">
                                          <!----><!---->
                                          <div class="mat-form-field-hint-wrapper ng-tns-c5-165 ng-trigger ng-trigger-transitionMessages ng-star-inserted" style="opacity: 1; transform: translateY(0%);">
                                             <!---->
                                             <div class="mat-form-field-hint-spacer"></div>
                                          </div>
                                       </div>
                                    </div>
                                 </mat-form-field>
                                 <div _ngcontent-c40="" class="d-inline w-50 pl-2 text-muted text-sm"><i _ngcontent-c40="" class="far fa-clock text-primary"></i> 3 Phút</div>
                                 <!----><!---->
                                 <mat-form-field _ngcontent-c40="" class="w-50 pr-2 mat-form-field ng-tns-c5-167 mat-primary mat-form-field-type-mat-input mat-form-field-appearance-legacy mat-form-field-can-float mat-form-field-has-label mat-form-field-hide-placeholder ng-untouched ng-pristine ng-valid mat-form-field-should-float">
                                    <div class="mat-form-field-wrapper">
                                       <div class="mat-form-field-flex">
                                          <!----><!---->
                                          <div class="mat-form-field-infix">
                                             <span class="bmd-form-group"><input _ngcontent-c40="" class="input-money mat-input-element mat-form-field-autofill-control cdk-text-field-autofill-monitored ng-untouched ng-pristine ng-valid" matinput="" name="model.roomMoney" placeholder="Tiền phòng" type="number" id="mat-input-37" aria-invalid="false" aria-required="false"></span>
                                             <span class="mat-form-field-label-wrapper">
                        <!---->
                        <label class="mat-form-field-label ng-tns-c5-167 ng-star-inserted" id="mat-form-field-label-97" for="mat-input-37" aria-owns="mat-input-37">
                           <!----><!---->Tiền phòng<!----><!---->
                        </label>
                     </span>
                                          </div>
                                          <!---->
                                          <div class="mat-form-field-suffix ng-tns-c5-167 ng-star-inserted"><span _ngcontent-c40="" matsuffix="">.000 ₫</span></div>
                                       </div>
                                       <!---->
                                       <div class="mat-form-field-underline ng-tns-c5-167 ng-star-inserted"><span class="mat-form-field-ripple"></span></div>
                                       <div class="mat-form-field-subscript-wrapper">
                                          <!----><!---->
                                          <div class="mat-form-field-hint-wrapper ng-tns-c5-167 ng-trigger ng-trigger-transitionMessages ng-star-inserted" style="opacity: 1; transform: translateY(0%);">
                                             <!---->
                                             <div class="mat-form-field-hint-spacer"></div>
                                          </div>
                                       </div>
                                    </div>
                                 </mat-form-field>
                                 <div _ngcontent-c40=""></div>
                                 <mat-form-field _ngcontent-c40="" class="w-50 pr-2 mat-form-field ng-tns-c5-168 mat-primary mat-form-field-type-mat-input mat-form-field-appearance-legacy mat-form-field-can-float mat-form-field-has-label mat-form-field-hide-placeholder ng-untouched ng-pristine ng-valid mat-form-field-should-float">
                                    <div class="mat-form-field-wrapper">
                                       <div class="mat-form-field-flex">
                                          <!----><!---->
                                          <div class="mat-form-field-infix">
                                             <span class="bmd-form-group"><input _ngcontent-c40="" class="input-money mat-input-element mat-form-field-autofill-control cdk-text-field-autofill-monitored ng-untouched ng-pristine ng-valid" matinput="" name="model.surchargeRoomMoney" placeholder="Phụ thu phòng" type="number" id="mat-input-38" aria-invalid="false" aria-required="false"></span>
                                             <span class="mat-form-field-label-wrapper">
                        <!---->
                        <label class="mat-form-field-label ng-tns-c5-168 ng-star-inserted" id="mat-form-field-label-99" for="mat-input-38" aria-owns="mat-input-38">
                           <!----><!---->Phụ thu phòng<!----><!---->
                        </label>
                     </span>
                                          </div>
                                          <!---->
                                          <div class="mat-form-field-suffix ng-tns-c5-168 ng-star-inserted"><span _ngcontent-c40="" matsuffix="">.000 ₫</span></div>
                                       </div>
                                       <!---->
                                       <div class="mat-form-field-underline ng-tns-c5-168 ng-star-inserted"><span class="mat-form-field-ripple"></span></div>
                                       <div class="mat-form-field-subscript-wrapper">
                                          <!----><!---->
                                          <div class="mat-form-field-hint-wrapper ng-tns-c5-168 ng-trigger ng-trigger-transitionMessages ng-star-inserted" style="opacity: 1; transform: translateY(0%);">
                                             <!---->
                                             <div class="mat-form-field-hint-spacer"></div>
                                          </div>
                                       </div>
                                    </div>
                                 </mat-form-field>
                                 <mat-form-field _ngcontent-c40="" class="w-50 pl-2 mat-form-field ng-tns-c5-169 mat-primary mat-form-field-type-mat-input mat-form-field-appearance-legacy mat-form-field-can-float mat-form-field-has-label mat-form-field-hide-placeholder ng-untouched ng-pristine ng-valid mat-form-field-should-float">
                                    <div class="mat-form-field-wrapper">
                                       <div class="mat-form-field-flex">
                                          <!----><!---->
                                          <div class="mat-form-field-infix">
                                             <span class="bmd-form-group"><input _ngcontent-c40="" class="input-money mat-input-element mat-form-field-autofill-control cdk-text-field-autofill-monitored ng-untouched ng-pristine ng-valid" matinput="" name="model.prepaidMoney" placeholder="Tiền trả trước" type="number" id="mat-input-39" aria-invalid="false" aria-required="false"></span>
                                             <span class="mat-form-field-label-wrapper">
                        <!---->
                        <label class="mat-form-field-label ng-tns-c5-169 ng-star-inserted" id="mat-form-field-label-101" for="mat-input-39" aria-owns="mat-input-39">
                           <!----><!---->Tiền trả trước<!----><!---->
                        </label>
                     </span>
                                          </div>
                                          <!---->
                                          <div class="mat-form-field-suffix ng-tns-c5-169 ng-star-inserted"><span _ngcontent-c40="" matsuffix="">.000 ₫</span></div>
                                       </div>
                                       <!---->
                                       <div class="mat-form-field-underline ng-tns-c5-169 ng-star-inserted"><span class="mat-form-field-ripple"></span></div>
                                       <div class="mat-form-field-subscript-wrapper">
                                          <!----><!---->
                                          <div class="mat-form-field-hint-wrapper ng-tns-c5-169 ng-trigger ng-trigger-transitionMessages ng-star-inserted" style="opacity: 1; transform: translateY(0%);">
                                             <!---->
                                             <div class="mat-form-field-hint-spacer"></div>
                                          </div>
                                       </div>
                                    </div>
                                 </mat-form-field>
                                 <mat-form-field _ngcontent-c40="" class="w-50 pr-2 mat-form-field ng-tns-c5-170 mat-primary mat-form-field-type-mat-input mat-form-field-appearance-legacy mat-form-field-can-float mat-form-field-has-label mat-form-field-hide-placeholder ng-untouched ng-pristine ng-valid mat-form-field-should-float">
                                    <div class="mat-form-field-wrapper">
                                       <div class="mat-form-field-flex">
                                          <!----><!---->
                                          <div class="mat-form-field-infix">
                                             <span class="bmd-form-group"><input _ngcontent-c40="" class="input-money mat-input-element mat-form-field-autofill-control cdk-text-field-autofill-monitored ng-untouched ng-pristine ng-valid" matinput="" name="model.surchargeMoney" placeholder="Thu / giảm trừ khác" type="number" id="mat-input-40" aria-invalid="false" aria-required="false"></span>
                                             <span class="mat-form-field-label-wrapper">
                        <!---->
                        <label class="mat-form-field-label ng-tns-c5-170 ng-star-inserted" id="mat-form-field-label-103" for="mat-input-40" aria-owns="mat-input-40">
                           <!----><!---->Thu / giảm trừ khác<!----><!---->
                        </label>
                     </span>
                                          </div>
                                          <!---->
                                          <div class="mat-form-field-suffix ng-tns-c5-170 ng-star-inserted"><span _ngcontent-c40="" matsuffix="">.000 ₫</span></div>
                                       </div>
                                       <!---->
                                       <div class="mat-form-field-underline ng-tns-c5-170 ng-star-inserted"><span class="mat-form-field-ripple"></span></div>
                                       <div class="mat-form-field-subscript-wrapper">
                                          <!----><!---->
                                          <div class="mat-form-field-hint-wrapper ng-tns-c5-170 ng-trigger ng-trigger-transitionMessages ng-star-inserted" style="opacity: 1; transform: translateY(0%);">
                                             <!---->
                                             <div class="mat-form-field-hint-spacer"></div>
                                          </div>
                                       </div>
                                    </div>
                                 </mat-form-field>
                                 <mat-form-field _ngcontent-c40="" class="w-50 pl-2 mat-form-field ng-tns-c5-171 mat-primary mat-form-field-type-mat-input mat-form-field-appearance-legacy mat-form-field-can-float mat-form-field-has-label mat-form-field-hide-placeholder ng-untouched ng-pristine mat-form-field-disabled mat-form-field-should-float">
                                    <div class="mat-form-field-wrapper">
                                       <div class="mat-form-field-flex">
                                          <!----><!---->
                                          <div class="mat-form-field-infix">
                                             <span class="bmd-form-group"><input _ngcontent-c40="" class="input-money mat-input-element mat-form-field-autofill-control cdk-text-field-autofill-monitored ng-untouched ng-pristine" matinput="" name="model.menuMoney" placeholder="Tiền menu" id="mat-input-41" aria-invalid="false" aria-required="false" disabled=""></span>
                                             <span class="mat-form-field-label-wrapper">
                        <!---->
                        <label class="mat-form-field-label ng-tns-c5-171 ng-star-inserted" id="mat-form-field-label-105" for="mat-input-41" aria-owns="mat-input-41">
                           <!----><!---->Tiền menu<!----><!---->
                        </label>
                     </span>
                                          </div>
                                          <!---->
                                          <div class="mat-form-field-suffix ng-tns-c5-171 ng-star-inserted"><span _ngcontent-c40="" matsuffix="">.000 ₫</span></div>
                                       </div>
                                       <!---->
                                       <div class="mat-form-field-underline ng-tns-c5-171 ng-star-inserted"><span class="mat-form-field-ripple"></span></div>
                                       <div class="mat-form-field-subscript-wrapper">
                                          <!----><!---->
                                          <div class="mat-form-field-hint-wrapper ng-tns-c5-171 ng-trigger ng-trigger-transitionMessages ng-star-inserted" style="opacity: 1; transform: translateY(0%);">
                                             <!---->
                                             <div class="mat-form-field-hint-spacer"></div>
                                          </div>
                                       </div>
                                    </div>
                                 </mat-form-field>
                                 <mat-form-field _ngcontent-c40="" class="w-50 pr-2 mat-form-field ng-tns-c5-172 mat-primary mat-form-field-type-mat-input mat-form-field-appearance-legacy mat-form-field-can-float mat-form-field-has-label mat-form-field-hide-placeholder ng-untouched ng-pristine mat-form-field-disabled mat-form-field-should-float">
                                    <div class="mat-form-field-wrapper">
                                       <div class="mat-form-field-flex">
                                          <!----><!---->
                                          <div class="mat-form-field-infix">
                                             <span class="bmd-form-group"><input _ngcontent-c40="" class="input-money mat-input-element mat-form-field-autofill-control cdk-text-field-autofill-monitored ng-untouched ng-pristine" matinput="" name="model.totalMoney" placeholder="Tổng tiền" id="mat-input-42" aria-invalid="false" aria-required="false" disabled=""></span>
                                             <span class="mat-form-field-label-wrapper">
                        <!---->
                        <label class="mat-form-field-label ng-tns-c5-172 ng-star-inserted" id="mat-form-field-label-107" for="mat-input-42" aria-owns="mat-input-42">
                           <!----><!---->Tổng tiền<!----><!---->
                        </label>
                     </span>
                                          </div>
                                          <!---->
                                          <div class="mat-form-field-suffix ng-tns-c5-172 ng-star-inserted"><span _ngcontent-c40="" matsuffix="">.000 ₫</span></div>
                                       </div>
                                       <!---->
                                       <div class="mat-form-field-underline ng-tns-c5-172 ng-star-inserted"><span class="mat-form-field-ripple"></span></div>
                                       <div class="mat-form-field-subscript-wrapper">
                                          <!----><!---->
                                          <div class="mat-form-field-hint-wrapper ng-tns-c5-172 ng-trigger ng-trigger-transitionMessages ng-star-inserted" style="opacity: 1; transform: translateY(0%);">
                                             <!---->
                                             <div class="mat-form-field-hint-spacer"></div>
                                          </div>
                                       </div>
                                    </div>
                                 </mat-form-field>
                                 <mat-form-field _ngcontent-c40="" class="w-50 pl-2 mat-form-field ng-tns-c5-173 mat-primary mat-form-field-type-mat-input mat-form-field-appearance-legacy mat-form-field-can-float mat-form-field-has-label mat-form-field-hide-placeholder ng-untouched ng-pristine mat-form-field-disabled mat-form-field-should-float">
                                    <div class="mat-form-field-wrapper">
                                       <div class="mat-form-field-flex">
                                          <!----><!---->
                                          <div class="mat-form-field-infix">
                                             <span class="bmd-form-group"><input _ngcontent-c40="" class="input-money mat-input-element mat-form-field-autofill-control cdk-text-field-autofill-monitored ng-untouched ng-pristine" matinput="" name="model.payMoney" placeholder="Tiền cần thanh toán" id="mat-input-43" aria-invalid="false" aria-required="false" disabled=""></span>
                                             <span class="mat-form-field-label-wrapper">
                        <!---->
                        <label class="mat-form-field-label ng-tns-c5-173 ng-star-inserted" id="mat-form-field-label-109" for="mat-input-43" aria-owns="mat-input-43">
                           <!----><!---->Tiền cần thanh toán<!----><!---->
                        </label>
                     </span>
                                          </div>
                                          <!---->
                                          <div class="mat-form-field-suffix ng-tns-c5-173 ng-star-inserted"><span _ngcontent-c40="" matsuffix="">.000 ₫</span></div>
                                       </div>
                                       <!---->
                                       <div class="mat-form-field-underline ng-tns-c5-173 ng-star-inserted"><span class="mat-form-field-ripple"></span></div>
                                       <div class="mat-form-field-subscript-wrapper">
                                          <!----><!---->
                                          <div class="mat-form-field-hint-wrapper ng-tns-c5-173 ng-trigger ng-trigger-transitionMessages ng-star-inserted" style="opacity: 1; transform: translateY(0%);">
                                             <!---->
                                             <div class="mat-form-field-hint-spacer"></div>
                                          </div>
                                       </div>
                                    </div>
                                 </mat-form-field>
                                 <mat-form-field _ngcontent-c40="" class="w-100 mat-form-field ng-tns-c5-174 mat-primary mat-form-field-type-mat-input mat-form-field-appearance-legacy mat-form-field-can-float mat-form-field-has-label mat-form-field-hide-placeholder ng-untouched ng-pristine ng-valid">
                                    <div class="mat-form-field-wrapper">
                                       <div class="mat-form-field-flex">
                                          <!----><!---->
                                          <div class="mat-form-field-infix">
                                             <span class="bmd-form-group"><input _ngcontent-c40="" class="mat-input-element mat-form-field-autofill-control cdk-text-field-autofill-monitored ng-untouched ng-pristine ng-valid" matinput="" name="model.note" placeholder="Ghi chú ( Tên khách hàng, CMT, SDT ... )" id="mat-input-44" aria-invalid="false" aria-required="false"></span>
                                             <span class="mat-form-field-label-wrapper">
                        <!---->
                        <label class="mat-form-field-label ng-tns-c5-174 mat-empty mat-form-field-empty ng-star-inserted" id="mat-form-field-label-111" for="mat-input-44" aria-owns="mat-input-44">
                           <!----><!---->Ghi chú ( Tên khách hàng, CMT, SDT ... )<!----><!---->
                        </label>
                     </span>
                                          </div>
                                          <!---->
                                       </div>
                                       <!---->
                                       <div class="mat-form-field-underline ng-tns-c5-174 ng-star-inserted"><span class="mat-form-field-ripple"></span></div>
                                       <div class="mat-form-field-subscript-wrapper">
                                          <!----><!---->
                                          <div class="mat-form-field-hint-wrapper ng-tns-c5-174 ng-trigger ng-trigger-transitionMessages ng-star-inserted" style="opacity: 1; transform: translateY(0%);">
                                             <!---->
                                             <div class="mat-form-field-hint-spacer"></div>
                                          </div>
                                       </div>
                                    </div>
                                 </mat-form-field>
                                 <mat-form-field _ngcontent-c40="" class="w-50 pr-2 mat-form-field ng-tns-c5-175 mat-primary mat-form-field-type-mat-input mat-form-field-appearance-legacy mat-form-field-can-float mat-form-field-has-label mat-form-field-hide-placeholder ng-untouched ng-pristine mat-form-field-disabled mat-form-field-should-float">
                                    <div class="mat-form-field-wrapper">
                                       <div class="mat-form-field-flex">
                                          <!----><!---->
                                          <div class="mat-form-field-infix">
                                             <span class="bmd-form-group"><input _ngcontent-c40="" class="mat-input-element mat-form-field-autofill-control cdk-text-field-autofill-monitored ng-untouched ng-pristine" matinput="" name="model.createdUsername" placeholder="Tài khoản nhận phòng" id="mat-input-45" aria-invalid="false" aria-required="false" disabled=""></span>
                                             <span class="mat-form-field-label-wrapper">
                        <!---->
                        <label class="mat-form-field-label ng-tns-c5-175 ng-star-inserted" id="mat-form-field-label-113" for="mat-input-45" aria-owns="mat-input-45">
                           <!----><!---->Tài khoản nhận phòng<!----><!---->
                        </label>
                     </span>
                                          </div>
                                          <!---->
                                       </div>
                                       <!---->
                                       <div class="mat-form-field-underline ng-tns-c5-175 ng-star-inserted"><span class="mat-form-field-ripple"></span></div>
                                       <div class="mat-form-field-subscript-wrapper">
                                          <!----><!---->
                                          <div class="mat-form-field-hint-wrapper ng-tns-c5-175 ng-trigger ng-trigger-transitionMessages ng-star-inserted" style="opacity: 1; transform: translateY(0%);">
                                             <!---->
                                             <div class="mat-form-field-hint-spacer"></div>
                                          </div>
                                       </div>
                                    </div>
                                 </mat-form-field>
                                 <mat-form-field _ngcontent-c40="" class="w-50 pl-2 mat-form-field ng-tns-c5-176 mat-primary mat-form-field-type-mat-input mat-form-field-appearance-legacy mat-form-field-can-float mat-form-field-has-label mat-form-field-hide-placeholder ng-untouched ng-pristine mat-form-field-disabled mat-form-field-should-float">
                                    <div class="mat-form-field-wrapper">
                                       <div class="mat-form-field-flex">
                                          <!----><!---->
                                          <div class="mat-form-field-infix">
                                             <span class="bmd-form-group"><input _ngcontent-c40="" class="mat-input-element mat-form-field-autofill-control cdk-text-field-autofill-monitored ng-untouched ng-pristine" matinput="" name="model.updatedUsername" placeholder="Tài khoản trả phòng" id="mat-input-46" aria-invalid="false" aria-required="false" disabled=""></span>
                                             <span class="mat-form-field-label-wrapper">
                        <!---->
                        <label class="mat-form-field-label ng-tns-c5-176 ng-star-inserted" id="mat-form-field-label-115" for="mat-input-46" aria-owns="mat-input-46">
                           <!----><!---->Tài khoản trả phòng<!----><!---->
                        </label>
                     </span>
                                          </div>
                                          <!---->
                                       </div>
                                       <!---->
                                       <div class="mat-form-field-underline ng-tns-c5-176 ng-star-inserted"><span class="mat-form-field-ripple"></span></div>
                                       <div class="mat-form-field-subscript-wrapper">
                                          <!----><!---->
                                          <div class="mat-form-field-hint-wrapper ng-tns-c5-176 ng-trigger ng-trigger-transitionMessages ng-star-inserted" style="opacity: 1; transform: translateY(0%);">
                                             <!---->
                                             <div class="mat-form-field-hint-spacer"></div>
                                          </div>
                                       </div>
                                    </div>
                                 </mat-form-field>
                                 <div _ngcontent-c40="" style="margin: 0px -1rem">
                                    <mat-toolbar _ngcontent-c40="" class="border-top mat-toolbar mat-toolbar-single-row">
                                       <span _ngcontent-c40="" class="title-toolbar">Menu sử dụng</span>
                                       <div _ngcontent-c40="" class="flex-grow-1"></div>
                                       <mat-icon _ngcontent-c40="" class="pointer mat-icon notranslate material-icons mat-icon-no-color" role="img" style="color: #c2c2c2" aria-hidden="true">add_box</mat-icon>
                                    </mat-toolbar>
                                    <table _ngcontent-c40="" class="w-100 border-top border-bottom mat-table" mat-table="" role="grid">
                                       <thead role="rowgroup">
                                       <!---->
                                       <tr _ngcontent-c40="" class="mat-header-row ng-star-inserted" mat-header-row="" role="row">
                                          <!---->
                                          <th _ngcontent-c40="" class="mat-header-cell cdk-column-menuName mat-column-menuName ng-star-inserted" mat-header-cell="" mattooltip="Click cột này để +1 số lượng" role="columnheader" aria-describedby="cdk-describedby-message-23" cdk-describedby-host="" style="touch-action: none; user-select: none; -webkit-user-drag: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);"> Tên menu (+1) </th>
                                          <!---->
                                          <th _ngcontent-c40="" class="mat-header-cell cdk-column-quantity mat-column-quantity ng-star-inserted" mat-header-cell="" mattooltip="Click cột để -1 số lượng" role="columnheader" aria-describedby="cdk-describedby-message-24" cdk-describedby-host="" style="touch-action: none; user-select: none; -webkit-user-drag: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);"> Số lượng (-1)</th>
                                          <!---->
                                          <th _ngcontent-c40="" class="mat-header-cell cdk-column-totalMoney mat-column-totalMoney ng-star-inserted" mat-header-cell="" role="columnheader"> Thành tiền </th>
                                          <th _ngcontent-c40="" class="mat-header-cell cdk-column-action mat-column-action ng-star-inserted" mat-header-cell="" role="columnheader"> Thao tác </th>
                                       </tr>
                                       </thead>
                                       <tbody role="rowgroup">
                                       <!---->
                                       </tbody>
                                       <tfoot role="rowgroup">
                                       <!---->
                                       <tr _ngcontent-c40="" class="mat-footer-row ng-star-inserted" mat-footer-row="" role="row">
                                          <!---->
                                          <td _ngcontent-c40="" class="mat-footer-cell cdk-column-menuName mat-column-menuName ng-star-inserted" mat-footer-cell="" role="gridcell"> Tổng tiền </td>
                                          <td _ngcontent-c40="" class="mat-footer-cell cdk-column-quantity mat-column-quantity ng-star-inserted" mat-footer-cell="" role="gridcell"></td>
                                          <td _ngcontent-c40="" class="mat-footer-cell cdk-column-totalMoney mat-column-totalMoney ng-star-inserted" mat-footer-cell="" role="gridcell"> 0&nbsp;₫ </td>
                                          <td _ngcontent-c40="" class="mat-footer-cell cdk-column-action mat-column-action ng-star-inserted" mat-footer-cell="" role="gridcell"></td>
                                       </tr>
                                       </tfoot>
                                    </table>
                                 </div>
                              </form>
                           </div>
                        </app-history-update>
                        <!---->
                     </div>
                     <div _ngcontent-c39=""></div>
                  </div>
               </app-history>
            </div>
         </mat-drawer-content>
      </mat-drawer-container>
   </app-main-layout>
</app-root>
<script type="text/javascript" src="runtime.4eba790144b176b2a18a.js"></script><script type="text/javascript" src="polyfills.e2c8de29d9e5cc89eea3.js"></script><script type="text/javascript" src="scripts.80ba81c407a324e7653b.js"></script><script type="text/javascript" src="main.5151abf897fb96b9abc7.js"></script>
<script>
   var width = 180;
   var frame = 1;
   const interval = 30;
   var loadInterval = setInterval(() => {
      var px = width * frame;
      if (frame <= 50) {
         try {
            document.getElementById("image").style.backgroundPosition =
                    `-${px}px -0px`;
            if (frame == 50) {
               clearInterval(loadInterval);
            }
         } catch (error) {
            clearInterval(loadInterval);
         }
      }
      frame++;
   }, interval);
</script>
<script>
   function swapForm(on,off){
      var x = document.getElementById(on);
      var y = document.getElementById(off);

      x.style.display ="block";
      y.style.display ="none";
   }

</script>
<iframe id="ssIFrame_google" sandbox="allow-scripts allow-same-origin" aria-hidden="true" frame-border="0" src="https://accounts.google.com/o/oauth2/iframe#origin=https%3A%2F%2Fadmin.shotel.vn&amp;rpcToken=851571817.1634971" style="position: absolute; width: 1px; height: 1px; left: -9999px; top: -9999px; right: -9999px; bottom: -9999px; display: none;"></iframe>
<div class="cdk-live-announcer-element cdk-visually-hidden" aria-atomic="true" aria-live="assertive"></div>
<div class="cdk-overlay-container"></div>
<div id="cdk-describedby-message-container" aria-hidden="true" style="display: none;">
   <div id="cdk-describedby-message-17">Trang trước</div>
   <div id="cdk-describedby-message-18">Trang sau</div>
</div>
</body>
</html>