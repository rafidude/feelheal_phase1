function getCookie(NameOfCookie)
{

// First we check to see if there is a cookie stored.
// Otherwise the length of document.cookie would be zero.

if (document.cookie.length > 0)
{

// Second we check to see if the cookie's name is stored in the
// "document.cookie" object for the page.

// Since more than one cookie can be set on a
// single page it is possible that our cookie
// is not present, even though the "document.cookie" object
// is not just an empty text.
// If our cookie name is not present the value -1 is stored
// in the variable called "begin".

begin = document.cookie.indexOf(NameOfCookie+"=");
if (begin != -1) // Note: != means "is not equal to"
{

// Our cookie was set.
// The value stored in the cookie is returned from the function.

begin += NameOfCookie.length+1;
end = document.cookie.indexOf(";", begin);
if (end == -1) end = document.cookie.length;
return unescape(document.cookie.substring(begin, end)); }
}
return null;

// Our cookie was not set.
// The value "null" is returned from the function.

}

function setCookie(NameOfCookie, value, expiredays)
{

// Three variables are used to set the new cookie.
// The name of the cookie, the value to be stored,
// and finally the number of days until the cookie expires.
// The first lines in the function convert
// the number of days to a valid date.

var ExpireDate = new Date ();
ExpireDate.setTime(ExpireDate.getTime() + (expiredays * 24 * 3600 * 1000));

// The next line stores the cookie, simply by assigning
// the values to the "document.cookie" object.
// Note the date is converted to Greenwich Mean time using
// the "toGMTstring()" function.

document.cookie = NameOfCookie + "=" + escape(value) +
((expiredays == null) ? "" : "; expires=" + ExpireDate.toGMTString());
}
function delCookie (NameOfCookie)
{

// The function simply checks to see if the cookie is set.
// If so, the expiration date is set to Jan. 1st 1970.

if (getCookie(NameOfCookie)) {
	document.cookie = NameOfCookie + "=" +"; expires=Thu, 01-Jan-70 00:00:01 GMT";
}
}
function processCookie(){
	document.languageform.submit();
	lang=document.languageform.lang_user.value;
	delCookie('lang_cookie');
	setCookie('lang_cookie',lang,'1');

		window.location.reload();

	//window.location="/page/198";

	if(lang=="english"){//if language =English
		window.location.href=("/language/english");
				}else if(lang=="german"){// DEUTSCH
		window.location.href=("/language/german");
				}else if(lang=="spanish"){//FRAN&Ccedil;AIS
		window.location.href="/language/spanish";
				}else if(lang=="french"){//ESPA&Ntilde;OL
		window.location.href="/language/french";
	//}else if(lang=="it"){//ITALIANO
		//window.location.href="/page/198&lang=it";
	//}else if(lang=="nl"){ //NEDERLANDS
		//window.location.href="/page/198&lang=nl";
			}

}

function processFontCookie(newFontSize){
	delCookie('sessionfont');
	setCookie('sessionfont',newFontSize,'365');
	document.fontform.sessionfont.value=newFontSize;
	alert(newFontSize);
	document.fontform.submit();
}