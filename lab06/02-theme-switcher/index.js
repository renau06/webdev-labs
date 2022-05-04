/*
    Hints: 
    1. Attach click event handlers to all four of the 
       buttons (#default, #ocean, #desert, and #high-contrast).
    2. Modify the className property of the body tag 
       based on the button that was clicked.
*/

const setTheme = (theme) => {

    document.querySelector('body').className = theme;

};

document.querySelector("#default").addEventListener('click', ()=>setTheme('default'));
document.querySelector("#desert").addEventListener('click', ()=>setTheme('desert'));
document.querySelector("#ocean").addEventListener('click', ()=>setTheme('ocean'));
document.querySelector("#high-contrast").addEventListener('click', ()=>setTheme('high-contrast'));

