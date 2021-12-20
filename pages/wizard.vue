<template>
  <v-container fluid justify="center" align="center" class="ma-0 pa-0">
    <v-stepper v-model="e1">
      <v-stepper-header>
        <v-stepper-step :complete="e1 > 1" step="1">
          Interessen
        </v-stepper-step>
        <v-divider />
        <v-stepper-step :complete="e1 > 2" step="2"> Quellen </v-stepper-step>
        <v-divider />
        <v-stepper-step :complete="e1 > 3" step="3"> Sortieren </v-stepper-step>
        <v-divider />
        <v-stepper-step :complete="e1 > 4" step="4"> Fertig </v-stepper-step>
      </v-stepper-header>

      <h1>
        Willkommen in deiner<br />
        Nachrichtenzentrale
      </h1>

      <v-stepper-items>
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
                  Als Erstes solltest Du dir überlegen, welche Art von
                  Nachrichten Dich interessieren. Du kannst hier schon mal eine
                  Art Vorauswahl der Themen treffen, über die Du auf dem
                  Laufenden gehalten werden möchtest. Ziehe dazu einfach mit der
                  Maus deine Interessen von rechts nach links.
                  <v-alert
                    border="top"
                    colored-border
                    type="info"
                    elevation="2"
                  >
                    Tipp: Du kannst deine Auswahl später jederzeit anpassen und
                    langweilige Themen wieder entfernen.
                  </v-alert>
                </v-col>
                <v-col cols="8">
                  <WizardInterestDragNDrop />
                </v-col>
              </v-row>
            </v-container>
          </v-card>

          <v-btn color="primary" @click="e1 = 2"> weiter </v-btn>
          <v-btn text> Cancel </v-btn>
        </v-stepper-content>

        <v-stepper-content step="2">
          <v-card class="mb-12" height="200px"></v-card>

          <v-btn color="primary" @click="e1 = 3"> Weiter </v-btn>

          <v-btn text> Cancel </v-btn>
        </v-stepper-content>

        <v-stepper-content step="3">
          <v-card class="mb-12" height="200px"></v-card>

          <v-btn color="primary" @click="e1 = 1"> Weiter </v-btn>

          <v-btn text> Cancel </v-btn>
        </v-stepper-content>
      </v-stepper-items>
    </v-stepper>
  </v-container>
</template>


<script>
export default {
  data() {
    return {
      e1: 1,
    };
  },
};
</script>

<style lang="scss" scoped>
h1 {
  font-family: "Playfair Display", serif;
  color: black;
  text-transform: uppercase;
  font-weight: bold;
  text-align: center;
  margin-top: 20px;
  margin-bottom: 10px;
}

h2 {
  text-align: center;
  font-family: "Brawler", serif;
  font-weight: normal;
  &:before {
    content: "";
    width: 450px;
    height: 7px;
    border-top: 2px solid black;
    display: block;
    margin: 0 auto;
  }
  &:after {
    content: "";
    width: 350px;
    height: 10px;
    border-bottom: 2px solid black;
    display: block;
    margin: 0 auto;
  }
}
</style>