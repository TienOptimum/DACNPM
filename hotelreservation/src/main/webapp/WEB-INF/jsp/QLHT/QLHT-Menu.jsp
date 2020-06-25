<html lang="en">
<%@ page contentType="text/html; charset=UTF-8" %>
   <head>
      <meta charset="utf-8">
      <title>SHOTEL</title>
      <base href="/">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="icon" type="image/x-icon" href="favicon.ico">
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons|Material+Icons+Outlined" rel="stylesheet">
      <link rel="stylesheet" href="css/all.css" crossorigin="anonymous">
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
      <script charset="utf-8" src="1.d8b1a80d404fed8a7a5e.js"></script><script charset="utf-8" src="3.6c098552832d79f746cb.js"></script><script charset="utf-8" src="0.6b42a3ddf543bb988c41.js"></script><script charset="utf-8" src="2.a3cbf4ac2200ddd71257.js"></script>
      <style>.error-list[_ngcontent-c4]{list-style:none;-webkit-padding-start:0!important;padding-inline-start:0!important;font-size:14px}</style>
      <style>.mat-form-field{display:inline-block;position:relative;text-align:left}[dir=rtl] .mat-form-field{text-align:right}.mat-form-field-wrapper{position:relative}.mat-form-field-flex{display:inline-flex;align-items:baseline;box-sizing:border-box;width:100%}.mat-form-field-prefix,.mat-form-field-suffix{white-space:nowrap;flex:none;position:relative}.mat-form-field-infix{display:block;position:relative;flex:auto;min-width:0;width:180px}@media (-ms-high-contrast:active){.mat-form-field-infix{border-image:linear-gradient(transparent,transparent)}}.mat-form-field-label-wrapper{position:absolute;left:0;box-sizing:content-box;width:100%;height:100%;overflow:hidden;pointer-events:none}[dir=rtl] .mat-form-field-label-wrapper{left:auto;right:0}.mat-form-field-label{position:absolute;left:0;font:inherit;pointer-events:none;width:100%;white-space:nowrap;text-overflow:ellipsis;overflow:hidden;transform-origin:0 0;transition:transform .4s cubic-bezier(.25,.8,.25,1),color .4s cubic-bezier(.25,.8,.25,1),width .4s cubic-bezier(.25,.8,.25,1);display:none}[dir=rtl] .mat-form-field-label{transform-origin:100% 0;left:auto;right:0}.mat-form-field-can-float.mat-form-field-should-float .mat-form-field-label,.mat-form-field-empty.mat-form-field-label{display:block}.mat-form-field-autofill-control:-webkit-autofill+.mat-form-field-label-wrapper .mat-form-field-label{display:none}.mat-form-field-can-float .mat-form-field-autofill-control:-webkit-autofill+.mat-form-field-label-wrapper .mat-form-field-label{display:block;transition:none}.mat-input-server:focus+.mat-form-field-label-wrapper .mat-form-field-label,.mat-input-server[placeholder]:not(:placeholder-shown)+.mat-form-field-label-wrapper .mat-form-field-label{display:none}.mat-form-field-can-float .mat-input-server:focus+.mat-form-field-label-wrapper .mat-form-field-label,.mat-form-field-can-float .mat-input-server[placeholder]:not(:placeholder-shown)+.mat-form-field-label-wrapper .mat-form-field-label{display:block}.mat-form-field-label:not(.mat-form-field-empty){transition:none}.mat-form-field-underline{position:absolute;width:100%;pointer-events:none;transform:scaleY(1.0001)}.mat-form-field-ripple{position:absolute;left:0;width:100%;transform-origin:50%;transform:scaleX(.5);opacity:0;transition:background-color .3s cubic-bezier(.55,0,.55,.2)}.mat-form-field.mat-focused .mat-form-field-ripple,.mat-form-field.mat-form-field-invalid .mat-form-field-ripple{opacity:1;transform:scaleX(1);transition:transform .3s cubic-bezier(.25,.8,.25,1),opacity .1s cubic-bezier(.25,.8,.25,1),background-color .3s cubic-bezier(.25,.8,.25,1)}.mat-form-field-subscript-wrapper{position:absolute;box-sizing:border-box;width:100%;overflow:hidden}.mat-form-field-label-wrapper .mat-icon,.mat-form-field-subscript-wrapper .mat-icon{width:1em;height:1em;font-size:inherit;vertical-align:baseline}.mat-form-field-hint-wrapper{display:flex}.mat-form-field-hint-spacer{flex:1 0 1em}.mat-error{display:block}.mat-form-field-control-wrapper{position:relative}.mat-form-field._mat-animation-noopable .mat-form-field-label,.mat-form-field._mat-animation-noopable .mat-form-field-ripple{transition:none}</style>
      <style>.mat-form-field-appearance-fill .mat-form-field-flex{border-radius:4px 4px 0 0;padding:.75em .75em 0 .75em}@media (-ms-high-contrast:active){.mat-form-field-appearance-fill .mat-form-field-flex{outline:solid 1px}}.mat-form-field-appearance-fill .mat-form-field-underline::before{content:'';display:block;position:absolute;bottom:0;height:1px;width:100%}.mat-form-field-appearance-fill .mat-form-field-ripple{bottom:0;height:2px}@media (-ms-high-contrast:active){.mat-form-field-appearance-fill .mat-form-field-ripple{height:0;border-top:solid 2px}}.mat-form-field-appearance-fill:not(.mat-form-field-disabled) .mat-form-field-flex:hover~.mat-form-field-underline .mat-form-field-ripple{opacity:1;transform:none;transition:opacity .6s cubic-bezier(.25,.8,.25,1)}.mat-form-field-appearance-fill._mat-animation-noopable:not(.mat-form-field-disabled) .mat-form-field-flex:hover~.mat-form-field-underline .mat-form-field-ripple{transition:none}.mat-form-field-appearance-fill .mat-form-field-subscript-wrapper{padding:0 1em}</style>
      <style>.mat-input-element{font:inherit;background:0 0;color:currentColor;border:none;outline:0;padding:0;margin:0;width:100%;max-width:100%;vertical-align:bottom;text-align:inherit}.mat-input-element:-moz-ui-invalid{box-shadow:none}.mat-input-element::-ms-clear,.mat-input-element::-ms-reveal{display:none}.mat-input-element,.mat-input-element::-webkit-search-cancel-button,.mat-input-element::-webkit-search-decoration,.mat-input-element::-webkit-search-results-button,.mat-input-element::-webkit-search-results-decoration{-webkit-appearance:none}.mat-input-element::-webkit-caps-lock-indicator,.mat-input-element::-webkit-contacts-auto-fill-button,.mat-input-element::-webkit-credentials-auto-fill-button{visibility:hidden}.mat-input-element[type=date]::after,.mat-input-element[type=datetime-local]::after,.mat-input-element[type=datetime]::after,.mat-input-element[type=month]::after,.mat-input-element[type=time]::after,.mat-input-element[type=week]::after{content:' ';white-space:pre;width:1px}.mat-input-element::-webkit-calendar-picker-indicator,.mat-input-element::-webkit-clear-button,.mat-input-element::-webkit-inner-spin-button{font-size:.75em}.mat-input-element::placeholder{-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;transition:color .4s .133s cubic-bezier(.25,.8,.25,1)}.mat-input-element::-moz-placeholder{-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;transition:color .4s .133s cubic-bezier(.25,.8,.25,1)}.mat-input-element::-webkit-input-placeholder{-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;transition:color .4s .133s cubic-bezier(.25,.8,.25,1)}.mat-input-element:-ms-input-placeholder{-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;transition:color .4s .133s cubic-bezier(.25,.8,.25,1)}.mat-form-field-hide-placeholder .mat-input-element::placeholder{color:transparent!important;-webkit-text-fill-color:transparent;transition:none}.mat-form-field-hide-placeholder .mat-input-element::-moz-placeholder{color:transparent!important;-webkit-text-fill-color:transparent;transition:none}.mat-form-field-hide-placeholder .mat-input-element::-webkit-input-placeholder{color:transparent!important;-webkit-text-fill-color:transparent;transition:none}.mat-form-field-hide-placeholder .mat-input-element:-ms-input-placeholder{color:transparent!important;-webkit-text-fill-color:transparent;transition:none}textarea.mat-input-element{resize:vertical;overflow:auto}textarea.mat-input-element.cdk-textarea-autosize{resize:none}textarea.mat-input-element{padding:2px 0;margin:-2px 0}select.mat-input-element{-moz-appearance:none;-webkit-appearance:none;position:relative;background-color:transparent;display:inline-flex;box-sizing:border-box;padding-top:1em;top:-1em;margin-bottom:-1em}select.mat-input-element::-ms-expand{display:none}select.mat-input-element::-moz-focus-inner{border:0}select.mat-input-element:not(:disabled){cursor:pointer}select.mat-input-element::-ms-value{color:inherit;background:0 0}@media (-ms-high-contrast:active){.mat-focused select.mat-input-element::-ms-value{color:inherit}}.mat-form-field-type-mat-native-select .mat-form-field-infix::after{content:'';width:0;height:0;border-left:5px solid transparent;border-right:5px solid transparent;border-top:5px solid;position:absolute;top:50%;right:0;margin-top:-2.5px;pointer-events:none}[dir=rtl] .mat-form-field-type-mat-native-select .mat-form-field-infix::after{right:auto;left:0}.mat-form-field-type-mat-native-select .mat-input-element{padding-right:15px}[dir=rtl] .mat-form-field-type-mat-native-select .mat-input-element{padding-right:0;padding-left:15px}.mat-form-field-type-mat-native-select .mat-form-field-label-wrapper{max-width:calc(100% - 10px)}.mat-form-field-type-mat-native-select.mat-form-field-appearance-outline .mat-form-field-infix::after{margin-top:-5px}.mat-form-field-type-mat-native-select.mat-form-field-appearance-fill .mat-form-field-infix::after{margin-top:-10px}</style>
      <style>.mat-form-field-appearance-legacy .mat-form-field-label{transform:perspective(100px);-ms-transform:none}.mat-form-field-appearance-legacy .mat-form-field-prefix .mat-icon,.mat-form-field-appearance-legacy .mat-form-field-suffix .mat-icon{width:1em}.mat-form-field-appearance-legacy .mat-form-field-prefix .mat-icon-button,.mat-form-field-appearance-legacy .mat-form-field-suffix .mat-icon-button{font:inherit;vertical-align:baseline}.mat-form-field-appearance-legacy .mat-form-field-prefix .mat-icon-button .mat-icon,.mat-form-field-appearance-legacy .mat-form-field-suffix .mat-icon-button .mat-icon{font-size:inherit}.mat-form-field-appearance-legacy .mat-form-field-underline{height:1px}@media (-ms-high-contrast:active){.mat-form-field-appearance-legacy .mat-form-field-underline{height:0;border-top:solid 1px}}.mat-form-field-appearance-legacy .mat-form-field-ripple{top:0;height:2px;overflow:hidden}@media (-ms-high-contrast:active){.mat-form-field-appearance-legacy .mat-form-field-ripple{height:0;border-top:solid 2px}}.mat-form-field-appearance-legacy.mat-form-field-disabled .mat-form-field-underline{background-position:0;background-color:transparent}@media (-ms-high-contrast:active){.mat-form-field-appearance-legacy.mat-form-field-disabled .mat-form-field-underline{border-top-style:dotted;border-top-width:2px}}.mat-form-field-appearance-legacy.mat-form-field-invalid:not(.mat-focused) .mat-form-field-ripple{height:1px}</style>
      <style>.mat-form-field-appearance-outline .mat-form-field-wrapper{margin:.25em 0}.mat-form-field-appearance-outline .mat-form-field-flex{padding:0 .75em 0 .75em;margin-top:-.25em;position:relative}.mat-form-field-appearance-outline .mat-form-field-prefix,.mat-form-field-appearance-outline .mat-form-field-suffix{top:.25em}.mat-form-field-appearance-outline .mat-form-field-outline{display:flex;position:absolute;top:.25em;left:0;right:0;bottom:0;pointer-events:none}.mat-form-field-appearance-outline .mat-form-field-outline-end,.mat-form-field-appearance-outline .mat-form-field-outline-start{border:1px solid currentColor;min-width:5px}.mat-form-field-appearance-outline .mat-form-field-outline-start{border-radius:5px 0 0 5px;border-right-style:none}[dir=rtl] .mat-form-field-appearance-outline .mat-form-field-outline-start{border-right-style:solid;border-left-style:none;border-radius:0 5px 5px 0}.mat-form-field-appearance-outline .mat-form-field-outline-end{border-radius:0 5px 5px 0;border-left-style:none;flex-grow:1}[dir=rtl] .mat-form-field-appearance-outline .mat-form-field-outline-end{border-left-style:solid;border-right-style:none;border-radius:5px 0 0 5px}.mat-form-field-appearance-outline .mat-form-field-outline-gap{border-radius:.000001px;border:1px solid currentColor;border-left-style:none;border-right-style:none}.mat-form-field-appearance-outline.mat-form-field-can-float.mat-form-field-should-float .mat-form-field-outline-gap{border-top-color:transparent}.mat-form-field-appearance-outline .mat-form-field-outline-thick{opacity:0}.mat-form-field-appearance-outline .mat-form-field-outline-thick .mat-form-field-outline-end,.mat-form-field-appearance-outline .mat-form-field-outline-thick .mat-form-field-outline-gap,.mat-form-field-appearance-outline .mat-form-field-outline-thick .mat-form-field-outline-start{border-width:2px;transition:border-color .3s cubic-bezier(.25,.8,.25,1)}.mat-form-field-appearance-outline.mat-focused .mat-form-field-outline,.mat-form-field-appearance-outline.mat-form-field-invalid .mat-form-field-outline{opacity:0;transition:opacity .1s cubic-bezier(.25,.8,.25,1)}.mat-form-field-appearance-outline.mat-focused .mat-form-field-outline-thick,.mat-form-field-appearance-outline.mat-form-field-invalid .mat-form-field-outline-thick{opacity:1}.mat-form-field-appearance-outline:not(.mat-form-field-disabled) .mat-form-field-flex:hover .mat-form-field-outline{opacity:0;transition:opacity .6s cubic-bezier(.25,.8,.25,1)}.mat-form-field-appearance-outline:not(.mat-form-field-disabled) .mat-form-field-flex:hover .mat-form-field-outline-thick{opacity:1}.mat-form-field-appearance-outline .mat-form-field-subscript-wrapper{padding:0 1em}.mat-form-field-appearance-outline._mat-animation-noopable .mat-form-field-outline,.mat-form-field-appearance-outline._mat-animation-noopable .mat-form-field-outline-end,.mat-form-field-appearance-outline._mat-animation-noopable .mat-form-field-outline-gap,.mat-form-field-appearance-outline._mat-animation-noopable .mat-form-field-outline-start,.mat-form-field-appearance-outline._mat-animation-noopable:not(.mat-form-field-disabled) .mat-form-field-flex:hover~.mat-form-field-outline{transition:none}</style>
      <style>.mat-form-field-appearance-standard .mat-form-field-flex{padding-top:.75em}.mat-form-field-appearance-standard .mat-form-field-underline{height:1px}@media (-ms-high-contrast:active){.mat-form-field-appearance-standard .mat-form-field-underline{height:0;border-top:solid 1px}}.mat-form-field-appearance-standard .mat-form-field-ripple{bottom:0;height:2px}@media (-ms-high-contrast:active){.mat-form-field-appearance-standard .mat-form-field-ripple{height:0;border-top:2px}}.mat-form-field-appearance-standard.mat-form-field-disabled .mat-form-field-underline{background-position:0;background-color:transparent}@media (-ms-high-contrast:active){.mat-form-field-appearance-standard.mat-form-field-disabled .mat-form-field-underline{border-top-style:dotted;border-top-width:2px}}.mat-form-field-appearance-standard:not(.mat-form-field-disabled) .mat-form-field-flex:hover~.mat-form-field-underline .mat-form-field-ripple{opacity:1;transform:none;transition:opacity .6s cubic-bezier(.25,.8,.25,1)}.mat-form-field-appearance-standard._mat-animation-noopable:not(.mat-form-field-disabled) .mat-form-field-flex:hover~.mat-form-field-underline .mat-form-field-ripple{transition:none}</style>
      <style>@keyframes mat-checkbox-fade-in-background{0%{opacity:0}50%{opacity:1}}@keyframes mat-checkbox-fade-out-background{0%,50%{opacity:1}100%{opacity:0}}@keyframes mat-checkbox-unchecked-checked-checkmark-path{0%,50%{stroke-dashoffset:22.91026}50%{animation-timing-function:cubic-bezier(0,0,.2,.1)}100%{stroke-dashoffset:0}}@keyframes mat-checkbox-unchecked-indeterminate-mixedmark{0%,68.2%{transform:scaleX(0)}68.2%{animation-timing-function:cubic-bezier(0,0,0,1)}100%{transform:scaleX(1)}}@keyframes mat-checkbox-checked-unchecked-checkmark-path{from{animation-timing-function:cubic-bezier(.4,0,1,1);stroke-dashoffset:0}to{stroke-dashoffset:-22.91026}}@keyframes mat-checkbox-checked-indeterminate-checkmark{from{animation-timing-function:cubic-bezier(0,0,.2,.1);opacity:1;transform:rotate(0)}to{opacity:0;transform:rotate(45deg)}}@keyframes mat-checkbox-indeterminate-checked-checkmark{from{animation-timing-function:cubic-bezier(.14,0,0,1);opacity:0;transform:rotate(45deg)}to{opacity:1;transform:rotate(360deg)}}@keyframes mat-checkbox-checked-indeterminate-mixedmark{from{animation-timing-function:cubic-bezier(0,0,.2,.1);opacity:0;transform:rotate(-45deg)}to{opacity:1;transform:rotate(0)}}@keyframes mat-checkbox-indeterminate-checked-mixedmark{from{animation-timing-function:cubic-bezier(.14,0,0,1);opacity:1;transform:rotate(0)}to{opacity:0;transform:rotate(315deg)}}@keyframes mat-checkbox-indeterminate-unchecked-mixedmark{0%{animation-timing-function:linear;opacity:1;transform:scaleX(1)}100%,32.8%{opacity:0;transform:scaleX(0)}}.mat-checkbox-background,.mat-checkbox-frame{top:0;left:0;right:0;bottom:0;position:absolute;border-radius:2px;box-sizing:border-box;pointer-events:none}.mat-checkbox{transition:background .4s cubic-bezier(.25,.8,.25,1),box-shadow 280ms cubic-bezier(.4,0,.2,1);cursor:pointer;-webkit-tap-highlight-color:transparent}._mat-animation-noopable.mat-checkbox{transition:none;animation:none}.mat-checkbox .mat-ripple-element:not(.mat-checkbox-persistent-ripple){opacity:.16}.mat-checkbox-layout{-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;cursor:inherit;align-items:baseline;vertical-align:middle;display:inline-flex;white-space:nowrap}.mat-checkbox-label{-webkit-user-select:auto;-moz-user-select:auto;-ms-user-select:auto;user-select:auto}.mat-checkbox-inner-container{display:inline-block;height:16px;line-height:0;margin:auto;margin-right:8px;order:0;position:relative;vertical-align:middle;white-space:nowrap;width:16px;flex-shrink:0}[dir=rtl] .mat-checkbox-inner-container{margin-left:8px;margin-right:auto}.mat-checkbox-inner-container-no-side-margin{margin-left:0;margin-right:0}.mat-checkbox-frame{background-color:transparent;transition:border-color 90ms cubic-bezier(0,0,.2,.1);border-width:2px;border-style:solid}._mat-animation-noopable .mat-checkbox-frame{transition:none}@media (-ms-high-contrast:active){.mat-checkbox.cdk-keyboard-focused .mat-checkbox-frame{border-style:dotted}}.mat-checkbox-background{align-items:center;display:inline-flex;justify-content:center;transition:background-color 90ms cubic-bezier(0,0,.2,.1),opacity 90ms cubic-bezier(0,0,.2,.1)}._mat-animation-noopable .mat-checkbox-background{transition:none}.mat-checkbox-persistent-ripple{width:100%;height:100%;transform:none}.mat-checkbox-inner-container:hover .mat-checkbox-persistent-ripple{opacity:.04}.mat-checkbox.cdk-keyboard-focused .mat-checkbox-persistent-ripple{opacity:.12}.mat-checkbox-persistent-ripple,.mat-checkbox.mat-disabled .mat-checkbox-inner-container:hover .mat-checkbox-persistent-ripple{opacity:0}.mat-checkbox-checkmark{top:0;left:0;right:0;bottom:0;position:absolute;width:100%}.mat-checkbox-checkmark-path{stroke-dashoffset:22.91026;stroke-dasharray:22.91026;stroke-width:2.13333px}.mat-checkbox-mixedmark{width:calc(100% - 6px);height:2px;opacity:0;transform:scaleX(0) rotate(0);border-radius:2px}@media (-ms-high-contrast:active){.mat-checkbox-mixedmark{height:0;border-top:solid 2px;margin-top:2px}}.mat-checkbox-label-before .mat-checkbox-inner-container{order:1;margin-left:8px;margin-right:auto}[dir=rtl] .mat-checkbox-label-before .mat-checkbox-inner-container{margin-left:auto;margin-right:8px}.mat-checkbox-checked .mat-checkbox-checkmark{opacity:1}.mat-checkbox-checked .mat-checkbox-checkmark-path{stroke-dashoffset:0}.mat-checkbox-checked .mat-checkbox-mixedmark{transform:scaleX(1) rotate(-45deg)}.mat-checkbox-indeterminate .mat-checkbox-checkmark{opacity:0;transform:rotate(45deg)}.mat-checkbox-indeterminate .mat-checkbox-checkmark-path{stroke-dashoffset:0}.mat-checkbox-indeterminate .mat-checkbox-mixedmark{opacity:1;transform:scaleX(1) rotate(0)}.mat-checkbox-unchecked .mat-checkbox-background{background-color:transparent}.mat-checkbox-disabled{cursor:default}.mat-checkbox-anim-unchecked-checked .mat-checkbox-background{animation:180ms linear 0s mat-checkbox-fade-in-background}.mat-checkbox-anim-unchecked-checked .mat-checkbox-checkmark-path{animation:180ms linear 0s mat-checkbox-unchecked-checked-checkmark-path}.mat-checkbox-anim-unchecked-indeterminate .mat-checkbox-background{animation:180ms linear 0s mat-checkbox-fade-in-background}.mat-checkbox-anim-unchecked-indeterminate .mat-checkbox-mixedmark{animation:90ms linear 0s mat-checkbox-unchecked-indeterminate-mixedmark}.mat-checkbox-anim-checked-unchecked .mat-checkbox-background{animation:180ms linear 0s mat-checkbox-fade-out-background}.mat-checkbox-anim-checked-unchecked .mat-checkbox-checkmark-path{animation:90ms linear 0s mat-checkbox-checked-unchecked-checkmark-path}.mat-checkbox-anim-checked-indeterminate .mat-checkbox-checkmark{animation:90ms linear 0s mat-checkbox-checked-indeterminate-checkmark}.mat-checkbox-anim-checked-indeterminate .mat-checkbox-mixedmark{animation:90ms linear 0s mat-checkbox-checked-indeterminate-mixedmark}.mat-checkbox-anim-indeterminate-checked .mat-checkbox-checkmark{animation:.5s linear 0s mat-checkbox-indeterminate-checked-checkmark}.mat-checkbox-anim-indeterminate-checked .mat-checkbox-mixedmark{animation:.5s linear 0s mat-checkbox-indeterminate-checked-mixedmark}.mat-checkbox-anim-indeterminate-unchecked .mat-checkbox-background{animation:180ms linear 0s mat-checkbox-fade-out-background}.mat-checkbox-anim-indeterminate-unchecked .mat-checkbox-mixedmark{animation:.3s linear 0s mat-checkbox-indeterminate-unchecked-mixedmark}.mat-checkbox-input{bottom:0;left:50%}.mat-checkbox .mat-checkbox-ripple{position:absolute;left:calc(50% - 20px);top:calc(50% - 20px);height:40px;width:40px;z-index:1;pointer-events:none}</style>
      <script charset="utf-8" src="4.5285356e2ef5104265d0.js"></script>
      <style>.mat-progress-spinner{display:block;position:relative}.mat-progress-spinner svg{position:absolute;transform:rotate(-90deg);top:0;left:0;transform-origin:center;overflow:visible}.mat-progress-spinner circle{fill:transparent;transform-origin:center;transition:stroke-dashoffset 225ms linear}._mat-animation-noopable.mat-progress-spinner circle{transition:none;animation:none}.mat-progress-spinner.mat-progress-spinner-indeterminate-animation[mode=indeterminate]{animation:mat-progress-spinner-linear-rotate 2s linear infinite}._mat-animation-noopable.mat-progress-spinner.mat-progress-spinner-indeterminate-animation[mode=indeterminate]{transition:none;animation:none}.mat-progress-spinner.mat-progress-spinner-indeterminate-animation[mode=indeterminate] circle{transition-property:stroke;animation-duration:4s;animation-timing-function:cubic-bezier(.35,0,.25,1);animation-iteration-count:infinite}._mat-animation-noopable.mat-progress-spinner.mat-progress-spinner-indeterminate-animation[mode=indeterminate] circle{transition:none;animation:none}.mat-progress-spinner.mat-progress-spinner-indeterminate-fallback-animation[mode=indeterminate]{animation:mat-progress-spinner-stroke-rotate-fallback 10s cubic-bezier(.87,.03,.33,1) infinite}._mat-animation-noopable.mat-progress-spinner.mat-progress-spinner-indeterminate-fallback-animation[mode=indeterminate]{transition:none;animation:none}.mat-progress-spinner.mat-progress-spinner-indeterminate-fallback-animation[mode=indeterminate] circle{transition-property:stroke}._mat-animation-noopable.mat-progress-spinner.mat-progress-spinner-indeterminate-fallback-animation[mode=indeterminate] circle{transition:none;animation:none}@keyframes mat-progress-spinner-linear-rotate{0%{transform:rotate(0)}100%{transform:rotate(360deg)}}@keyframes mat-progress-spinner-stroke-rotate-100{0%{stroke-dashoffset:268.60617px;transform:rotate(0)}12.5%{stroke-dashoffset:56.54867px;transform:rotate(0)}12.5001%{stroke-dashoffset:56.54867px;transform:rotateX(180deg) rotate(72.5deg)}25%{stroke-dashoffset:268.60617px;transform:rotateX(180deg) rotate(72.5deg)}25.0001%{stroke-dashoffset:268.60617px;transform:rotate(270deg)}37.5%{stroke-dashoffset:56.54867px;transform:rotate(270deg)}37.5001%{stroke-dashoffset:56.54867px;transform:rotateX(180deg) rotate(161.5deg)}50%{stroke-dashoffset:268.60617px;transform:rotateX(180deg) rotate(161.5deg)}50.0001%{stroke-dashoffset:268.60617px;transform:rotate(180deg)}62.5%{stroke-dashoffset:56.54867px;transform:rotate(180deg)}62.5001%{stroke-dashoffset:56.54867px;transform:rotateX(180deg) rotate(251.5deg)}75%{stroke-dashoffset:268.60617px;transform:rotateX(180deg) rotate(251.5deg)}75.0001%{stroke-dashoffset:268.60617px;transform:rotate(90deg)}87.5%{stroke-dashoffset:56.54867px;transform:rotate(90deg)}87.5001%{stroke-dashoffset:56.54867px;transform:rotateX(180deg) rotate(341.5deg)}100%{stroke-dashoffset:268.60617px;transform:rotateX(180deg) rotate(341.5deg)}}@keyframes mat-progress-spinner-stroke-rotate-fallback{0%{transform:rotate(0)}25%{transform:rotate(1170deg)}50%{transform:rotate(2340deg)}75%{transform:rotate(3510deg)}100%{transform:rotate(4680deg)}}</style>
      <style></style>
      <style>[_nghost-c7]     .mat-drawer-side{border-right:none}[_nghost-c7]     .mat-input-element:disabled{color:#212529}[_nghost-c7]     .mat-form-field-appearance-legacy.mat-form-field-disabled .mat-form-field-underline{background-color:rgba(0,0,0,.22)!important;background-image:none!important}[_nghost-c7]     .mat-card{padding:0!important}[_nghost-c7]     .mat-card .mat-icon{color:rgba(0,0,0,.7)}</style>
      <style>.mat-drawer-container{position:relative;z-index:1;box-sizing:border-box;-webkit-overflow-scrolling:touch;display:block;overflow:hidden}.mat-drawer-container[fullscreen]{top:0;left:0;right:0;bottom:0;position:absolute}.mat-drawer-container[fullscreen].mat-drawer-opened{overflow:hidden}.mat-drawer-container.mat-drawer-container-explicit-backdrop .mat-drawer-side{z-index:3}.mat-drawer-container.ng-animate-disabled .mat-drawer-backdrop,.mat-drawer-container.ng-animate-disabled .mat-drawer-content,.ng-animate-disabled .mat-drawer-container .mat-drawer-backdrop,.ng-animate-disabled .mat-drawer-container .mat-drawer-content{transition:none}.mat-drawer-backdrop{top:0;left:0;right:0;bottom:0;position:absolute;display:block;z-index:3;visibility:hidden}.mat-drawer-backdrop.mat-drawer-shown{visibility:visible}.mat-drawer-transition .mat-drawer-backdrop{transition-duration:.4s;transition-timing-function:cubic-bezier(.25,.8,.25,1);transition-property:background-color,visibility}@media (-ms-high-contrast:active){.mat-drawer-backdrop{opacity:.5}}.mat-drawer-content{position:relative;z-index:1;display:block;height:100%;overflow:auto}.mat-drawer-transition .mat-drawer-content{transition-duration:.4s;transition-timing-function:cubic-bezier(.25,.8,.25,1);transition-property:transform,margin-left,margin-right}.mat-drawer{position:relative;z-index:4;display:block;position:absolute;top:0;bottom:0;z-index:3;outline:0;box-sizing:border-box;overflow-y:auto;transform:translate3d(-100%,0,0)}@media (-ms-high-contrast:active){.mat-drawer,[dir=rtl] .mat-drawer.mat-drawer-end{border-right:solid 1px currentColor}}@media (-ms-high-contrast:active){.mat-drawer.mat-drawer-end,[dir=rtl] .mat-drawer{border-left:solid 1px currentColor;border-right:none}}.mat-drawer.mat-drawer-side{z-index:2}.mat-drawer.mat-drawer-end{right:0;transform:translate3d(100%,0,0)}[dir=rtl] .mat-drawer{transform:translate3d(100%,0,0)}[dir=rtl] .mat-drawer.mat-drawer-end{left:0;right:auto;transform:translate3d(-100%,0,0)}.mat-drawer-inner-container{width:100%;height:100%;overflow:auto;-webkit-overflow-scrolling:touch}.mat-sidenav-fixed{position:fixed}</style>
      <style>.nav-link[_ngcontent-c10]{text-transform:none!important}.off-canvas-sidebar[_ngcontent-c10]   .nav[_ngcontent-c10]   i[_ngcontent-c10], .sidebar[_ngcontent-c10]   .nav[_ngcontent-c10]   i[_ngcontent-c10]{font-size:24px;float:left;margin-right:15px;line-height:30px;width:30px;text-align:center}.off-canvas-sidebar[_ngcontent-c10]   .nav[_ngcontent-c10]   p[_ngcontent-c10], .sidebar[_ngcontent-c10]   .nav[_ngcontent-c10]   p[_ngcontent-c10]{margin:0;line-height:30px;font-size:12px;font-weight:600;text-transform:none}.nav[_ngcontent-c10]{display:list-item!important}</style>
      <style>.main-container[_ngcontent-c11]{min-width:1150px}.chart-panel[_ngcontent-c11]{height:600px}.log-panel[_ngcontent-c11]{min-width:350px;width:25%;height:600px}</style>
      <style>.mat-card{transition:box-shadow 280ms cubic-bezier(.4,0,.2,1);display:block;position:relative;padding:16px;border-radius:4px}.mat-card .mat-divider-horizontal{position:absolute;left:0;width:100%}[dir=rtl] .mat-card .mat-divider-horizontal{left:auto;right:0}.mat-card .mat-divider-horizontal.mat-divider-inset{position:static;margin:0}[dir=rtl] .mat-card .mat-divider-horizontal.mat-divider-inset{margin-right:0}@media (-ms-high-contrast:active){.mat-card{outline:solid 1px}}.mat-card-actions,.mat-card-content,.mat-card-subtitle{display:block;margin-bottom:16px}.mat-card-title{display:block;margin-bottom:8px}.mat-card-actions{margin-left:-8px;margin-right:-8px;padding:8px 0}.mat-card-actions-align-end{display:flex;justify-content:flex-end}.mat-card-image{width:calc(100% + 32px);margin:0 -16px 16px -16px}.mat-card-footer{display:block;margin:0 -16px -16px -16px}.mat-card-actions .mat-button,.mat-card-actions .mat-raised-button{margin:0 8px}.mat-card-header{display:flex;flex-direction:row}.mat-card-header .mat-card-title{margin-bottom:12px}.mat-card-header-text{margin:0 16px}.mat-card-avatar{height:40px;width:40px;border-radius:50%;flex-shrink:0;object-fit:cover}.mat-card-title-group{display:flex;justify-content:space-between}.mat-card-sm-image{width:80px;height:80px}.mat-card-md-image{width:112px;height:112px}.mat-card-lg-image{width:152px;height:152px}.mat-card-xl-image{width:240px;height:240px;margin:-8px}.mat-card-title-group>.mat-card-xl-image{margin:-8px 0 8px 0}@media (max-width:599px){.mat-card-title-group{margin:0}.mat-card-xl-image{margin-left:0;margin-right:0}}.mat-card-content>:first-child,.mat-card>:first-child{margin-top:0}.mat-card-content>:last-child:not(.mat-card-footer),.mat-card>:last-child:not(.mat-card-footer){margin-bottom:0}.mat-card-image:first-child{margin-top:-16px;border-top-left-radius:inherit;border-top-right-radius:inherit}.mat-card>.mat-card-actions:last-child{margin-bottom:-8px;padding-bottom:0}.mat-card-actions .mat-button:first-child,.mat-card-actions .mat-raised-button:first-child{margin-left:0;margin-right:0}.mat-card-subtitle:not(:first-child),.mat-card-title:not(:first-child){margin-top:-4px}.mat-card-header .mat-card-subtitle:not(:first-child){margin-top:-8px}.mat-card>.mat-card-xl-image:first-child{margin-top:-8px}.mat-card>.mat-card-xl-image:last-child{margin-bottom:-8px}</style>
      <style>.ngx-charts{float:left;overflow:visible}.ngx-charts .arc,.ngx-charts .bar,.ngx-charts .circle{cursor:pointer}.ngx-charts .arc.active,.ngx-charts .arc:hover,.ngx-charts .bar.active,.ngx-charts .bar:hover,.ngx-charts .card.active,.ngx-charts .card:hover,.ngx-charts .cell.active,.ngx-charts .cell:hover{opacity:.8;transition:opacity .1s ease-in-out}.ngx-charts .arc:focus,.ngx-charts .bar:focus,.ngx-charts .card:focus,.ngx-charts .cell:focus,.ngx-charts g:focus{outline:0}.ngx-charts .area-series.inactive,.ngx-charts .line-series-range.inactive,.ngx-charts .line-series.inactive,.ngx-charts .polar-series-area.inactive,.ngx-charts .polar-series-path.inactive{transition:opacity .1s ease-in-out;opacity:.2}.ngx-charts .line-highlight{display:none}.ngx-charts .line-highlight.active{display:block}.ngx-charts .area{opacity:.6}.ngx-charts .circle:hover{cursor:pointer}.ngx-charts .label{font-size:12px;font-weight:400}.ngx-charts .tooltip-anchor{fill:#000}.ngx-charts .gridline-path{stroke:#ddd;stroke-width:1;fill:none}.ngx-charts .refline-path{stroke:#a8b2c7;stroke-width:1;stroke-dasharray:5;stroke-dashoffset:5}.ngx-charts .refline-label{font-size:9px}.ngx-charts .reference-area{fill-opacity:.05;fill:#000}.ngx-charts .gridline-path-dotted{stroke:#ddd;stroke-width:1;fill:none;stroke-dasharray:1,20;stroke-dashoffset:3}.ngx-charts .grid-panel rect{fill:none}.ngx-charts .grid-panel.odd rect{fill:rgba(0,0,0,.05)}</style>
      <style>[_nghost-c14]     .log-list .mat-icon{color:rgba(0,0,0,.5)}.log-info[_ngcontent-c14]{font-size:14px;padding-top:.65rem!important;padding-bottom:.65rem!important}.log-list[_ngcontent-c14]{overflow-y:auto;overflow-x:hidden;height:calc(100% - 50px)}</style>
      <style>.mat-icon{background-repeat:no-repeat;display:inline-block;fill:currentColor;height:24px;width:24px}.mat-icon.mat-icon-inline{font-size:inherit;height:inherit;line-height:inherit;width:inherit}[dir=rtl] .mat-icon-rtl-mirror{transform:scale(-1,1)}.mat-form-field:not(.mat-form-field-appearance-legacy) .mat-form-field-prefix .mat-icon,.mat-form-field:not(.mat-form-field-appearance-legacy) .mat-form-field-suffix .mat-icon{display:block}.mat-form-field:not(.mat-form-field-appearance-legacy) .mat-form-field-prefix .mat-icon-button .mat-icon,.mat-form-field:not(.mat-form-field-appearance-legacy) .mat-form-field-suffix .mat-icon-button .mat-icon{margin:auto}</style>
      <style>.mat-menu-panel{min-width:112px;max-width:280px;overflow:auto;-webkit-overflow-scrolling:touch;max-height:calc(100vh - 48px);border-radius:4px;outline:0}.mat-menu-panel.ng-animating{pointer-events:none}@media (-ms-high-contrast:active){.mat-menu-panel{outline:solid 1px}}.mat-menu-content:not(:empty){padding-top:8px;padding-bottom:8px}.mat-menu-item{-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;cursor:pointer;outline:0;border:none;-webkit-tap-highlight-color:transparent;white-space:nowrap;overflow:hidden;text-overflow:ellipsis;display:block;line-height:48px;height:48px;padding:0 16px;text-align:left;text-decoration:none;max-width:100%;position:relative}.mat-menu-item::-moz-focus-inner{border:0}.mat-menu-item[disabled]{cursor:default}[dir=rtl] .mat-menu-item{text-align:right}.mat-menu-item .mat-icon{margin-right:16px;vertical-align:middle}.mat-menu-item .mat-icon svg{vertical-align:top}[dir=rtl] .mat-menu-item .mat-icon{margin-left:16px;margin-right:0}@media (-ms-high-contrast:active){.mat-menu-item-highlighted,.mat-menu-item.cdk-keyboard-focused,.mat-menu-item.cdk-program-focused{outline:dotted 1px}}.mat-menu-item-submenu-trigger{padding-right:32px}.mat-menu-item-submenu-trigger::after{width:0;height:0;border-style:solid;border-width:5px 0 5px 5px;border-color:transparent transparent transparent currentColor;content:'';display:inline-block;position:absolute;top:50%;right:16px;transform:translateY(-50%)}[dir=rtl] .mat-menu-item-submenu-trigger{padding-right:16px;padding-left:32px}[dir=rtl] .mat-menu-item-submenu-trigger::after{right:auto;left:16px;transform:rotateY(180deg) translateY(-50%)}button.mat-menu-item{width:100%}.mat-menu-item .mat-menu-ripple{top:0;left:0;right:0;bottom:0;position:absolute;pointer-events:none}</style>
      <style>.ngx-charts-tooltip-content{position:fixed;border-radius:3px;z-index:5000;display:block;font-weight:400;opacity:0;pointer-events:none!important}.ngx-charts-tooltip-content.type-popover{background:#fff;color:#060709;border:1px solid #72809b;box-shadow:0 1px 3px 0 rgba(0,0,0,.2),0 1px 1px 0 rgba(0,0,0,.14),0 2px 1px -1px rgba(0,0,0,.12);font-size:13px;padding:4px}.ngx-charts-tooltip-content.type-popover .tooltip-caret{position:absolute;z-index:5001;width:0;height:0}.ngx-charts-tooltip-content.type-popover .tooltip-caret.position-left{border-top:7px solid transparent;border-bottom:7px solid transparent;border-left:7px solid #fff}.ngx-charts-tooltip-content.type-popover .tooltip-caret.position-top{border-left:7px solid transparent;border-right:7px solid transparent;border-top:7px solid #fff}.ngx-charts-tooltip-content.type-popover .tooltip-caret.position-right{border-top:7px solid transparent;border-bottom:7px solid transparent;border-right:7px solid #fff}.ngx-charts-tooltip-content.type-popover .tooltip-caret.position-bottom{border-left:7px solid transparent;border-right:7px solid transparent;border-bottom:7px solid #fff}.ngx-charts-tooltip-content.type-tooltip{color:#fff;background:rgba(0,0,0,.75);font-size:12px;padding:0 10px;text-align:center;pointer-events:auto}.ngx-charts-tooltip-content.type-tooltip .tooltip-caret.position-left{border-top:7px solid transparent;border-bottom:7px solid transparent;border-left:7px solid rgba(0,0,0,.75)}.ngx-charts-tooltip-content.type-tooltip .tooltip-caret.position-top{border-left:7px solid transparent;border-right:7px solid transparent;border-top:7px solid rgba(0,0,0,.75)}.ngx-charts-tooltip-content.type-tooltip .tooltip-caret.position-right{border-top:7px solid transparent;border-bottom:7px solid transparent;border-right:7px solid rgba(0,0,0,.75)}.ngx-charts-tooltip-content.type-tooltip .tooltip-caret.position-bottom{border-left:7px solid transparent;border-right:7px solid transparent;border-bottom:7px solid rgba(0,0,0,.75)}.ngx-charts-tooltip-content .tooltip-label{display:block;line-height:1em;padding:8px 5px 5px;font-size:1em}.ngx-charts-tooltip-content .tooltip-val{display:block;font-size:1.3em;line-height:1em;padding:0 5px 8px}.ngx-charts-tooltip-content .tooltip-caret{position:absolute;z-index:5001;width:0;height:0}.ngx-charts-tooltip-content.position-right{-webkit-transform:translate3d(10px,0,0);transform:translate3d(10px,0,0)}.ngx-charts-tooltip-content.position-left{-webkit-transform:translate3d(-10px,0,0);transform:translate3d(-10px,0,0)}.ngx-charts-tooltip-content.position-top{-webkit-transform:translate3d(0,-10px,0);transform:translate3d(0,-10px,0)}.ngx-charts-tooltip-content.position-bottom{-webkit-transform:translate3d(0,10px,0);transform:translate3d(0,10px,0)}.ngx-charts-tooltip-content.animate{opacity:1;transition:opacity .3s,transform .3s,-webkit-transform .3s;-webkit-transform:translate3d(0,0,0);transform:translate3d(0,0,0);pointer-events:auto}.area-tooltip-container{padding:5px 0;pointer-events:none}.tooltip-item{text-align:left;line-height:1.2em;padding:5px 0}.tooltip-item .tooltip-item-color{display:inline-block;height:12px;width:12px;margin-right:5px;color:#5b646b;border-radius:3px}</style>
      <style>[_nghost-c25]     .mat-drawer-side{border-right:none}[_nghost-c25]     .mat-input-element:disabled{color:#212529}[_nghost-c25]     .mat-form-field-appearance-legacy.mat-form-field-disabled .mat-form-field-underline{background-color:rgba(0,0,0,.22)!important;background-image:none!important}[_nghost-c25]     .mat-card{padding:0!important}[_nghost-c25]     .mat-card .mat-icon{color:rgba(0,0,0,.7)}</style>
      <style>.card[_ngcontent-c26]{width:9rem;cursor:pointer}</style>
      <style>.mat-button .mat-button-focus-overlay,.mat-icon-button .mat-button-focus-overlay{opacity:0}.mat-button:hover .mat-button-focus-overlay,.mat-stroked-button:hover .mat-button-focus-overlay{opacity:.04}@media (hover:none){.mat-button:hover .mat-button-focus-overlay,.mat-stroked-button:hover .mat-button-focus-overlay{opacity:0}}.mat-button,.mat-flat-button,.mat-icon-button,.mat-stroked-button{box-sizing:border-box;position:relative;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;cursor:pointer;outline:0;border:none;-webkit-tap-highlight-color:transparent;display:inline-block;white-space:nowrap;text-decoration:none;vertical-align:baseline;text-align:center;margin:0;min-width:64px;line-height:36px;padding:0 16px;border-radius:4px;overflow:visible}.mat-button::-moz-focus-inner,.mat-flat-button::-moz-focus-inner,.mat-icon-button::-moz-focus-inner,.mat-stroked-button::-moz-focus-inner{border:0}.mat-button[disabled],.mat-flat-button[disabled],.mat-icon-button[disabled],.mat-stroked-button[disabled]{cursor:default}.mat-button.cdk-keyboard-focused .mat-button-focus-overlay,.mat-button.cdk-program-focused .mat-button-focus-overlay,.mat-flat-button.cdk-keyboard-focused .mat-button-focus-overlay,.mat-flat-button.cdk-program-focused .mat-button-focus-overlay,.mat-icon-button.cdk-keyboard-focused .mat-button-focus-overlay,.mat-icon-button.cdk-program-focused .mat-button-focus-overlay,.mat-stroked-button.cdk-keyboard-focused .mat-button-focus-overlay,.mat-stroked-button.cdk-program-focused .mat-button-focus-overlay{opacity:.12}.mat-button::-moz-focus-inner,.mat-flat-button::-moz-focus-inner,.mat-icon-button::-moz-focus-inner,.mat-stroked-button::-moz-focus-inner{border:0}.mat-raised-button{box-sizing:border-box;position:relative;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;cursor:pointer;outline:0;border:none;-webkit-tap-highlight-color:transparent;display:inline-block;white-space:nowrap;text-decoration:none;vertical-align:baseline;text-align:center;margin:0;min-width:64px;line-height:36px;padding:0 16px;border-radius:4px;overflow:visible;transform:translate3d(0,0,0);transition:background .4s cubic-bezier(.25,.8,.25,1),box-shadow 280ms cubic-bezier(.4,0,.2,1)}.mat-raised-button::-moz-focus-inner{border:0}.mat-raised-button[disabled]{cursor:default}.mat-raised-button.cdk-keyboard-focused .mat-button-focus-overlay,.mat-raised-button.cdk-program-focused .mat-button-focus-overlay{opacity:.12}.mat-raised-button::-moz-focus-inner{border:0}._mat-animation-noopable.mat-raised-button{transition:none;animation:none}.mat-stroked-button{border:1px solid currentColor;padding:0 15px;line-height:34px}.mat-stroked-button .mat-button-focus-overlay,.mat-stroked-button .mat-button-ripple.mat-ripple{top:-1px;left:-1px;right:-1px;bottom:-1px}.mat-fab{box-sizing:border-box;position:relative;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;cursor:pointer;outline:0;border:none;-webkit-tap-highlight-color:transparent;display:inline-block;white-space:nowrap;text-decoration:none;vertical-align:baseline;text-align:center;margin:0;min-width:64px;line-height:36px;padding:0 16px;border-radius:4px;overflow:visible;transform:translate3d(0,0,0);transition:background .4s cubic-bezier(.25,.8,.25,1),box-shadow 280ms cubic-bezier(.4,0,.2,1);min-width:0;border-radius:50%;width:56px;height:56px;padding:0;flex-shrink:0}.mat-fab::-moz-focus-inner{border:0}.mat-fab[disabled]{cursor:default}.mat-fab.cdk-keyboard-focused .mat-button-focus-overlay,.mat-fab.cdk-program-focused .mat-button-focus-overlay{opacity:.12}.mat-fab::-moz-focus-inner{border:0}._mat-animation-noopable.mat-fab{transition:none;animation:none}.mat-fab .mat-button-wrapper{padding:16px 0;display:inline-block;line-height:24px}.mat-mini-fab{box-sizing:border-box;position:relative;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;cursor:pointer;outline:0;border:none;-webkit-tap-highlight-color:transparent;display:inline-block;white-space:nowrap;text-decoration:none;vertical-align:baseline;text-align:center;margin:0;min-width:64px;line-height:36px;padding:0 16px;border-radius:4px;overflow:visible;transform:translate3d(0,0,0);transition:background .4s cubic-bezier(.25,.8,.25,1),box-shadow 280ms cubic-bezier(.4,0,.2,1);min-width:0;border-radius:50%;width:40px;height:40px;padding:0;flex-shrink:0}.mat-mini-fab::-moz-focus-inner{border:0}.mat-mini-fab[disabled]{cursor:default}.mat-mini-fab.cdk-keyboard-focused .mat-button-focus-overlay,.mat-mini-fab.cdk-program-focused .mat-button-focus-overlay{opacity:.12}.mat-mini-fab::-moz-focus-inner{border:0}._mat-animation-noopable.mat-mini-fab{transition:none;animation:none}.mat-mini-fab .mat-button-wrapper{padding:8px 0;display:inline-block;line-height:24px}.mat-icon-button{padding:0;min-width:0;width:40px;height:40px;flex-shrink:0;line-height:40px;border-radius:50%}.mat-icon-button .mat-icon,.mat-icon-button i{line-height:24px}.mat-button-focus-overlay,.mat-button-ripple.mat-ripple{top:0;left:0;right:0;bottom:0;position:absolute;pointer-events:none;border-radius:inherit}.mat-button-focus-overlay{opacity:0;transition:opacity .2s cubic-bezier(.35,0,.25,1),background-color .2s cubic-bezier(.35,0,.25,1)}._mat-animation-noopable .mat-button-focus-overlay{transition:none}@media (-ms-high-contrast:active){.mat-button-focus-overlay{background-color:#fff}}@media (-ms-high-contrast:black-on-white){.mat-button-focus-overlay{background-color:#000}}.mat-button-ripple-round{border-radius:50%;z-index:1}.mat-button .mat-button-wrapper>*,.mat-fab .mat-button-wrapper>*,.mat-flat-button .mat-button-wrapper>*,.mat-icon-button .mat-button-wrapper>*,.mat-mini-fab .mat-button-wrapper>*,.mat-raised-button .mat-button-wrapper>*,.mat-stroked-button .mat-button-wrapper>*{vertical-align:middle}.mat-form-field:not(.mat-form-field-appearance-legacy) .mat-form-field-prefix .mat-icon-button,.mat-form-field:not(.mat-form-field-appearance-legacy) .mat-form-field-suffix .mat-icon-button{display:block;font-size:inherit;width:2.5em;height:2.5em}@media (-ms-high-contrast:active){.mat-button,.mat-fab,.mat-flat-button,.mat-icon-button,.mat-mini-fab,.mat-raised-button{outline:solid 1px}}</style>
      <style>mat-table{display:block}mat-header-row{min-height:56px}mat-footer-row,mat-row{min-height:48px}mat-footer-row,mat-header-row,mat-row{display:flex;border-width:0;border-bottom-width:1px;border-style:solid;align-items:center;box-sizing:border-box}mat-footer-row::after,mat-header-row::after,mat-row::after{display:inline-block;min-height:inherit;content:''}mat-cell:first-of-type,mat-footer-cell:first-of-type,mat-header-cell:first-of-type{padding-left:24px}[dir=rtl] mat-cell:first-of-type,[dir=rtl] mat-footer-cell:first-of-type,[dir=rtl] mat-header-cell:first-of-type{padding-left:0;padding-right:24px}mat-cell:last-of-type,mat-footer-cell:last-of-type,mat-header-cell:last-of-type{padding-right:24px}[dir=rtl] mat-cell:last-of-type,[dir=rtl] mat-footer-cell:last-of-type,[dir=rtl] mat-header-cell:last-of-type{padding-right:0;padding-left:24px}mat-cell,mat-footer-cell,mat-header-cell{flex:1;display:flex;align-items:center;overflow:hidden;word-wrap:break-word;min-height:inherit}table.mat-table{border-spacing:0}tr.mat-header-row{height:56px}tr.mat-footer-row,tr.mat-row{height:48px}th.mat-header-cell{text-align:left}[dir=rtl] th.mat-header-cell{text-align:right}td.mat-cell,td.mat-footer-cell,th.mat-header-cell{padding:0;border-bottom-width:1px;border-bottom-style:solid}td.mat-cell:first-of-type,td.mat-footer-cell:first-of-type,th.mat-header-cell:first-of-type{padding-left:24px}[dir=rtl] td.mat-cell:first-of-type,[dir=rtl] td.mat-footer-cell:first-of-type,[dir=rtl] th.mat-header-cell:first-of-type{padding-left:0;padding-right:24px}td.mat-cell:last-of-type,td.mat-footer-cell:last-of-type,th.mat-header-cell:last-of-type{padding-right:24px}[dir=rtl] td.mat-cell:last-of-type,[dir=rtl] td.mat-footer-cell:last-of-type,[dir=rtl] th.mat-header-cell:last-of-type{padding-right:0;padding-left:24px}</style>
      <style>.mat-paginator{display:block}.mat-paginator-outer-container{display:flex}.mat-paginator-container{display:flex;align-items:center;justify-content:flex-end;min-height:56px;padding:0 8px;flex-wrap:wrap-reverse;width:100%}.mat-paginator-page-size{display:flex;align-items:baseline;margin-right:8px}[dir=rtl] .mat-paginator-page-size{margin-right:0;margin-left:8px}.mat-paginator-page-size-label{margin:0 4px}.mat-paginator-page-size-select{margin:6px 4px 0 4px;width:56px}.mat-paginator-page-size-select.mat-form-field-appearance-outline{width:64px}.mat-paginator-page-size-select.mat-form-field-appearance-fill{width:64px}.mat-paginator-range-label{margin:0 32px 0 24px}.mat-paginator-range-actions{display:flex;align-items:center}.mat-paginator-icon{width:28px;fill:currentColor}[dir=rtl] .mat-paginator-icon{transform:rotate(180deg)}</style>
      <style>.mat-hint{width:100%!important;text-align:right!important}  .mat-form-field-hint-spacer{flex:1}</style>
      <style>.mat-progress-bar{display:block;height:4px;overflow:hidden;position:relative;transition:opacity 250ms linear;width:100%}._mat-animation-noopable.mat-progress-bar{transition:none;animation:none}.mat-progress-bar .mat-progress-bar-element,.mat-progress-bar .mat-progress-bar-fill::after{height:100%;position:absolute;width:100%}.mat-progress-bar .mat-progress-bar-background{width:calc(100% + 10px)}@media (-ms-high-contrast:active){.mat-progress-bar .mat-progress-bar-background{display:none}}.mat-progress-bar .mat-progress-bar-buffer{transform-origin:top left;transition:transform 250ms ease}@media (-ms-high-contrast:active){.mat-progress-bar .mat-progress-bar-buffer{border-top:solid 5px;opacity:.5}}.mat-progress-bar .mat-progress-bar-secondary{display:none}.mat-progress-bar .mat-progress-bar-fill{animation:none;transform-origin:top left;transition:transform 250ms ease}@media (-ms-high-contrast:active){.mat-progress-bar .mat-progress-bar-fill{border-top:solid 4px}}.mat-progress-bar .mat-progress-bar-fill::after{animation:none;content:'';display:inline-block;left:0}.mat-progress-bar[dir=rtl],[dir=rtl] .mat-progress-bar{transform:rotateY(180deg)}.mat-progress-bar[mode=query]{transform:rotateZ(180deg)}.mat-progress-bar[mode=query][dir=rtl],[dir=rtl] .mat-progress-bar[mode=query]{transform:rotateZ(180deg) rotateY(180deg)}.mat-progress-bar[mode=indeterminate] .mat-progress-bar-fill,.mat-progress-bar[mode=query] .mat-progress-bar-fill{transition:none}.mat-progress-bar[mode=indeterminate] .mat-progress-bar-primary,.mat-progress-bar[mode=query] .mat-progress-bar-primary{-webkit-backface-visibility:hidden;backface-visibility:hidden;animation:mat-progress-bar-primary-indeterminate-translate 2s infinite linear;left:-145.166611%}.mat-progress-bar[mode=indeterminate] .mat-progress-bar-primary.mat-progress-bar-fill::after,.mat-progress-bar[mode=query] .mat-progress-bar-primary.mat-progress-bar-fill::after{-webkit-backface-visibility:hidden;backface-visibility:hidden;animation:mat-progress-bar-primary-indeterminate-scale 2s infinite linear}.mat-progress-bar[mode=indeterminate] .mat-progress-bar-secondary,.mat-progress-bar[mode=query] .mat-progress-bar-secondary{-webkit-backface-visibility:hidden;backface-visibility:hidden;animation:mat-progress-bar-secondary-indeterminate-translate 2s infinite linear;left:-54.888891%;display:block}.mat-progress-bar[mode=indeterminate] .mat-progress-bar-secondary.mat-progress-bar-fill::after,.mat-progress-bar[mode=query] .mat-progress-bar-secondary.mat-progress-bar-fill::after{-webkit-backface-visibility:hidden;backface-visibility:hidden;animation:mat-progress-bar-secondary-indeterminate-scale 2s infinite linear}.mat-progress-bar[mode=buffer] .mat-progress-bar-background{-webkit-backface-visibility:hidden;backface-visibility:hidden;animation:mat-progress-bar-background-scroll 250ms infinite linear;display:block}.mat-progress-bar._mat-animation-noopable .mat-progress-bar-background,.mat-progress-bar._mat-animation-noopable .mat-progress-bar-buffer,.mat-progress-bar._mat-animation-noopable .mat-progress-bar-fill,.mat-progress-bar._mat-animation-noopable .mat-progress-bar-fill::after,.mat-progress-bar._mat-animation-noopable .mat-progress-bar-primary,.mat-progress-bar._mat-animation-noopable .mat-progress-bar-primary.mat-progress-bar-fill::after,.mat-progress-bar._mat-animation-noopable .mat-progress-bar-secondary,.mat-progress-bar._mat-animation-noopable .mat-progress-bar-secondary.mat-progress-bar-fill::after{animation:none;transition:none}@keyframes mat-progress-bar-primary-indeterminate-translate{0%{transform:translateX(0)}20%{animation-timing-function:cubic-bezier(.5,0,.70173,.49582);transform:translateX(0)}59.15%{animation-timing-function:cubic-bezier(.30244,.38135,.55,.95635);transform:translateX(83.67142%)}100%{transform:translateX(200.61106%)}}@keyframes mat-progress-bar-primary-indeterminate-scale{0%{transform:scaleX(.08)}36.65%{animation-timing-function:cubic-bezier(.33473,.12482,.78584,1);transform:scaleX(.08)}69.15%{animation-timing-function:cubic-bezier(.06,.11,.6,1);transform:scaleX(.66148)}100%{transform:scaleX(.08)}}@keyframes mat-progress-bar-secondary-indeterminate-translate{0%{animation-timing-function:cubic-bezier(.15,0,.51506,.40969);transform:translateX(0)}25%{animation-timing-function:cubic-bezier(.31033,.28406,.8,.73371);transform:translateX(37.65191%)}48.35%{animation-timing-function:cubic-bezier(.4,.62704,.6,.90203);transform:translateX(84.38617%)}100%{transform:translateX(160.27778%)}}@keyframes mat-progress-bar-secondary-indeterminate-scale{0%{animation-timing-function:cubic-bezier(.15,0,.51506,.40969);transform:scaleX(.08)}19.15%{animation-timing-function:cubic-bezier(.31033,.28406,.8,.73371);transform:scaleX(.4571)}44.15%{animation-timing-function:cubic-bezier(.4,.62704,.6,.90203);transform:scaleX(.72796)}100%{transform:scaleX(.08)}}@keyframes mat-progress-bar-background-scroll{to{transform:translateX(-8px)}}</style>
      <style>.mat-sort-header-container{display:flex;cursor:pointer;align-items:center}.mat-sort-header-disabled .mat-sort-header-container{cursor:default}.mat-sort-header-position-before{flex-direction:row-reverse}.mat-sort-header-button{border:none;background:0 0;display:flex;align-items:center;padding:0;cursor:inherit;outline:0;font:inherit;color:currentColor}.mat-sort-header-button::-moz-focus-inner{border:0}.mat-sort-header-arrow{height:12px;width:12px;min-width:12px;position:relative;display:flex;opacity:0}.mat-sort-header-arrow,[dir=rtl] .mat-sort-header-position-before .mat-sort-header-arrow{margin:0 0 0 6px}.mat-sort-header-position-before .mat-sort-header-arrow,[dir=rtl] .mat-sort-header-arrow{margin:0 6px 0 0}.mat-sort-header-stem{background:currentColor;height:10px;width:2px;margin:auto;display:flex;align-items:center}@media (-ms-high-contrast:active){.mat-sort-header-stem{width:0;border-left:solid 2px}}.mat-sort-header-indicator{width:100%;height:2px;display:flex;align-items:center;position:absolute;top:0;left:0}.mat-sort-header-pointer-middle{margin:auto;height:2px;width:2px;background:currentColor;transform:rotate(45deg)}@media (-ms-high-contrast:active){.mat-sort-header-pointer-middle{width:0;height:0;border-top:solid 2px;border-left:solid 2px}}.mat-sort-header-pointer-left,.mat-sort-header-pointer-right{background:currentColor;width:6px;height:2px;position:absolute;top:0}@media (-ms-high-contrast:active){.mat-sort-header-pointer-left,.mat-sort-header-pointer-right{width:0;height:0;border-left:solid 6px;border-top:solid 2px}}.mat-sort-header-pointer-left{transform-origin:right;left:0}.mat-sort-header-pointer-right{transform-origin:left;right:0}</style>
      <style>.mat-select{display:inline-block;width:100%;outline:0}.mat-select-trigger{display:inline-table;cursor:pointer;position:relative;box-sizing:border-box}.mat-select-disabled .mat-select-trigger{-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;cursor:default}.mat-select-value{display:table-cell;max-width:0;width:100%;overflow:hidden;text-overflow:ellipsis;white-space:nowrap}.mat-select-value-text{white-space:nowrap;overflow:hidden;text-overflow:ellipsis}.mat-select-arrow-wrapper{display:table-cell;vertical-align:middle}.mat-form-field-appearance-fill .mat-select-arrow-wrapper{transform:translateY(-50%)}.mat-form-field-appearance-outline .mat-select-arrow-wrapper{transform:translateY(-25%)}.mat-form-field-appearance-standard.mat-form-field-has-label .mat-select:not(.mat-select-empty) .mat-select-arrow-wrapper{transform:translateY(-50%)}.mat-form-field-appearance-standard .mat-select.mat-select-empty .mat-select-arrow-wrapper{transition:transform .4s cubic-bezier(.25,.8,.25,1)}._mat-animation-noopable.mat-form-field-appearance-standard .mat-select.mat-select-empty .mat-select-arrow-wrapper{transition:none}.mat-select-arrow{width:0;height:0;border-left:5px solid transparent;border-right:5px solid transparent;border-top:5px solid;margin:0 4px}.mat-select-panel-wrap{flex-basis:100%}.mat-select-panel{min-width:112px;max-width:280px;overflow:auto;-webkit-overflow-scrolling:touch;padding-top:0;padding-bottom:0;max-height:256px;min-width:100%;border-radius:4px}@media (-ms-high-contrast:active){.mat-select-panel{outline:solid 1px}}.mat-select-panel .mat-optgroup-label,.mat-select-panel .mat-option{font-size:inherit;line-height:3em;height:3em}.mat-form-field-type-mat-select:not(.mat-form-field-disabled) .mat-form-field-flex{cursor:pointer}.mat-form-field-type-mat-select .mat-form-field-label{width:calc(100% - 18px)}.mat-select-placeholder{transition:color .4s .133s cubic-bezier(.25,.8,.25,1)}._mat-animation-noopable .mat-select-placeholder{transition:none}.mat-form-field-hide-placeholder .mat-select-placeholder{color:transparent;-webkit-text-fill-color:transparent;transition:none;display:block}</style>
      <style>.mat-option{white-space:nowrap;overflow:hidden;text-overflow:ellipsis;display:block;line-height:48px;height:48px;padding:0 16px;text-align:left;text-decoration:none;max-width:100%;position:relative;cursor:pointer;outline:0;display:flex;flex-direction:row;max-width:100%;box-sizing:border-box;align-items:center;-webkit-tap-highlight-color:transparent}.mat-option[disabled]{cursor:default}[dir=rtl] .mat-option{text-align:right}.mat-option .mat-icon{margin-right:16px;vertical-align:middle}.mat-option .mat-icon svg{vertical-align:top}[dir=rtl] .mat-option .mat-icon{margin-left:16px;margin-right:0}.mat-option[aria-disabled=true]{-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;cursor:default}.mat-optgroup .mat-option:not(.mat-option-multiple){padding-left:32px}[dir=rtl] .mat-optgroup .mat-option:not(.mat-option-multiple){padding-left:16px;padding-right:32px}@media (-ms-high-contrast:active){.mat-option{margin:0 1px}.mat-option.mat-active{border:solid 1px currentColor;margin:0}}.mat-option-text{display:inline-block;flex-grow:1;overflow:hidden;text-overflow:ellipsis}.mat-option .mat-option-ripple{top:0;left:0;right:0;bottom:0;position:absolute;pointer-events:none}@media (-ms-high-contrast:active){.mat-option .mat-option-ripple{opacity:.5}}.mat-option-pseudo-checkbox{margin-right:8px}[dir=rtl] .mat-option-pseudo-checkbox{margin-left:8px;margin-right:0}</style>
      <style>.mat-snack-bar-container{border-radius:4px;box-sizing:border-box;display:block;margin:24px;max-width:33vw;min-width:344px;padding:14px 16px;min-height:48px;transform-origin:center}@media (-ms-high-contrast:active){.mat-snack-bar-container{border:solid 1px}}.mat-snack-bar-handset{width:100%}.mat-snack-bar-handset .mat-snack-bar-container{margin:8px;max-width:100%;min-width:0;width:100%}</style>
      <style>.mat-simple-snackbar{display:flex;justify-content:space-between;align-items:center;height:100%;line-height:20px;opacity:1}.mat-simple-snackbar-action{flex-shrink:0;margin:-8px -8px -8px 8px}.mat-simple-snackbar-action button{max-height:36px;min-width:0}[dir=rtl] .mat-simple-snackbar-action{margin-left:-8px;margin-right:8px}</style>
      <style>.active-online[_ngcontent-c46]{background:#42b72a;border-radius:50%;display:inline-block;height:10px;width:10px}.active-offline[_ngcontent-c46]{background:#a3a3c2;border-radius:50%;display:inline-block;height:10px;width:10px}</style>
      <style>[_nghost-c47]     .permit1 .mat-checkbox-label{width:150px}</style>
      <style>.mat-slide-toggle{display:inline-block;height:24px;max-width:100%;line-height:24px;white-space:nowrap;outline:0;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;-webkit-tap-highlight-color:transparent}.mat-slide-toggle.mat-checked .mat-slide-toggle-thumb-container{transform:translate3d(16px,0,0)}[dir=rtl] .mat-slide-toggle.mat-checked .mat-slide-toggle-thumb-container{transform:translate3d(-16px,0,0)}.mat-slide-toggle.mat-disabled{opacity:.38}.mat-slide-toggle.mat-disabled .mat-slide-toggle-label,.mat-slide-toggle.mat-disabled .mat-slide-toggle-thumb-container{cursor:default}.mat-slide-toggle-label{display:flex;flex:1;flex-direction:row;align-items:center;height:inherit;cursor:pointer}.mat-slide-toggle-content{white-space:nowrap;overflow:hidden;text-overflow:ellipsis}.mat-slide-toggle-label-before .mat-slide-toggle-label{order:1}.mat-slide-toggle-label-before .mat-slide-toggle-bar{order:2}.mat-slide-toggle-bar,[dir=rtl] .mat-slide-toggle-label-before .mat-slide-toggle-bar{margin-right:8px;margin-left:0}.mat-slide-toggle-label-before .mat-slide-toggle-bar,[dir=rtl] .mat-slide-toggle-bar{margin-left:8px;margin-right:0}.mat-slide-toggle-bar-no-side-margin{margin-left:0;margin-right:0}.mat-slide-toggle-thumb-container{position:absolute;z-index:1;width:20px;height:20px;top:-3px;left:0;transform:translate3d(0,0,0);transition:all 80ms linear;transition-property:transform;cursor:-webkit-grab;cursor:grab}.mat-slide-toggle-thumb-container.mat-dragging,.mat-slide-toggle-thumb-container:active{cursor:-webkit-grabbing;cursor:grabbing;transition-duration:0s}._mat-animation-noopable .mat-slide-toggle-thumb-container{transition:none}[dir=rtl] .mat-slide-toggle-thumb-container{left:auto;right:0}.mat-slide-toggle-thumb{height:20px;width:20px;border-radius:50%}.mat-slide-toggle-bar{position:relative;width:36px;height:14px;flex-shrink:0;border-radius:8px}.mat-slide-toggle-input{bottom:0;left:10px}[dir=rtl] .mat-slide-toggle-input{left:auto;right:10px}.mat-slide-toggle-bar,.mat-slide-toggle-thumb{transition:all 80ms linear;transition-property:background-color;transition-delay:50ms}._mat-animation-noopable .mat-slide-toggle-bar,._mat-animation-noopable .mat-slide-toggle-thumb{transition:none}.mat-slide-toggle .mat-slide-toggle-ripple{position:absolute;top:calc(50% - 20px);left:calc(50% - 20px);height:40px;width:40px;z-index:1;pointer-events:none}.mat-slide-toggle .mat-slide-toggle-ripple .mat-ripple-element:not(.mat-slide-toggle-persistent-ripple){opacity:.12}.mat-slide-toggle-persistent-ripple{width:100%;height:100%;transform:none}.mat-slide-toggle-bar:hover .mat-slide-toggle-persistent-ripple{opacity:.04}.mat-slide-toggle:not(.mat-disabled).cdk-focused .mat-slide-toggle-persistent-ripple{opacity:.12}.mat-slide-toggle-persistent-ripple,.mat-slide-toggle.mat-disabled .mat-slide-toggle-bar:hover .mat-slide-toggle-persistent-ripple{opacity:0}@media (hover:none){.mat-slide-toggle-bar:hover .mat-slide-toggle-persistent-ripple{display:none}}@media (-ms-high-contrast:active){.mat-slide-toggle-thumb{background:#fff;border:1px solid #000}.mat-slide-toggle.mat-checked .mat-slide-toggle-thumb{background:#000;border:1px solid #fff}.mat-slide-toggle-bar{background:#fff}.mat-slide-toggle.cdk-keyboard-focused .mat-slide-toggle-bar{outline:1px dotted;outline-offset:5px}}@media (-ms-high-contrast:black-on-white){.mat-slide-toggle-bar{border:1px solid #000}}</style>
      <style>.mat-tooltip-panel{pointer-events:none!important}.mat-tooltip{color:#fff;border-radius:4px;margin:14px;max-width:250px;padding-left:8px;padding-right:8px;overflow:hidden;text-overflow:ellipsis}@media (-ms-high-contrast:active){.mat-tooltip{outline:solid 1px}}.mat-tooltip-handset{margin:24px;padding-left:16px;padding-right:16px}</style>
   </head>
   <body>
      <app-root _nghost-c0="" ng-version="6.1.7">
         <router-outlet _ngcontent-c0=""></router-outlet>
         <app-main-layout _nghost-c25="" class="ng-star-inserted">
            <mat-drawer-container _ngcontent-c25="" autosize="" class="wrapper mat-drawer-container">
               <!---->
               <div class="mat-drawer-backdrop ng-star-inserted"></div>
               <div class="cdk-visually-hidden cdk-focus-trap-anchor" aria-hidden="true"></div>
               <mat-drawer _ngcontent-c25="" class="sidebar mat-drawer ng-tns-c9-13 ng-trigger ng-trigger-transform mat-drawer-side ng-star-inserted" data-active-color="danger" data-background-color="white" mode="side" opened="" tabindex="-1" style="transform: none; visibility: visible;">
                  <div class="mat-drawer-inner-container">
                     <app-sidebar _ngcontent-c25="" _nghost-c10="">
                        <div _ngcontent-c10="" class="sidebar-wrapper">
                           <div _ngcontent-c10="" class="logo">
                              <a _ngcontent-c10="" class="simple-text text-left" style="cursor: pointer">
                                 <div _ngcontent-c10="" class="logo-img"><img _ngcontent-c10="" src="/assets/img/logo.png"></div>
                                 <span _ngcontent-c10="" style="margin-left: 70px; font-size: 20px;">HOTEL</span>
                              </a>
                           </div>
                           <ul _ngcontent-c10="" class="nav flex-column">
                              <!---->
                              <li _ngcontent-c10="" class="nav-item ng-star-inserted" style="">
                                 <!---->
                                 <a _ngcontent-c10="" class="nav-link ng-star-inserted" style="cursor: pointer">
                                    <i _ngcontent-c10="" class="fas fa-home"></i>
                                    <p _ngcontent-c10="">Trang chính</p>
                                 </a>
                              </li>
                              <li _ngcontent-c10="" class="nav-item ng-star-inserted" style="">
                                 <!---->
                                 <a _ngcontent-c10="" class="nav-link ng-star-inserted" style="cursor: pointer">
                                    <i _ngcontent-c10="" class="fas fa-retweet"></i>
                                    <p _ngcontent-c10="">Thuê - trả phòng</p>
                                 </a>
                              </li>
                              <li _ngcontent-c10="" class="nav-item ng-star-inserted" style="">
                                 <!---->
                                 <a _ngcontent-c10="" class="nav-link ng-star-inserted" style="cursor: pointer">
                                    <i _ngcontent-c10="" class="far fa-calendar-alt"></i>
                                    <p _ngcontent-c10="">Đặt phòng</p>
                                 </a>
                              </li>
                              <li _ngcontent-c10="" class="nav-item ng-star-inserted" style="">
                                 <!---->
                                 <a _ngcontent-c10="" class="nav-link ng-star-inserted" style="cursor: pointer">
                                    <i _ngcontent-c10="" class="fas fa-database"></i>
                                    <p _ngcontent-c10="">Quản lý kho</p>
                                 </a>
                              </li>
                              <li _ngcontent-c10="" class="nav-item ng-star-inserted" style="">
                                 <!---->
                                 <a _ngcontent-c10="" class="nav-link ng-star-inserted" style="cursor: pointer">
                                    <i _ngcontent-c10="" class="fas fa-balance-scale"></i>
                                    <p _ngcontent-c10="">Quản lý thu chi</p>
                                 </a>
                              </li>
                              <li _ngcontent-c10="" class="nav-item active ng-star-inserted" style="">
                                 <!---->
                                 <a _ngcontent-c10="" class="nav-link ng-star-inserted" style="cursor: pointer">
                                    <i _ngcontent-c10="" class="fas fa-cog"></i>
                                    <p _ngcontent-c10="">Quản lý hệ thống</p>
                                 </a>
                              </li>
                              <li _ngcontent-c10="" class="nav-item ng-star-inserted" style="">
                                 <!---->
                                 <a _ngcontent-c10="" class="nav-link ng-star-inserted" style="cursor: pointer">
                                    <i _ngcontent-c10="" class="fas fa-user-circle"></i>
                                    <p _ngcontent-c10="">Tài khoản</p>
                                 </a>
                              </li>
                              <li _ngcontent-c10="" class="nav-item ng-star-inserted" style="">
                                 <!---->
                                 <a _ngcontent-c10="" class="nav-link ng-star-inserted" style="cursor: pointer">
                                    <i _ngcontent-c10="" class="fas fa-credit-card"></i>
                                    <p _ngcontent-c10="">Gia hạn</p>
                                 </a>
                              </li>
                              <li _ngcontent-c10="" class="nav-item ng-star-inserted" style="">
                                 <!---->
                                 <a _ngcontent-c10="" class="nav-link ng-star-inserted" style="cursor: pointer">
                                    <i _ngcontent-c10="" class="fas fa-sign-out-alt"></i>
                                    <p _ngcontent-c10="">Đăng xuất</p>
                                 </a>
                              </li>
                           </ul>
                           <div _ngcontent-c10="" style="position: absolute; bottom: 10px; left: 25px; font-weight: 400;">
                              <div _ngcontent-c10="" class="text-secondary"> Copyright © by </div>
                              <div _ngcontent-c10="" class="text-secondary"> SA TECHNOLOGY JSC </div>
                           </div>
                        </div>
                     </app-sidebar>
                  </div>
               </mat-drawer>
               <div class="cdk-visually-hidden cdk-focus-trap-anchor" aria-hidden="true"></div>
               <!---->
               <mat-drawer-content class="mat-drawer-content ng-star-inserted" style="margin-left: 260px;">
                  <div _ngcontent-c25="" class="main-panel">
                     <router-outlet _ngcontent-c25=""></router-outlet>
                     <app-menu _nghost-c42="" class="ng-star-inserted">
                        <div _ngcontent-c42="" class="topbar">
                           <div _ngcontent-c42="" class="container-fluid d-flex h-100">
                              <div _ngcontent-c42="" class="justify-content-center align-self-center">
                                 <button _ngcontent-c42="" class="btn btn-secondary bmd-btn-icon btn-back" type="button"><i _ngcontent-c42="" class="material-icons">arrow_back</i></button><span _ngcontent-c42="" class="topbar-title"> Menu </span>
                                 <button _ngcontent-c42="" class="btn-top text-primary mat-button" mat-button="" onclick="swapForm('form-add-menu','form-edit-menu')">
                                    <span class="mat-button-wrapper">
                                       <mat-icon _ngcontent-c42="" class="mat-icon notranslate material-icons mat-icon-no-color" role="img" aria-hidden="true">note_add</mat-icon>
                                       <span _ngcontent-c42="" class="icon-text">Thêm mới</span>
                                    </span>
                                    <div class="mat-button-ripple mat-ripple" matripple=""></div>
                                    <div class="mat-button-focus-overlay"></div>
                                 </button>
                              </div>
                           </div>
                        </div>
                        <!---->
                        <div _ngcontent-c42="" class="main-container d-flex flex-row">
                           <div _ngcontent-c42="" class="list-panel">
                              <mat-form-field _ngcontent-c42="" class="w-100 mat-form-field ng-tns-c5-172 mat-primary mat-form-field-type-mat-input mat-form-field-appearance-legacy mat-form-field-can-float mat-form-field-has-label mat-form-field-hide-placeholder">
                                 <div class="mat-form-field-wrapper">
                                    <div class="mat-form-field-flex">
                                       <!----><!---->
                                       <div class="mat-form-field-infix">
                                          <span class="bmd-form-group"><input _ngcontent-c42="" class="w-100 mat-input-element mat-form-field-autofill-control cdk-text-field-autofill-monitored" matinput="" placeholder="Tìm kiếm" id="mat-input-45" aria-invalid="false" aria-required="false"></span>
                                          <span class="mat-form-field-label-wrapper">
                                             <!---->
                                             <label class="mat-form-field-label ng-tns-c5-172 mat-empty mat-form-field-empty ng-star-inserted" id="mat-form-field-label-119" for="mat-input-45" aria-owns="mat-input-45">
                                                <!----><!---->Tìm kiếm<!----><!---->
                                             </label>
                                          </span>
                                       </div>
                                       <!---->
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
                              <div _ngcontent-c42="" class="card">
                                 <table _ngcontent-c42="" class="w-100 mat-table" mat-table="" matsort="" role="grid">
                                    <thead role="rowgroup">
                                       <!---->
                                       <tr _ngcontent-c42="" class="mat-header-row ng-star-inserted" mat-header-row="" role="row">
                                          <!---->
                                          <th _ngcontent-c42="" class="mat-header-cell ng-tns-c31-173 cdk-column-name mat-column-name ng-star-inserted" mat-header-cell="" mat-sort-header="" role="columnheader" style="touch-action: none; user-select: none; -webkit-user-drag: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
                                             <div class="mat-sort-header-container">
                                                <button class="mat-sort-header-button" type="button" aria-label="Change sorting for name"> Tên menu </button><!---->
                                                <div class="mat-sort-header-arrow ng-trigger ng-trigger-arrowPosition ng-tns-c31-173 ng-star-inserted" style="transform: translateY(25%); opacity: 0;">
                                                   <div class="mat-sort-header-stem"></div>
                                                   <div class="mat-sort-header-indicator ng-trigger ng-trigger-indicator" style="transform: translateY(0px);">
                                                      <div class="mat-sort-header-pointer-left ng-trigger ng-trigger-leftPointer" style="transform: rotate(-45deg);"></div>
                                                      <div class="mat-sort-header-pointer-right ng-trigger ng-trigger-rightPointer" style="transform: rotate(45deg);"></div>
                                                      <div class="mat-sort-header-pointer-middle"></div>
                                                   </div>
                                                </div>
                                             </div>
                                          </th>
                                          <th _ngcontent-c42="" class="mat-header-cell ng-tns-c31-174 cdk-column-type mat-column-type ng-star-inserted" mat-header-cell="" mat-sort-header="" role="columnheader" style="touch-action: none; user-select: none; -webkit-user-drag: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
                                             <div class="mat-sort-header-container">
                                                <button class="mat-sort-header-button" type="button" aria-label="Change sorting for type"> Loại menu </button><!---->
                                                <div class="mat-sort-header-arrow ng-trigger ng-trigger-arrowPosition ng-tns-c31-174 ng-star-inserted" style="transform: translateY(25%); opacity: 0;">
                                                   <div class="mat-sort-header-stem"></div>
                                                   <div class="mat-sort-header-indicator ng-trigger ng-trigger-indicator" style="transform: translateY(0px);">
                                                      <div class="mat-sort-header-pointer-left ng-trigger ng-trigger-leftPointer" style="transform: rotate(-45deg);"></div>
                                                      <div class="mat-sort-header-pointer-right ng-trigger ng-trigger-rightPointer" style="transform: rotate(45deg);"></div>
                                                      <div class="mat-sort-header-pointer-middle"></div>
                                                   </div>
                                                </div>
                                             </div>
                                          </th>
                                          <th _ngcontent-c42="" class="mat-header-cell ng-tns-c31-175 cdk-column-priceImport mat-column-priceImport ng-star-inserted" mat-header-cell="" mat-sort-header="" role="columnheader" style="touch-action: none; user-select: none; -webkit-user-drag: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
                                             <div class="mat-sort-header-container">
                                                <button class="mat-sort-header-button" type="button" aria-label="Change sorting for priceImport"> Giá nhập</button><!---->
                                                <div class="mat-sort-header-arrow ng-trigger ng-trigger-arrowPosition ng-tns-c31-175 ng-star-inserted" style="transform: translateY(25%); opacity: 0;">
                                                   <div class="mat-sort-header-stem"></div>
                                                   <div class="mat-sort-header-indicator ng-trigger ng-trigger-indicator" style="transform: translateY(0px);">
                                                      <div class="mat-sort-header-pointer-left ng-trigger ng-trigger-leftPointer" style="transform: rotate(-45deg);"></div>
                                                      <div class="mat-sort-header-pointer-right ng-trigger ng-trigger-rightPointer" style="transform: rotate(45deg);"></div>
                                                      <div class="mat-sort-header-pointer-middle"></div>
                                                   </div>
                                                </div>
                                             </div>
                                          </th>
                                          <th _ngcontent-c42="" class="mat-header-cell ng-tns-c31-176 cdk-column-price mat-column-price ng-star-inserted" mat-header-cell="" mat-sort-header="" role="columnheader" style="touch-action: none; user-select: none; -webkit-user-drag: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
                                             <div class="mat-sort-header-container">
                                                <button class="mat-sort-header-button" type="button" aria-label="Change sorting for price"> Giá bán</button><!---->
                                                <div class="mat-sort-header-arrow ng-trigger ng-trigger-arrowPosition ng-tns-c31-176 ng-star-inserted" style="transform: translateY(25%); opacity: 0;">
                                                   <div class="mat-sort-header-stem"></div>
                                                   <div class="mat-sort-header-indicator ng-trigger ng-trigger-indicator" style="transform: translateY(0px);">
                                                      <div class="mat-sort-header-pointer-left ng-trigger ng-trigger-leftPointer" style="transform: rotate(-45deg);"></div>
                                                      <div class="mat-sort-header-pointer-right ng-trigger ng-trigger-rightPointer" style="transform: rotate(45deg);"></div>
                                                      <div class="mat-sort-header-pointer-middle"></div>
                                                   </div>
                                                </div>
                                             </div>
                                          </th>
                                          <th _ngcontent-c42="" class="mat-header-cell ng-tns-c31-177 cdk-column-priority mat-column-priority ng-star-inserted" mat-header-cell="" mat-sort-header="" role="columnheader" aria-sort="ascending" style="touch-action: none; user-select: none; -webkit-user-drag: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
                                             <div class="mat-sort-header-container mat-sort-header-sorted">
                                                <button class="mat-sort-header-button" type="button" aria-label="Change sorting for priority"> Ưu tiên hiển thị </button><!---->
                                                <div class="mat-sort-header-arrow ng-trigger ng-trigger-arrowPosition ng-tns-c31-177 ng-star-inserted" style="transform: translateY(0px); opacity: 1;">
                                                   <div class="mat-sort-header-stem"></div>
                                                   <div class="mat-sort-header-indicator ng-trigger ng-trigger-indicator" style="transform: translateY(0px);">
                                                      <div class="mat-sort-header-pointer-left ng-trigger ng-trigger-leftPointer" style="transform: rotate(-45deg);"></div>
                                                      <div class="mat-sort-header-pointer-right ng-trigger ng-trigger-rightPointer" style="transform: rotate(45deg);"></div>
                                                      <div class="mat-sort-header-pointer-middle"></div>
                                                   </div>
                                                </div>
                                             </div>
                                          </th>
                                          <th _ngcontent-c42="" class="mat-header-cell ng-tns-c31-178 cdk-column-edit mat-column-edit ng-star-inserted" mat-header-cell="" mat-sort-header="" role="columnheader" style="touch-action: none; user-select: none; -webkit-user-drag: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
                                             <div class="mat-sort-header-container">
                                                <button class="mat-sort-header-button" type="button" aria-label="Change sorting for edit">Chỉnh sửa</button><!---->
                                                <div class="mat-sort-header-arrow ng-trigger ng-trigger-arrowPosition ng-tns-c31-178 ng-star-inserted" style="transform: translateY(25%); opacity: 0;">
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
                                       <tr _ngcontent-c42="" class="pointer mat-row ng-star-inserted" mat-row="" role="row">
                                          <!---->
                                          <script>
											  function swapForm(on,off){
                                                var x = document.getElementById(on);
                                                var y = document.getElementById(off);
                                             
                                                x.style.display ="block";
                                                y.style.display ="none";
                                             }
                                             
                                          </script>
                                          <td _ngcontent-c42="" class="mat-cell cdk-column-name mat-column-name ng-star-inserted" mat-cell="" role="gridcell"> Bánh </td>
                                          <td _ngcontent-c42="" class="mat-cell cdk-column-type mat-column-type ng-star-inserted" mat-cell="" role="gridcell"> Đồ ăn </td>
                                          <td _ngcontent-c42="" class="mat-cell cdk-column-priceImport mat-column-priceImport ng-star-inserted" mat-cell="" role="gridcell"> 8.000&nbsp;₫ </td>
                                          <td _ngcontent-c42="" class="mat-cell cdk-column-price mat-column-price ng-star-inserted" mat-cell="" role="gridcell"> 10.000&nbsp;₫ </td>
                                          <td _ngcontent-c42="" class="mat-cell cdk-column-priority mat-column-priority ng-star-inserted" mat-cell="" role="gridcell">  </td>
                                          <td _ngcontent-c27="" class="mat-cell cdk-column-edit mat-column-edit ng-star-inserted" mat-cell="" role="gridcell">
                                             <div _ngcontent-c27="" class="icon-sm">
                                                <mat-icon _ngcontent-c27="" class="pointer text-primary mat-icon notranslate material-icons mat-icon-inline mat-icon-no-color" role="img" aria-hidden="true" onclick="swapForm('form-edit-menu','form-add-menu')">edit</mat-icon>
                                             </div>
                                          </td>
                                       </tr>
                                    </tbody>
                                    <tfoot role="rowgroup" class="mat-table-sticky" style="display: none; bottom: 0px; position: sticky; z-index: 10;">
                                       <!---->
                                    </tfoot>
                                 </table>
                                 <mat-paginator _ngcontent-c42="" class="mat-paginator">
                                    <div class="mat-paginator-outer-container">
                                       <div class="mat-paginator-container">
                                          <!---->
                                          <div class="mat-paginator-page-size ng-star-inserted">
                                             <div class="mat-paginator-page-size-label">Số dòng mỗi trang</div>
                                             <!---->
                                             <mat-form-field class="mat-paginator-page-size-select mat-form-field ng-tns-c5-179 mat-primary mat-form-field-type-mat-select mat-form-field-appearance-legacy mat-form-field-can-float mat-form-field-hide-placeholder ng-star-inserted mat-form-field-should-float">
                                                <div class="mat-form-field-wrapper">
                                                   <div class="mat-form-field-flex">
                                                      <!----><!---->
                                                      <div class="mat-form-field-infix">
                                                         <mat-select class="mat-select ng-tns-c34-180 ng-star-inserted" role="listbox" id="mat-select-14" tabindex="0" aria-label="Số dòng mỗi trang" aria-required="false" aria-disabled="false" aria-invalid="false" aria-multiselectable="false">
                                                            <div class="mat-select-trigger" aria-hidden="true" cdk-overlay-origin="">
                                                               <div class="mat-select-value">
                                                                  <!----><!---->
                                                                  <span class="mat-select-value-text ng-tns-c34-180 ng-star-inserted">
                                                                     <!----><span class="ng-tns-c34-180 ng-star-inserted">10</span><!---->
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
                                                   <div class="mat-form-field-underline ng-tns-c5-179 ng-star-inserted"><span class="mat-form-field-ripple"></span></div>
                                                   <div class="mat-form-field-subscript-wrapper">
                                                      <!----><!---->
                                                      <div class="mat-form-field-hint-wrapper ng-tns-c5-179 ng-trigger ng-trigger-transitionMessages ng-star-inserted" style="opacity: 1; transform: translateY(0%);">
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
                                             <button class="mat-paginator-navigation-previous mat-icon-button" mat-icon-button="" type="button" aria-describedby="cdk-describedby-message-72" cdk-describedby-host="" aria-label="Trang trước" disabled="" style="touch-action: none; user-select: none; -webkit-user-drag: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
                                                <span class="mat-button-wrapper">
                                                   <svg class="mat-paginator-icon" focusable="false" viewBox="0 0 24 24">
                                                      <path d="M15.41 7.41L14 6l-6 6 6 6 1.41-1.41L10.83 12z"></path>
                                                   </svg>
                                                </span>
                                                <div class="mat-button-ripple mat-ripple mat-button-ripple-round" matripple=""></div>
                                                <div class="mat-button-focus-overlay"></div>
                                             </button>
                                             <button class="mat-paginator-navigation-next mat-icon-button" mat-icon-button="" type="button" aria-describedby="cdk-describedby-message-73" cdk-describedby-host="" aria-label="Trang sau" disabled="" style="touch-action: none; user-select: none; -webkit-user-drag: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
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
                           <div _ngcontent-c42="" class="right-panel">
                              <app-menu-entry _ngcontent-c42="" mode="0" _nghost-c43="">
                                 <div _ngcontent-c33="" class="ng-star-inserted" id="form-add-menu" style="display:none;">
                                    <div _ngcontent-c33="" class="topbar-sub">
                                       <div _ngcontent-c33="" class="container-fluid d-flex h-100">
                                          <div _ngcontent-c33="" class="justify-content-center align-self-center d-flex flex-row w-100">
                                             <!---->
                                             <div _ngcontent-c33="" class="topbar-sub-title ng-star-inserted">Thêm mới</div>
                                             <!---->
                                             <div _ngcontent-c33="" class="flex-grow-1"></div>
                                             <!----><button _ngcontent-c33="" class="btn btn-primary btn-bar ng-star-inserted" type="button"><i _ngcontent-c33="" class="fas fa-check"></i> Lưu </button><!----><!---->
                                          </div>
                                       </div>
                                    </div>
                                    <div _ngcontent-c33="" class="form-sub">
                                       <form _ngcontent-c33="" novalidate="" class="ng-pristine ng-invalid ng-touched">
                                          <app-error _ngcontent-c33="" _nghost-c4="">
                                             <ul _ngcontent-c4="" class="error-list my-1">
                                                <!---->
                                             </ul>
                                          </app-error>
                                          <mat-form-field _ngcontent-c33="" class="w-50 pr-2 mat-form-field ng-tns-c5-45 mat-primary mat-form-field-type-mat-input mat-form-field-appearance-legacy mat-form-field-can-float mat-form-field-has-label mat-form-field-hide-placeholder ng-pristine ng-invalid mat-form-field-invalid ng-touched">
                                             <div class="mat-form-field-wrapper">
                                                <div class="mat-form-field-flex">
                                                   <!----><!---->
                                                   <div class="mat-form-field-infix">
                                                      <span class="bmd-form-group"><input _ngcontent-c33="" class="mat-input-element mat-form-field-autofill-control cdk-text-field-autofill-monitored ng-pristine ng-invalid ng-touched" matinput="" name="name" placeholder="Tên menu" required="" id="mat-input-9" aria-invalid="true" aria-required="true"></span>
                                                      <span class="mat-form-field-label-wrapper">
                                                         <!---->
                                                         <label class="mat-form-field-label ng-tns-c5-45 mat-empty mat-form-field-empty ng-star-inserted" id="mat-form-field-label-27" for="mat-input-9" aria-owns="mat-input-9">
                                                            <!----><!---->Tên menu<!----><!----><span aria-hidden="true" class="mat-placeholder-required mat-form-field-required-marker ng-tns-c5-45 ng-star-inserted"> *</span>
                                                         </label>
                                                      </span>
                                                   </div>
                                                   <!---->
                                                </div>
                                                <!---->
                                                <div class="mat-form-field-underline ng-tns-c5-45 ng-star-inserted"><span class="mat-form-field-ripple"></span></div>
                                                <div class="mat-form-field-subscript-wrapper">
                                                   <!----><!---->
                                                   <div class="mat-form-field-hint-wrapper ng-tns-c5-45 ng-trigger ng-trigger-transitionMessages ng-star-inserted" style="opacity: 1; transform: translateY(0%);">
                                                      <!---->
                                                      <div class="mat-form-field-hint-spacer"></div>
                                                   </div>
                                                </div>
                                             </div>
                                          </mat-form-field>
                                          <mat-form-field _ngcontent-c33="" class="w-50 pl-2 mat-form-field ng-tns-c5-46 mat-primary mat-form-field-type-mat-select mat-form-field-appearance-legacy mat-form-field-can-float mat-form-field-has-label mat-form-field-hide-placeholder ng-untouched ng-pristine ng-invalid">
                                             <div class="mat-form-field-wrapper">
                                                <div class="mat-form-field-flex">
													<!----><!---->
                                                   <div class="mat-form-field-infix">
                                                      <mat-select _ngcontent-c33="" class="mat-select ng-tns-c34-47 ng-untouched ng-pristine mat-select-required mat-select-empty ng-star-inserted ng-invalid" name="type" placeholder="Loại menu" required="" role="listbox" id="mat-select-4" tabindex="0" aria-label="Loại menu" aria-required="true" aria-disabled="false" aria-invalid="false" aria-multiselectable="false">
                                                         <div class="mat-select-trigger" aria-hidden="true" cdk-overlay-origin="">
                                                            <div class="mat-select-value">
                                                               <!----><span class="mat-select-placeholder ng-tns-c34-47 ng-star-inserted">Loại menu</span><!---->
                                                            </div>
                                                            <div class="mat-select-arrow-wrapper">
                                                               <div class="mat-select-arrow"></div>
                                                            </div>
                                                         </div>
                                                         <!---->
                                                      </mat-select>
                                                      <span class="mat-form-field-label-wrapper">
                                                         <!---->
                                                         <label class="mat-form-field-label ng-tns-c5-46 mat-empty mat-form-field-empty ng-star-inserted" id="mat-form-field-label-29" for="mat-select-4" aria-owns="mat-select-4">
                                                            <!----><!---->Loại menu<!----><!----><span aria-hidden="true" class="mat-placeholder-required mat-form-field-required-marker ng-tns-c5-46 ng-star-inserted"> *</span>
                                                         </label>
                                                      </span>
                                                   </div>
                                                   <!---->
                                                </div>
                                                <!---->
                                                <div class="mat-form-field-underline ng-tns-c5-46 ng-star-inserted"><span class="mat-form-field-ripple"></span></div>
                                                <div class="mat-form-field-subscript-wrapper">
                                                   <!----><!---->
                                                   <div class="mat-form-field-hint-wrapper ng-tns-c5-46 ng-trigger ng-trigger-transitionMessages ng-star-inserted" style="opacity: 1; transform: translateY(0%);">
                                                      <!---->
                                                      <div class="mat-form-field-hint-spacer"></div>
                                                   </div>
                                                </div>
                                             </div>
                                          </mat-form-field>
                                          <br _ngcontent-c33="">
                                          <mat-form-field _ngcontent-c33="" class="w-50 pr-2 mat-form-field ng-tns-c5-48 mat-primary mat-form-field-type-mat-input mat-form-field-appearance-legacy mat-form-field-can-float mat-form-field-has-label mat-form-field-hide-placeholder ng-untouched ng-pristine ng-invalid">
                                             <div class="mat-form-field-wrapper">
                                                <div class="mat-form-field-flex">
                                                   <!----><!---->
                                                   <div class="mat-form-field-infix">
                                                      <span class="bmd-form-group"><input _ngcontent-c33="" class="input-money mat-input-element mat-form-field-autofill-control cdk-text-field-autofill-monitored ng-untouched ng-pristine ng-invalid" matinput="" name="priceImport" placeholder="Giá nhập" required="" type="number" id="mat-input-10" aria-invalid="false" aria-required="true"></span>
                                                      <span class="mat-form-field-label-wrapper">
                                                         <!---->
                                                         <label class="mat-form-field-label ng-tns-c5-48 mat-empty mat-form-field-empty ng-star-inserted" id="mat-form-field-label-31" for="mat-input-10" aria-owns="mat-input-10">
                                                            <!----><!---->Giá nhập<!----><!----><span aria-hidden="true" class="mat-placeholder-required mat-form-field-required-marker ng-tns-c5-48 ng-star-inserted"> *</span>
                                                         </label>
                                                      </span>
                                                   </div>
                                                   <!---->
                                                   <div class="mat-form-field-suffix ng-tns-c5-48 ng-star-inserted"><span _ngcontent-c33="" matsuffix="">.000 ₫</span></div>
                                                </div>
                                                <!---->
                                                <div class="mat-form-field-underline ng-tns-c5-48 ng-star-inserted"><span class="mat-form-field-ripple"></span></div>
                                                <div class="mat-form-field-subscript-wrapper">
                                                   <!----><!---->
                                                   <div class="mat-form-field-hint-wrapper ng-tns-c5-48 ng-trigger ng-trigger-transitionMessages ng-star-inserted" style="opacity: 1; transform: translateY(0%);">
                                                      <!---->
                                                      <div class="mat-form-field-hint-spacer"></div>
                                                   </div>
                                                </div>
                                             </div>
                                          </mat-form-field>
                                          <mat-form-field _ngcontent-c33="" class="w-50 pl-2 mat-form-field ng-tns-c5-49 mat-primary mat-form-field-type-mat-input mat-form-field-appearance-legacy mat-form-field-can-float mat-form-field-has-label mat-form-field-hide-placeholder ng-untouched ng-pristine ng-invalid">
                                             <div class="mat-form-field-wrapper">
                                                <div class="mat-form-field-flex">
                                                   <!----><!---->
                                                   <div class="mat-form-field-infix">
                                                      <span class="bmd-form-group"><input _ngcontent-c33="" class="input-money mat-input-element mat-form-field-autofill-control cdk-text-field-autofill-monitored ng-untouched ng-pristine ng-invalid" matinput="" name="price" placeholder="Giá bán" required="" type="number" id="mat-input-11" aria-invalid="false" aria-required="true"></span>
                                                      <span class="mat-form-field-label-wrapper">
                                                         <!---->
                                                         <label class="mat-form-field-label ng-tns-c5-49 mat-empty mat-form-field-empty ng-star-inserted" id="mat-form-field-label-33" for="mat-input-11" aria-owns="mat-input-11">
                                                            <!----><!---->Giá bán<!----><!----><span aria-hidden="true" class="mat-placeholder-required mat-form-field-required-marker ng-tns-c5-49 ng-star-inserted"> *</span>
                                                         </label>
                                                      </span>
                                                   </div>
                                                   <!---->
                                                   <div class="mat-form-field-suffix ng-tns-c5-49 ng-star-inserted"><span _ngcontent-c33="" matsuffix="">.000 ₫</span></div>
                                                </div>
                                                <!---->
                                                <div class="mat-form-field-underline ng-tns-c5-49 ng-star-inserted"><span class="mat-form-field-ripple"></span></div>
                                                <div class="mat-form-field-subscript-wrapper">
                                                   <!----><!---->
                                                   <div class="mat-form-field-hint-wrapper ng-tns-c5-49 ng-trigger ng-trigger-transitionMessages ng-star-inserted" style="opacity: 1; transform: translateY(0%);">
                                                      <!---->
                                                      <div class="mat-form-field-hint-spacer"></div>
                                                   </div>
                                                </div>
                                             </div>
                                          </mat-form-field>
                                          <br _ngcontent-c33="">
                                          <mat-form-field _ngcontent-c33="" class="w-100 mat-form-field ng-tns-c5-50 mat-primary mat-form-field-type-mat-input mat-form-field-appearance-legacy mat-form-field-can-float mat-form-field-has-label mat-form-field-hide-placeholder ng-untouched ng-pristine ng-valid">
                                             <div class="mat-form-field-wrapper">
                                                <div class="mat-form-field-flex">
                                                   <!----><!---->
                                                   <div class="mat-form-field-infix">
                                                      <span class="bmd-form-group"><input _ngcontent-c33="" class="mat-input-element mat-form-field-autofill-control cdk-text-field-autofill-monitored ng-untouched ng-pristine ng-valid" matinput="" name="priority" placeholder="Ưu tiên hiển thị" type="number" id="mat-input-12" aria-describedby="mat-hint-1" aria-invalid="false" aria-required="false"></span>
                                                      <span class="mat-form-field-label-wrapper">
                                                         <!---->
                                                         <label class="mat-form-field-label ng-tns-c5-50 mat-empty mat-form-field-empty ng-star-inserted" id="mat-form-field-label-35" for="mat-input-12" aria-owns="mat-input-12">
                                                            <!----><!---->Ưu tiên hiển thị<!----><!---->
                                                         </label>
                                                      </span>
                                                   </div>
                                                   <!---->
                                                </div>
                                                <!---->
                                                <div class="mat-form-field-underline ng-tns-c5-50 ng-star-inserted"><span class="mat-form-field-ripple"></span></div>
                                                <div class="mat-form-field-subscript-wrapper">
                                                   <!----><!---->
                                                   <div class="mat-form-field-hint-wrapper ng-tns-c5-50 ng-trigger ng-trigger-transitionMessages ng-star-inserted" style="opacity: 1; transform: translateY(0%);">
                                                      <!---->
                                                      <mat-hint _ngcontent-c33="" class="mat-hint" id="mat-hint-1">Ưu tiên hiển thị khi thêm menu cho khách. Ưu tiên số nhỏ.</mat-hint>
                                                      <div class="mat-form-field-hint-spacer"></div>
                                                   </div>
                                                </div>
                                             </div>
                                          </mat-form-field>
                                       </form>
                                    </div>
                                 </div>
                                 <div _ngcontent-c33="" class="ng-star-inserted" id="form-edit-menu" style="display:none;">
                                    <div _ngcontent-c33="" class="topbar-sub">
                                       <div _ngcontent-c33="" class="container-fluid d-flex h-100">
                                          <div _ngcontent-c33="" class="justify-content-center align-self-center d-flex flex-row w-100">
                                             <!----><!---->
                                             <div _ngcontent-c33="" class="topbar-sub-title ng-star-inserted">Chỉnh sửa</div>
                                             <div _ngcontent-c33="" class="flex-grow-1"></div>
                                             <!----><!----><button _ngcontent-c33="" class="btn btn-primary btn-bar mr-2 ng-star-inserted" type="button"><i _ngcontent-c33="" class="fas fa-save"></i> Lưu </button><!----><button _ngcontent-c33="" class="btn btn-danger btn-bar ng-star-inserted" type="button"><i _ngcontent-c33="" class="fas fa-trash"></i> Xóa </button>
                                          </div>
                                       </div>
                                    </div>
                                    <div _ngcontent-c33="" class="form-sub">
                                       <form _ngcontent-c33="" novalidate="" class="ng-pristine ng-valid ng-touched">
                                          <app-error _ngcontent-c33="" _nghost-c4="">
                                             <ul _ngcontent-c4="" class="error-list my-1">
                                                <!---->
                                             </ul>
                                          </app-error>
                                          <mat-form-field _ngcontent-c33="" class="w-50 pr-2 mat-form-field ng-tns-c5-52 mat-primary mat-form-field-type-mat-input mat-form-field-appearance-legacy mat-form-field-can-float mat-form-field-has-label mat-form-field-hide-placeholder ng-pristine ng-valid mat-form-field-should-float ng-touched">
                                             <div class="mat-form-field-wrapper">
                                                <div class="mat-form-field-flex">
                                                   <!----><!---->
                                                   <div class="mat-form-field-infix">
                                                      <span class="bmd-form-group is-filled"><input _ngcontent-c33="" class="mat-input-element mat-form-field-autofill-control cdk-text-field-autofill-monitored ng-pristine ng-valid ng-touched" matinput="" name="name" placeholder="Tên menu" required="" id="mat-input-13" aria-invalid="false" aria-required="true"></span>
                                                      <span class="mat-form-field-label-wrapper">
                                                         <!---->
                                                         <label class="mat-form-field-label ng-tns-c5-52 ng-star-inserted" id="mat-form-field-label-37" for="mat-input-13" aria-owns="mat-input-13">
                                                            <!----><!---->Tên menu<!----><!----><span aria-hidden="true" class="mat-placeholder-required mat-form-field-required-marker ng-tns-c5-52 ng-star-inserted"> *</span>
                                                         </label>
                                                      </span>
                                                   </div>
                                                   <!---->
                                                </div>
                                                <!---->
                                                <div class="mat-form-field-underline ng-tns-c5-52 ng-star-inserted"><span class="mat-form-field-ripple"></span></div>
                                                <div class="mat-form-field-subscript-wrapper">
                                                   <!----><!---->
                                                   <div class="mat-form-field-hint-wrapper ng-tns-c5-52 ng-trigger ng-trigger-transitionMessages ng-star-inserted" style="opacity: 1; transform: translateY(0%);">
                                                      <!---->
                                                      <div class="mat-form-field-hint-spacer"></div>
                                                   </div>
                                                </div>
                                             </div>
                                          </mat-form-field>
                                          <mat-form-field _ngcontent-c33="" class="w-50 pl-2 mat-form-field ng-tns-c5-53 mat-primary mat-form-field-type-mat-select mat-form-field-appearance-legacy mat-form-field-can-float mat-form-field-has-label mat-form-field-hide-placeholder ng-untouched ng-pristine ng-valid mat-form-field-should-float">
                                             <div class="mat-form-field-wrapper">
                                                <div class="mat-form-field-flex">
                                                   <!----><!---->
                                                   <div class="mat-form-field-infix">
                                                      <mat-select _ngcontent-c33="" class="mat-select ng-tns-c34-54 ng-untouched ng-pristine ng-valid mat-select-required ng-star-inserted" name="type" placeholder="Loại menu" required="" role="listbox" id="mat-select-5" tabindex="0" aria-label="Loại menu" aria-required="true" aria-disabled="false" aria-invalid="false" aria-multiselectable="false">
                                                         <div class="mat-select-trigger" aria-hidden="true" cdk-overlay-origin="">
                                                            <div class="mat-select-value">
                                                               <!----><!---->
                                                               <span class="mat-select-value-text ng-tns-c34-54 ng-star-inserted">
                                                                  <!----><span class="ng-tns-c34-54 ng-star-inserted">Đồ uống</span><!---->
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
                                                         <label class="mat-form-field-label ng-tns-c5-53 ng-star-inserted" id="mat-form-field-label-39" for="mat-select-5" aria-owns="mat-select-5">
                                                            <!----><!---->Loại menu<!----><!----><span aria-hidden="true" class="mat-placeholder-required mat-form-field-required-marker ng-tns-c5-53 ng-star-inserted"> *</span>
                                                         </label>
                                                      </span>
                                                   </div>
                                                   <!---->
                                                </div>
                                                <!---->
                                                <div class="mat-form-field-underline ng-tns-c5-53 ng-star-inserted"><span class="mat-form-field-ripple"></span></div>
                                                <div class="mat-form-field-subscript-wrapper">
                                                   <!----><!---->
                                                   <div class="mat-form-field-hint-wrapper ng-tns-c5-53 ng-trigger ng-trigger-transitionMessages ng-star-inserted" style="opacity: 1; transform: translateY(0%);">
                                                      <!---->
                                                      <div class="mat-form-field-hint-spacer"></div>
                                                   </div>
                                                </div>
                                             </div>
                                          </mat-form-field>
                                          <br _ngcontent-c33="">
                                          <mat-form-field _ngcontent-c33="" class="w-50 pr-2 mat-form-field ng-tns-c5-55 mat-primary mat-form-field-type-mat-input mat-form-field-appearance-legacy mat-form-field-can-float mat-form-field-has-label mat-form-field-hide-placeholder ng-untouched ng-pristine ng-valid mat-form-field-should-float">
                                             <div class="mat-form-field-wrapper">
                                                <div class="mat-form-field-flex">
                                                   <!----><!---->
                                                   <div class="mat-form-field-infix">
                                                      <span class="bmd-form-group is-filled"><input _ngcontent-c33="" class="input-money mat-input-element mat-form-field-autofill-control cdk-text-field-autofill-monitored ng-untouched ng-pristine ng-valid" matinput="" name="priceImport" placeholder="Giá nhập" required="" type="number" id="mat-input-14" aria-invalid="false" aria-required="true"></span>
                                                      <span class="mat-form-field-label-wrapper">
                                                         <!---->
                                                         <label class="mat-form-field-label ng-tns-c5-55 ng-star-inserted" id="mat-form-field-label-41" for="mat-input-14" aria-owns="mat-input-14">
                                                            <!----><!---->Giá nhập<!----><!----><span aria-hidden="true" class="mat-placeholder-required mat-form-field-required-marker ng-tns-c5-55 ng-star-inserted"> *</span>
                                                         </label>
                                                      </span>
                                                   </div>
                                                   <!---->
                                                   <div class="mat-form-field-suffix ng-tns-c5-55 ng-star-inserted"><span _ngcontent-c33="" matsuffix="">.000 ₫</span></div>
                                                </div>
                                                <!---->
                                                <div class="mat-form-field-underline ng-tns-c5-55 ng-star-inserted"><span class="mat-form-field-ripple"></span></div>
                                                <div class="mat-form-field-subscript-wrapper">
                                                   <!----><!---->
                                                   <div class="mat-form-field-hint-wrapper ng-tns-c5-55 ng-trigger ng-trigger-transitionMessages ng-star-inserted" style="opacity: 1; transform: translateY(0%);">
                                                      <!---->
                                                      <div class="mat-form-field-hint-spacer"></div>
                                                   </div>
                                                </div>
                                             </div>
                                          </mat-form-field>
                                          <mat-form-field _ngcontent-c33="" class="w-50 pl-2 mat-form-field ng-tns-c5-56 mat-primary mat-form-field-type-mat-input mat-form-field-appearance-legacy mat-form-field-can-float mat-form-field-has-label mat-form-field-hide-placeholder ng-untouched ng-pristine ng-valid mat-form-field-should-float">
                                             <div class="mat-form-field-wrapper">
                                                <div class="mat-form-field-flex">
                                                   <!----><!---->
                                                   <div class="mat-form-field-infix">
                                                      <span class="bmd-form-group is-filled"><input _ngcontent-c33="" class="input-money mat-input-element mat-form-field-autofill-control cdk-text-field-autofill-monitored ng-untouched ng-pristine ng-valid" matinput="" name="price" placeholder="Giá bán" required="" type="number" id="mat-input-15" aria-invalid="false" aria-required="true"></span>
                                                      <span class="mat-form-field-label-wrapper">
                                                         <!---->
                                                         <label class="mat-form-field-label ng-tns-c5-56 ng-star-inserted" id="mat-form-field-label-43" for="mat-input-15" aria-owns="mat-input-15">
                                                            <!----><!---->Giá bán<!----><!----><span aria-hidden="true" class="mat-placeholder-required mat-form-field-required-marker ng-tns-c5-56 ng-star-inserted"> *</span>
                                                         </label>
                                                      </span>
                                                   </div>
                                                   <!---->
                                                   <div class="mat-form-field-suffix ng-tns-c5-56 ng-star-inserted"><span _ngcontent-c33="" matsuffix="">.000 ₫</span></div>
                                                </div>
                                                <!---->
                                                <div class="mat-form-field-underline ng-tns-c5-56 ng-star-inserted"><span class="mat-form-field-ripple"></span></div>
                                                <div class="mat-form-field-subscript-wrapper">
                                                   <!----><!---->
                                                   <div class="mat-form-field-hint-wrapper ng-tns-c5-56 ng-trigger ng-trigger-transitionMessages ng-star-inserted" style="opacity: 1; transform: translateY(0%);">
                                                      <!---->
                                                      <div class="mat-form-field-hint-spacer"></div>
                                                   </div>
                                                </div>
                                             </div>
                                          </mat-form-field>
                                          <br _ngcontent-c33="">
                                          <mat-form-field _ngcontent-c33="" class="w-100 mat-form-field ng-tns-c5-57 mat-primary mat-form-field-type-mat-input mat-form-field-appearance-legacy mat-form-field-can-float mat-form-field-has-label mat-form-field-hide-placeholder ng-untouched ng-pristine ng-valid">
                                             <div class="mat-form-field-wrapper">
                                                <div class="mat-form-field-flex">
                                                   <!----><!---->
                                                   <div class="mat-form-field-infix">
                                                      <span class="bmd-form-group"><input _ngcontent-c33="" class="mat-input-element mat-form-field-autofill-control cdk-text-field-autofill-monitored ng-untouched ng-pristine ng-valid" matinput="" name="priority" placeholder="Ưu tiên hiển thị" type="number" id="mat-input-16" aria-describedby="mat-hint-2" aria-invalid="false" aria-required="false"></span>
                                                      <span class="mat-form-field-label-wrapper">
                                                         <!---->
                                                         <label class="mat-form-field-label ng-tns-c5-57 mat-empty mat-form-field-empty ng-star-inserted" id="mat-form-field-label-45" for="mat-input-16" aria-owns="mat-input-16">
                                                            <!----><!---->Ưu tiên hiển thị<!----><!---->
                                                         </label>
                                                      </span>
                                                   </div>
                                                   <!---->
                                                </div>
                                                <!---->
                                                <div class="mat-form-field-underline ng-tns-c5-57 ng-star-inserted"><span class="mat-form-field-ripple"></span></div>
                                                <div class="mat-form-field-subscript-wrapper">
                                                   <!----><!---->
                                                   <div class="mat-form-field-hint-wrapper ng-tns-c5-57 ng-trigger ng-trigger-transitionMessages ng-star-inserted" style="opacity: 1; transform: translateY(0%);">
                                                      <!---->
                                                      <mat-hint _ngcontent-c33="" class="mat-hint" id="mat-hint-2">Ưu tiên hiển thị khi thêm menu cho khách. Ưu tiên số nhỏ.</mat-hint>
                                                      <div class="mat-form-field-hint-spacer"></div>
                                                   </div>
                                                </div>
                                             </div>
                                          </mat-form-field>
                                       </form>
                                    </div>
                                 </div>
                              </app-menu-entry>
                           </div>
                           <div _ngcontent-c42=""></div>
                        </div>
                     </app-menu>
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
      <iframe id="ssIFrame_google" sandbox="allow-scripts allow-same-origin" aria-hidden="true" frame-border="0" src="https://accounts.google.com/o/oauth2/iframe#origin=https%3A%2F%2Fadmin.shotel.vn&amp;rpcToken=271133433.42576146" style="position: absolute; width: 1px; height: 1px; left: -9999px; top: -9999px; right: -9999px; bottom: -9999px; display: none;"></iframe>
      <div class="cdk-live-announcer-element cdk-visually-hidden" aria-atomic="true" aria-live="assertive"></div>
      <div class="cdk-overlay-container"></div>
      <div id="cdk-describedby-message-container" aria-hidden="true" style="display: none;">
         <div id="cdk-describedby-message-72">Trang trước</div>
         <div id="cdk-describedby-message-73">Trang sau</div>
      </div>
   </body>
</html>