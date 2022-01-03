<template>
  <v-stepper-content step="2">
    <v-card class="mb-12" height="200px"></v-card>
    <v-btn x-large color="secondary" @click="backClick"> zurück </v-btn>
    <v-btn x-large color="primary" @click="nextClick"> Weiter </v-btn>
  </v-stepper-content>
</template>


<script>
export default {
  methods: {
    nextClick() {
      this.$emit("input", 3);
    },
    backClick() {
      this.$emit("input", 1);
    },
  },
};
</script>
