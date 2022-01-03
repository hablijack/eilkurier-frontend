<template>
  <v-stepper-content step="3">
    <v-card class="mb-12" height="200px"></v-card>
    <v-btn x-large color="secondary" @click="backClick"> zurück </v-btn>
    <v-btn color="primary" @click="save"> Speichern </v-btn>
  </v-stepper-content>
</template>

<script>
export default {
  methods: {
    save() {
      alert("saved");
    },
    backClick() {
      this.$emit("input", 2);
    },
  },
};
</script>
