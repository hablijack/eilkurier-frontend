<template>
  <v-stepper-content step="2">
    <v-card flat>
      <v-container fluid>
        <v-row>
          <v-col>
            <h2 class="newspaper">
              Schritt 2: Woher kommen deine Nachrichten?
            </h2>
          </v-col>
        </v-row>
        <v-row>
          <v-col cols="12" lg="2" class="description">
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
          <v-col cols="12" lg="10">
            <v-container fluid>
              <v-row>
                <v-col cols="2" v-for="feed in feeds" :key="feed.id">
                  <v-card
                    height="300"
                    shaped
                    hover
                    color="#ebe5cc"
                    :class="feed.subscribed ? '' : 'inactive'"
                    @click="toggleFeedEvent(feed)"
                  >
                    <v-img
                      class="ml-8 mr-8"
                      :max-height="125"
                      :src="feed.picture"
                    ></v-img>
                    <v-card-title>{{ feed.name }}</v-card-title>
                    <v-card-text>{{ feed.description }}</v-card-text>
                    <v-card-actions>
                      <v-btn color="primary" text v-if="!feed.subscribed">
                        abonnieren
                      </v-btn>
                      <v-btn color="primary" text v-if="feed.subscribed">
                        entfernen
                      </v-btn>
                    </v-card-actions>
                  </v-card>
                </v-col>
              </v-row>
            </v-container>
          </v-col>
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

<style lang="scss">
.v-card.inactive {
  opacity: 0.6;
  background-color: white !important;
  transition: inherit;
}
.description {
  text-align: justify;
}
</style>

<script>
export default {
  props: {
    feeds: {
      type: Array,
      required: true,
    },
  },
  methods: {
    nextClick() {
      this.$emit("input", 3);
    },
    backClick() {
      this.$emit("input", 1);
    },
    log: function (evt) {
      //window.console.log(evt);
    },
    toggleFeedEvent(selectedFeed) {
      this.$emit("subscribed_to_feed_event", selectedFeed);
    },
  },
  data() {
    return {
      hasErrors: false,
    };
  },
};
</script>

