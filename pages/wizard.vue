<template>
  <v-container fluid justify="center" align="center" class="ma-0 pa-0">
    <v-stepper v-model="currentStep">
      <v-stepper-header>
        <v-stepper-step :complete="currentStep > 1" step="1">
          Interessen
        </v-stepper-step>
        <v-divider />
        <v-stepper-step :complete="currentStep > 2" step="2">
          Quellen
        </v-stepper-step>
        <v-divider />
        <v-stepper-step :complete="currentStep > 3" step="3">
          Sortieren
        </v-stepper-step>
        <v-divider />
        <v-stepper-step :complete="currentStep > 4" step="4">
          Fertig
        </v-stepper-step>
      </v-stepper-header>

      <h1>
        Willkommen in deiner<br />
        Nachrichtenzentrale
      </h1>

      <v-stepper-items>
        <WizardStep1 v-model="currentStep" />

        <WizardStep2 v-model="currentStep" />

        <WizardStep3 v-model="currentStep" />
      </v-stepper-items>
    </v-stepper>
  </v-container>
</template>

<script>
export default {
  data() {
    return {
      currentStep: 1,
    };
  },
};
</script>

<style lang="scss" scoped>
.v-stepper__header {
  background-color: #f9f7f1;
}
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