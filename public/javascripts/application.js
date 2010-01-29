// Place your application-specific JavaScript functions and classes here

// This file is automatically included by javascript_include_tag :defaultis
sfHover = function() {
  var sfEls = document.getElementById("menu").getElementsByTagName("LI");
  for (var i=0; i<sfEls.length; i++) {
    sfEls[i].onmouseover=function() {
      this.className+=" sfhover";
    }
    sfEls[i].onmouseout=function() {
      this.className=this.className.replace(new RegExp(" sfhover\\b"), "");
    }
  }
}

// IE-only method of attaching an event to window loading.
if (window.attachEvent) window.attachEvent("onload", sfHover);
