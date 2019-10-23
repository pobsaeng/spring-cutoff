<template>
  <div id="app">
    <div class="topnav">
      <!--<a class="active" href="#home">Home</a>-->
      <router-link class="active" to="home">Home</router-link>
      <a href="#news">User</a>
      <a href="#contact">Profile</a>
      <a href="#about">About</a>
    </div>
    <router-view/>
  </div>
</template>

<script>
export default {
  name: 'App'
}
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}

.topnav {
  background-color: #333;
  overflow: hidden;
}


/* Style the links inside the navigation bar */

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}


/* Change the color of links on hover */

.topnav a:hover {
  background-color: #ddd;
  color: black;
}


/* Add a color to the active/current link */

.topnav a.active {
  background-color: #4CAF50;
  color: white;
}
</style>
