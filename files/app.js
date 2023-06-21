window.onload = function() {
    var cachedCount = localStorage.getItem('viewCount');
    if (cachedCount) {
        document.getElementById('viewCount').textContent = "Total page views " + cachedCount;
    }

    fetch('https://34.36.31.130.nip.io/backend-counter-api/update-counter', { method: 'POST' })
        .then(response => response.json())
        .then(data => {
            document.getElementById('viewCount').textContent = "Total page views " + data.count;
            localStorage.setItem('viewCount', data.count);
        })
        .catch(error => {
            console.error('Error:', error);
        });
}