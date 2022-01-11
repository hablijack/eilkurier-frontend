<template>
  <v-stepper-content step="1">
    <v-card flat>
      <v-container fluid>
        <v-row>
          <v-col>
            <h2 class="newspaper">Schritt 1: Deine Interessen</h2>
          </v-col>
        </v-row>
        <v-row>
          <v-col cols="12" lg="2" class="description">
            <h3>Erklärung</h3>
            Als Erstes solltest Du dir überlegen, welche Art von Nachrichten
            Dich interessieren. Du kannst hier schon mal eine Art Vorauswahl der
            Themen treffen, über die Du auf dem Laufenden gehalten werden
            möchtest. Ziehe dazu einfach mit der Maus deine Interessen von
            rechts nach links.
            <v-alert
              class="mt-8"
              border="top"
              colored-border
              type="info"
              elevation="2"
            >
              Tipp: Du kannst deine Auswahl später jederzeit anpassen und
              langweilige Themen wieder entfernen.
            </v-alert>
          </v-col>
          <v-col cols="6" lg="5">
            <v-card>
              <v-list>
                <v-subheader>Was interessiert Dich?</v-subheader>
                <draggable
                  :list="categories.choosen"
                  group="categories"
                  style="min-height: 600px"
                  @change="log"
                >
                  <v-list-item
                    v-for="(category, i) in categories.choosen"
                    :key="i"
                  >
                    <v-list-item-icon>
                      <v-icon>mdi-apps</v-icon>
                    </v-list-item-icon>
                    <v-list-item-content>
                      <v-list-item-title
                        v-text="category.name"
                      ></v-list-item-title>
                      <v-list-item-subtitle
                        v-text="category.description"
                      ></v-list-item-subtitle>
                    </v-list-item-content>
                  </v-list-item>
                </draggable>
              </v-list>
            </v-card>
          </v-col>

          <v-col cols="6" lg="5">
            <v-card>
              <v-list>
                <v-subheader>Unsere Kategorien:</v-subheader>
                <draggable
                  :list="categories.remote"
                  group="categories"
                  style="min-height: 600px"
                  @change="log"
                >
                  <v-list-item
                    v-for="(category, i) in categories.remote"
                    :key="i"
                  >
                    <v-list-item-icon>
                      <v-icon>mdi-apps</v-icon>
                    </v-list-item-icon>
                    <v-list-item-content>
                      <v-list-item-title
                        v-text="category.name"
                      ></v-list-item-title>
                      <v-list-item-subtitle
                        v-text="category.description"
                      ></v-list-item-subtitle>
                    </v-list-item-content>
                  </v-list-item>
                </draggable>
              </v-list>
            </v-card>
          </v-col>
        </v-row>
      </v-container>
    </v-card>
    <v-row>
      <v-spacer />
      <v-col cols="1">
        <v-btn x-large color="primary" @click="nextClick"> weiter </v-btn>
      </v-col>
    </v-row>
  </v-stepper-content>
</template>

<style lang="scss">
.flip-list-move {
  transition: transform 0.5s;
}
.no-move {
  transition: transform 0s;
}
.ghost {
  opacity: 0.5;
  background: #c8ebfb;
}
.v-list-item {
  cursor: pointer;
}
.list-group {
  min-height: 20px;
}
.list-group-item {
  cursor: move;
}
.list-group-item i {
  cursor: pointer;
}

.description {
  text-align: justify;
}
</style>

<script>
export default {
  methods: {
    nextClick() {
      this.$emit("input", 2);
    },
  },
  data() {
    return {
      categories: {
        choosen: [],
        remote: [],
      },
      hasErrors: false,
    };
  },
  mounted() {
    const url = `${this.$config.backendUrl}/categories`;
    this.$axios
      .get(url)
      .then((response) => (this.categories.remote = response.data))
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
  methods: {
    nextClick: function () {
      this.$emit("category_choosen_event", this.categories.choosen);
      this.$emit("input", 2);
    },
    log: function (evt) {
      //window.console.log(evt);
    },
  },
};
</script>
