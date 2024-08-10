/* Basic Reset */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Arial', sans-serif;
    line-height: 1.6;
}

.container {
    width: 90%;
    margin: 0 auto;
    max-width: 1200px;
}

header {
    background: #333;
    color: #fff;
    padding: 1rem 0;
}

header .logo {
    display: inline-block;
}

header nav {
    display: inline-block;
    float: right;
}

header nav ul {
    list-style: none;
}

header nav ul li {
    display: inline;
    margin-left: 20px;
}

header nav ul li a {
    color: #fff;
    text-decoration: none;
    font-weight: bold;
}

section {
    padding: 2rem 0;
    text-align: center;
}

section h2 {
    margin-bottom: 1rem;
}

.service-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
    gap: 1rem;
}

.service-card {
    background: #f4f4f4;
    padding: 1rem;
    border-radius: 5px;
    text-align: center;
}

footer {
    background: #333;
    color: #fff;
    text-align: center;
    padding: 1rem 0;
    margin-top: 2rem;
}

/* Responsive Styles */
@media (max-width: 768px) {
    header nav {
        float: none;
        text-align: center;
        margin-top: 1rem;
    }

    header nav ul {
        padding: 0;
    }

    header nav ul li {
        display: block;
        margin: 10px 0;
    }
}
