Array.from(document.querySelectorAll('td>a')).map(function(x){return x.href});
alert(Array.from(document.querySelectorAll('td>a')).map(function(x){return x.href}));
alert(Array.from(document.querySelectorAll('td>a')).map(a => a.href.replace('https://baligreentour.com/','')));
const dt = []; Array.from(document.querySelectorAll('td>a')).map(x => dt.push(x.href.replace('https://baligreentour.com/',''))); console.log(dt);
const at = Array.from(document.querySelectorAll('td>a')).map(x => x.href.replace('https://baligreentour.com/',''));
