// output.js.coffee
(function(){var t,n;$(document).ready(function(){return $("body").on("click","._output-filter-option",function(r){var o;return r.preventDefault(),o=$(this).data("option"),n(this,[o].concat(t()))}),$("body").on("click","._remove-output-filter",function(r){return r.preventDefault(),n(this,t($(this).parent()[0]))}),$("body").on("click","._output-filter-clear",function(t){return t.preventDefault(),n(this,[])})}),t=function(t){var n;return n=[],$("._current-output-filter").each(function(){if(this!==t)return n.push($(this).data("option"))}),n},n=function(t,n){var r;return(r=$(t).slot()).slotReload(r.slotUrl()+$.param({filter:{output_type:n}}))}}).call(this);