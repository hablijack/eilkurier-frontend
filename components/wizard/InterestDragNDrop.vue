<template>
  <draggable
    v-model="myArray"
    group="people"
    @start="drag = true"
    @end="drag = false"
  >
    <div v-for="text in myArray" :key="text">{{ text }}</div>
  </draggable>
</template>

<script>
export default {
  data() {
    return {
      myArray: ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"],
    };
  },
};
</script>