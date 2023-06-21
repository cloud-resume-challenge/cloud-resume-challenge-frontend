window.onload = async function() {
    // Get cached count and display it
    var cachedCount = localStorage.getItem('viewCount');
    if (cachedCount) {
        document.getElementById('viewCount').textContent = "Total page views " + cachedCount;
    }

    // Delay the update function until after onload has completed
    setTimeout(updateCount, 0);
}

async function updateCount() {
    try {
        let response = await fetch('https://34.36.31.130.nip.io/backend-counter-api/update-counter', { method: 'POST' });
        let data = await response.json();
        document.getElementById('viewCount').textContent = "Total page views " + data.count;
        localStorage.setItem('viewCount', data.count);
    } catch (error) {
        console.error('Error:', error);
    }
}
