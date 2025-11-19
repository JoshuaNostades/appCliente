const sidebar = document.getElementById('sidebar');
const toggleBtn = document.getElementById('toggle-btn');
const pinIcon = document.getElementById('pinIcon');
let pinned = false;

// Expandir con hover si no está fijado
sidebar.addEventListener('mouseenter', () => {
    if (!pinned)
        sidebar.classList.add('expanded');
});
sidebar.addEventListener('mouseleave', () => {
    if (!pinned)
        sidebar.classList.remove('expanded');
});

// Botón fijar
toggleBtn.addEventListener('click', () => {
    pinned = !pinned;
    sidebar.classList.toggle('expanded', pinned);
    pinIcon.className = pinned ? 'bi bi-pin-angle-fill' : 'bi bi-pin-angle';
});

// Rotar chevron al abrir/cerrar
const collapses = document.querySelectorAll('.collapse');
collapses.forEach(c => {
    c.addEventListener('show.bs.collapse', (ev) => {
        const prev = ev.target.previousElementSibling;
        const chev = prev.querySelector('.chev-rotate');
        if (chev)
            chev.classList.add('chev-open');
        if (!sidebar.classList.contains('expanded'))
            sidebar.classList.add('expanded');
    });
    c.addEventListener('hide.bs.collapse', (ev) => {
        const prev = ev.target.previousElementSibling;
        const chev = prev.querySelector('.chev-rotate');
        if (chev)
            chev.classList.remove('chev-open');
    });
    
    document.addEventListener("DOMContentLoaded", function () {
    const sidebar = document.getElementById("sidebar");
    const toggleBtn = document.getElementById("toggle-btn");
    const pinIcon = document.getElementById("pinIcon");

    // expandir al pasar mouse
    sidebar.addEventListener("mouseenter", () => {
        if (!sidebar.classList.contains("pinned")) {
            sidebar.classList.add("expanded");
        }
    });

    sidebar.addEventListener("mouseleave", () => {
        if (!sidebar.classList.contains("pinned")) {
            sidebar.classList.remove("expanded");
        }
    });

    // fijar con el pin
    toggleBtn.addEventListener("click", () => {
        sidebar.classList.toggle("pinned");
        sidebar.classList.toggle("expanded");
        pinIcon.classList.toggle("bi-pin");
        pinIcon.classList.toggle("bi-pin-angle");
    });
});
});