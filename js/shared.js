/* Responsibility for Ocean Plastic — shared JS (scroll reveal, progress bar) */

/* progress bar */

window.addEventListener('scroll',()=>{
  const pct=(window.scrollY/(document.body.scrollHeight-window.innerHeight))*100;
  document.getElementById('progress').style.width=Math.min(100,pct).toFixed(1)+'%';
});

/* scroll reveal */

const obs=new IntersectionObserver(es=>{es.forEach(e=>{if(e.isIntersecting){e.target.classList.add('visible');obs.unobserve(e.target)}})},{threshold:.07});
document.querySelectorAll('.reveal').forEach((el,i)=>{el.style.transitionDelay=(i*.03)+'s';obs.observe(el)});