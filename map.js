Array.from(document.querySelectorAll('td>a')).map(function(x){return x.href});
alert(Array.from(document.querySelectorAll('td>a')).map(function(x){return x.href}));
alert(Array.from(document.querySelectorAll('td>a')).map(a => a.href.replace('https://baligreentour.com/','')));
