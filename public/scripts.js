
async function fetchPosts() {
    try {
        const response = await fetch('https://jsonplaceholder.typicode.com/posts');
        const data = await response.json();
        console.log('API Response:', data);
        return data;
    } catch (error) {
        console.error('Error fetching data:', error);
        return [];
    }
}
class Post {
    constructor(userId, title, body) {
        this.userId = userId;
        this.title = title;
        this.body = body;
        this.name = this.getNameById(userId);
    }

    getNameById(userId) {
        const names = {
            1: "Athota Srilatha",
            2: "Bandaru Sampath Kumar",
            3: "Gollakaram Ganga Bhavani",
            4: "Gowtham Meka",
            5: "Mayuraj Ranawat",
            6: "Narendiran K",
            7: "Pratham Madhunapanthula",
            8: "Riya Reddy",
            9: "Shaik Sameer",
            10: "Suriyan K",
            11: "Vaishnavi Panta",
            12: "Yateesh Tangudu"
        };

        return names[userId] || 'Unknown';
    }
}
function renderPosts(posts) {
    const tbody = document.querySelector('#table tbody');
    tbody.innerHTML = '';

    posts.forEach(post => {
        const row = document.createElement('tr');
        row.innerHTML = `
            <td>${post.name}</td>
            <td>${post.title}</td>
            <td>${post.body}</td>
        `;
        tbody.appendChild(row);
    });
}

async function init() {
    let posts = await fetchPosts();
    posts = posts.map(post => new Post(post.userId, post.title, post.body));

    renderPosts(posts);
    const updateDataBtn = document.getElementById('updateDataBtn');
    updateDataBtn.addEventListener('click', async () => {
        posts = await fetchPosts();
        posts = posts.map(post => new Post(post.userId, post.title, post.body));
        renderPosts(posts);
    });
}
init();

