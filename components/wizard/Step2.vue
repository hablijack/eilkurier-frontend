<template>
  <v-stepper-content step="2">
    <v-card class="mb-12" height="200px"></v-card>

    <v-btn color="primary" @click="nextClick"> Weiter </v-btn>

    <v-btn text> Cancel </v-btn>
  </v-stepper-content>
</template>


<script>
export default {
  methods: {
    nextClick() {
      this.$emit("input", 3);
    },
  },
};
</script>
