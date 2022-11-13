const el = document.getElementById('latest-blog');

const hiddenDiv = document.getElementById('content-hide');


el.addEventListener('mouseover', function handleMouseOver() {
  hiddenDiv.style.display = 'block';
  hiddenDiv.style.transition = '5s';

});

el.addEventListener('mouseout', function handleMouseOut() {
  hiddenDiv.style.display = 'none';
  hiddenDiv.style.transition = '5s';

});
