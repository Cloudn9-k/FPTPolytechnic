<script setup>
import ClassBindingArray from './components/ClassBindingArray.vue';
import ClassBindingObject from './components/ClassBindingObject.vue';
import HelloWorld from './components/HelloWorld.vue'
import StyleBindingArray from './components/StyleBindingArray.vue';
import StyleBindingObject from './components/StyleBindingObject.vue';
</script>

<template>
  <HelloWorld msg="Vite + Vue" />

  <ClassBindingObject></ClassBindingObject>
  <ClassBindingArray></ClassBindingArray>
  <StyleBindingObject></StyleBindingObject>
  <StyleBindingArray></StyleBindingArray>
</template>
