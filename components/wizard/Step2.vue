<template>
  <v-stepper-content step="2">
    <v-card flat>
      <v-container fluid>
        <v-row>
          <v-col>
            <h2>Schritt 2: Woher kommen deine Nachrichten?</h2>
          </v-col>
        </v-row>
        <v-row>
          <v-col cols="4" class="description">
            <h3>RSS-FEEDS</h3>
            Als nächstes brauchen wir Quellen für deine Nachrichten. Wir
            verwenden hier RSS. Der Eilkurier holt regelmäßig Neuigkeiten von
            verschiedenen Quellen ab und speichert Sie in deiner
            Nachrichtenzentrale. Du musst dazu nur eine Auswahl treffen und die
            Nachrichtenquellen "abonnieren" die Dich interessieren. Klicke dazu
            auf den Button der jeweiligen Quelle.
            <v-alert
              class="mt-8"
              border="top"
              colored-border
              type="info"
              elevation="2"
            >
              Denke daran: Du kannst deine Quellen später jederzeit erweitern
              und ändern, deine Entscheidungen sind nicht endgültig.
            </v-alert>
          </v-col>
          <v-spacer />
        </v-row>
      </v-container>
    </v-card>
    <v-row>
      <v-spacer />
      <v-col cols="1">
        <v-btn x-large color="secondary" @click="backClick"> zurück </v-btn>
        <v-btn x-large color="primary" @click="nextClick"> Weiter </v-btn>
      </v-col>
    </v-row>
  </v-stepper-content>
</template>

<style lang="scss" scoped>
.description {
  text-align: justify;
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
