var slideshow = jQuery(function() {
       var fx;
       var filenames = ["tuesday_main.png", "sunday_main.png", 
       "fasting.png"];
       var markup = '<div id="slideshow">';
       filenames.forEach(function(d){
           markup += '<img src="img/'  + d + '" width=642 height=250>';
           });
       function start() {
           jQuery('#slideshow').cycle('stop').remove();
           jQuery('#show').append(markup);
           jQuery('#effect').html(fx);
           jQuery('#slideshow').cycle({
               fx: fx,
               timeout: 2000,
               delay:  -1000,
               });
           }
           jQuery(document).ready(function(){
               var fx="fade";
               start();
               });
       });
