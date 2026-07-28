const ctx=document.getElementById("tempChart");

if(ctx){

new Chart(ctx,{

type:"line",

data:{

labels:["Mon","Tue","Wed","Thu","Fri","Sat","Sun"],

datasets:[{

label:"Temperature",

data:[39,40,42,41,44,43,45],

borderColor:"#00bcd4",

backgroundColor:"rgba(0,188,212,0.2)",

fill:true,

tension:0.4

}]

},

options:{

responsive:true

}

});

}

// ==========================
// Climate Intelligence Website
// ==========================

console.log("Climate Intelligence Website Loaded");

// Smooth scrolling
document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener("click", function (e) {
        e.preventDefault();

        const target = document.querySelector(this.getAttribute("href"));

        if (target) {
            target.scrollIntoView({
                behavior: "smooth"
            });
        }
    });
});

// ==========================
// Counter Animation
// ==========================

const counters = document.querySelectorAll(".stats h1");

const speed = 80;

counters.forEach(counter => {

    const updateCounter = () => {

        const target = counter.innerText.replace(/\D/g, "");

        if (target === "") return;

        const count = Number(counter.getAttribute("data-count")) || 0;

        const increment = Math.ceil(target / speed);

        if (count < target) {

            const newCount = Math.min(count + increment, target);

            counter.setAttribute("data-count", newCount);

            if (counter.innerText.includes("°C")) {
                counter.innerText = newCount + "°C";
            } else if (counter.innerText.includes("%")) {
                counter.innerText = newCount + "%";
            } else if (counter.innerText.includes("+")) {
                counter.innerText = newCount + "+";
            } else {
                counter.innerText = newCount;
            }

            setTimeout(updateCounter, 20);

        }

    };

    updateCounter();

});

// ==========================
// Card Hover Effect
// ==========================

const cards = document.querySelectorAll(".card,.dashboard-card,.mission-card,.step");

cards.forEach(card => {

    card.addEventListener("mouseenter", () => {

        card.style.transform = "translateY(-10px) scale(1.03)";

    });

    card.addEventListener("mouseleave", () => {

        card.style.transform = "translateY(0px) scale(1)";

    });

});

// ==========================
// Fade Animation
// ==========================

const observer = new IntersectionObserver(entries => {

    entries.forEach(entry => {

        if (entry.isIntersecting) {

            entry.target.classList.add("show");

        }

    });

});

document.querySelectorAll("section").forEach(section => {

    section.classList.add("hidden");

    observer.observe(section);

});

// ==========================
// Navbar Shadow
// ==========================

window.addEventListener("scroll", () => {

    const header = document.querySelector("header");

    if (window.scrollY > 50) {

        header.style.background = "#08111f";

        header.style.boxShadow = "0 5px 15px rgba(0,0,0,0.4)";

    } else {

        header.style.background = "rgba(0,0,0,.45)";

        header.style.boxShadow = "none";

    }

});

// ==========================
// Contact Form
// ==========================

const form = document.querySelector("form");

if (form) {

    form.addEventListener("submit", function (e) {

        e.preventDefault();

        alert("Thank you! Your message has been submitted.");

        form.reset();

    });

}

// ==========================
// Current Date
// ==========================

const today = new Date();

console.log("Current Date :", today.toDateString());