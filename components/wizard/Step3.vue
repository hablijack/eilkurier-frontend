<template>
  <v-stepper-content step="3">
    <v-card class="mb-12" height="200px"></v-card>

    <v-btn color="primary" @click="save"> Weiter </v-btn>

    <v-btn text> Cancel </v-btn>
  </v-stepper-content>
</template>

<script>
export default {
  methods: {
    save() {
      alert("saved");
    },
  },
};
</script>
