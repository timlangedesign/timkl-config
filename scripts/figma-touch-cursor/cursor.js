// Completely hide the original cursor everywhere
const style = document.createElement("style");
style.innerHTML = `* { cursor: none !important; }`;
document.head.appendChild(style);

// Create the cursor bubble
const cursor = document.createElement("div");
cursor.style.position = "fixed";
cursor.style.width = "52px";
cursor.style.height = "52px";
cursor.style.borderRadius = "50%";
cursor.style.background = "radial-gradient(circle, rgba(255, 255, 255, 1) 0%, rgba(200, 200, 200, 0.8) 70%)";
cursor.style.border = "3px solid white";
cursor.style.boxShadow = "0px 6px 12px rgba(0, 0, 0, 0.15)";
cursor.style.pointerEvents = "none";
cursor.style.zIndex = "9999";
cursor.style.transform = "translate(-50%, -50%)";
cursor.style.transition = "background 0.15s ease-in-out, transform 0.08s ease-in-out";
document.body.appendChild(cursor);

// Update position on mouse move
document.addEventListener("mousemove", (event) => {
    cursor.style.left = `${event.clientX}px`;
    cursor.style.top = `${event.clientY}px`;
});

// Click effect - darkens on press
document.addEventListener("mousedown", () => {
    cursor.style.background = "radial-gradient(circle, rgba(220, 220, 220, 1) 0%, rgba(150, 150, 150, 1) 70%)";
    cursor.style.border = "3px solid white";
    cursor.style.boxShadow = "0px 3px 8px rgba(0, 0, 0, 0.3)";
    cursor.style.transform = "translate(-50%, -50%) scale(0.92)";
});
document.addEventListener("mouseup", () => {
    cursor.style.background = "radial-gradient(circle, rgba(255, 255, 255, 1) 0%, rgba(200, 200, 200, 0.8) 70%)";
    cursor.style.border = "3px solid white";
    cursor.style.boxShadow = "0px 6px 12px rgba(0, 0, 0, 0.15)";
    cursor.style.transform = "translate(-50%, -50%) scale(1)";
});

// Touch support (for mobile interactions)
document.addEventListener("touchstart", () => {
    cursor.style.background = "radial-gradient(circle, rgba(220, 220, 220, 1) 0%, rgba(150, 150, 150, 1) 70%)";
    cursor.style.border = "3px solid white";
    cursor.style.boxShadow = "0px 3px 8px rgba(0, 0, 0, 0.3)";
    cursor.style.transform = "translate(-50%, -50%) scale(0.92)";
});
document.addEventListener("touchend", () => {
    cursor.style.background = "radial-gradient(circle, rgba(255, 255, 255, 1) 0%, rgba(200, 200, 200, 0.8) 70%)";
    cursor.style.border = "3px solid white";
    cursor.style.boxShadow = "0px 6px 12px rgba(0, 0, 0, 0.15)";
    cursor.style.transform = "translate(-50%, -50%) scale(1)";
});
