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
          <v-col cols="4" class="description">
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
          <v-spacer />
          <v-col cols="4">
            <v-card>
              <v-list>
                <v-subheader>Was interessiert Dich?</v-subheader>
                <draggable
                  v-model="items"
                  :options="{ group: 'people' }"
                  style="min-height: 10px"
                  @change="log"
                >
                  <v-list-item v-for="(item, i) in list2" :key="i">
                    <v-list-item-icon>
                      <v-icon>mdi-apps</v-icon>
                    </v-list-item-icon>
                    <v-list-item-content>
                      <v-list-item-title
                        v-text="item.title"
                      ></v-list-item-title>
                      <v-list-item-subtitle
                        v-text="item.title"
                      ></v-list-item-subtitle>
                    </v-list-item-content>
                  </v-list-item>
                </draggable>
              </v-list>
            </v-card>
          </v-col>

          <v-col cols="4">
            <v-card>
              <v-list>
                <v-subheader>Unsere Kategorien:</v-subheader>
                <draggable
                  v-model="items"
                  :options="{ group: 'people' }"
                  style="min-height: 10px"
                  @change="log"
                >
                  <v-list-item v-for="(item, i) in list2" :key="i">
                    <v-list-item-icon>
                      <v-icon>mdi-apps</v-icon>
                    </v-list-item-icon>
                    <v-list-item-content>
                      <v-list-item-title
                        v-text="item.title"
                      ></v-list-item-title>
                      <v-list-item-subtitle
                        v-text="item.title"
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

<style lang="scss" scoped>
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
      this.$emit("input", 2);
    },
  },
  data() {
    return {
      list1: [
        {
          id: 1,
          avatar: "https://s3.amazonaws.com/vuetify-docs/images/lists/1.jpg",
          title: "Brunch this life?",
          subtitle: "Subtitle 1",
        },
      ],
      list2: [
        {
          id: 1,
          avatar: "https://s3.amazonaws.com/vuetify-docs/images/lists/1.jpg",
          title: "Brunch this life?",
          subtitle: "Subtitle 1",
        },
        {
          id: 2,
          avatar: "https://s3.amazonaws.com/vuetify-docs/images/lists/2.jpg",
          title: "Winter Lunch",
          subtitle: "Subtitle 2",
        },
        {
          id: 3,
          avatar: "https://s3.amazonaws.com/vuetify-docs/images/lists/3.jpg",
          title: "Oui oui",
          subtitle: "Subtitle 3",
        },
      ],
    };
  },
  methods: {
    nextClick: function () {
      this.$emit("input", 2);
    },
    log: function (evt) {
      window.console.log(evt);
    },
  },
};
</script>
