<template>
  <div class="hello">
    <h1>{{ message }}</h1>
    <ul>
      <li>
        <a
          href="https://github.com/endormi/k8s-docker"
          target="_blank"
        >
          GitHub Project
        </a>
      </li>
    </ul>
  </div>
</template>

<script>
export default {
  name: 'mess',
  data() {
    return {
      message: 'k8s-docker',
    };
  },
};
</script>

<style scoped>
h1, h2 {
  font-weight: normal;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}
</style>
