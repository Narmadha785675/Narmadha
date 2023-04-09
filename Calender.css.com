* {
  box-sizing: border-box;
}

body {
  margin: 0;
  font-family: Arial, sans-serif;
}

header {
  background-color: #333;
  color: white;
}

nav {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 20px;
}

nav ul {
  list-style: none;
  margin: 0;
  padding: 0;
}

nav li {
  display: inline-block;
  margin-right: 20px;
}

nav li:last-child {
  margin-right: 0;
}

nav a {
  color: white;
  text-decoration: none;
  font-size: 18px;
}

main {
  max-width: 1200px;
  margin: auto;
  padding: 20px;
}

#calendar {
  background-color: white;
  border: 1px solid #ccc;
}

footer {
  background-color: #333;
  color: white;
  text-align: center;
  padding: 20px;
}

footer p {
  margin: 0;
}

@media (max-width: 768px) {
  nav {
    flex-direction: column;
    text-align: center;
  }
  
  nav li {
    display: block;
    margin-bottom: 10px;
  }
}