<template>
  <v-stepper-content step="1">
    <v-card flat>
      <v-container fluid>
        <v-row>
          <v-col>
            <h2>Schritt 1: Deine Interessen</h2>
          </v-col>
        </v-row>
        <v-row>
          <v-col cols="4">
            <h3>Erklärung</h3>
            Als Erstes solltest Du dir überlegen, welche Art von Nachrichten
            Dich interessieren. Du kannst hier schon mal eine Art Vorauswahl der
            Themen treffen, über die Du auf dem Laufenden gehalten werden
            möchtest. Ziehe dazu einfach mit der Maus deine Interessen von
            rechts nach links.
            <v-alert border="top" colored-border type="info" elevation="2">
              Tipp: Du kannst deine Auswahl später jederzeit anpassen und
              langweilige Themen wieder entfernen.
            </v-alert>
          </v-col>
          <v-col cols="8">
            <draggable
              v-model="myArray"
              group="people"
              @start="drag = true"
              @end="drag = false"
            >
              <div v-for="text in myArray" :key="text">{{ text }}</div>
            </draggable>
          </v-col>
        </v-row>
      </v-container>
    </v-card>

    <v-btn color="primary" @click="nextClick"> weiter </v-btn>
    <v-btn text> Cancel </v-btn>
  </v-stepper-content>
</template>

<script>
export default {
  methods: {
    nextClick() {
      this.$emit("input", 2);
    },
  },
  data() {
    return {
      myArray: ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"],
    };
  },
};
</script>
