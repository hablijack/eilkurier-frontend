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

      <h1 class="newspaper">
        Willkommen in deiner<br />
        Nachrichtenzentrale
      </h1>

      <v-stepper-items>
        <WizardStep1
          v-model="currentStep"
          @category_choosen_event="categoryChoosenEvent"
        />

        <WizardStep2
          v-model="currentStep"
          :feeds="feeds"
          @subscribed_to_feed_event="subscribedToFeedEvent"
        />

        <WizardStep3
          v-model="currentStep"
          v-bind="selectedFeeds"
          :feeds="selectedFeeds"
        />
      </v-stepper-items>
    </v-stepper>
  </v-container>
</template>

<script>
export default {
  data() {
    return {
      feeds: [],
      selectedFeeds: [],
      currentStep: 1,
    };
  },
  methods: {
    subscribedToFeedEvent(selectedFeed) {
      for (let index = 0; index < this.feeds.length; ++index) {
        if (this.feeds[index].id == selectedFeed.id) {
          this.feeds[index].subscribed = !this.feeds[index].subscribed;
          break;
        }
      }
      this.selectedFeeds = [];
      for (let i = 0; i < this.feeds.length; ++i) {
        if (this.feeds[i].subscribed) {
          this.selectedFeeds.push(this.feeds[i]);
        }
      }
    },
    categoryChoosenEvent(selectedCategories) {
      let idParamString = [];
      for (var i = 0; i < selectedCategories.length; ++i) {
        idParamString.push(selectedCategories[i]["id"]);
      }
      idParamString = idParamString
        .map((n, index) => `categoryId=${n}`)
        .join("&");
      this.$axios
        .get(`${this.$config.backendUrl}/categories/feeds?${idParamString}`)
        .then((response) => {
          const allFeeds = [];
          for (let i = 0; i < response.data.length; i++) {
            let feed = response.data[i];
            feed.subscribed = false;
            allFeeds.push(feed);
          }
          this.feeds = allFeeds;
        })
        .catch((error) => {
          this.hasErrors = true;
          const alert = {
            message: "Fehler beim Laden der Kategorien!",
            details: `Beim Aufruf von ${url} ist folgendes Problem aufgetreten: ${error.message}`,
            show: true,
          };
          this.$store.commit("alerts/ADD_ALERT", alert);
        });
    },
  },
};
</script>

<style lang="scss">
.v-stepper__header {
  background-color: #f9f7f1;
}
h1.newspaper {
  font-family: "Playfair Display", serif;
  color: black;
  text-transform: uppercase;
  font-weight: bold;
  text-align: center;
  margin-top: 20px;
  margin-bottom: 10px;
}

h2.newspaper {
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