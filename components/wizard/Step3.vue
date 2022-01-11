<template>
  <v-stepper-content step="3">
    <v-card flat>
      <v-container fluid>
        <v-row>
          <v-col>
            <h2 class="newspaper">Schritt 3: Welche Quelle ist Dir wichtig?</h2>
          </v-col>
        </v-row>
        <v-row>
          <v-col cols="12" lg="2" class="description">
            <h3>SORTIERUNG</h3>
            Wovon möchtest Du am Meissten informiert werden? Welche
            Nachrichtenquelle ist Dir am wichtigsten? Hier kannst Du entscheiden
            und sortieren, welche Info als riesen Schlagzeile oder nur als
            kleine Kolumne auftaucht. Schiebe dazu einfach die
            Nachrichtenquellen nach oben, die Dir wichtiger sind und erstelle so
            eine Reihenfolge.
            <v-alert
              class="mt-8"
              border="top"
              colored-border
              type="info"
              elevation="2"
            >
              Denke daran: Du kannst deine Sortierung später jederzeit ändern,
              deine Entscheidungen sind nicht endgültig.
            </v-alert>
          </v-col>
          <v-col cols="12" lg="10">
            <v-card>
              <v-list>
                <v-subheader>Deine Gewichtung:</v-subheader>
                <draggable
                  v-bind="feeds"
                  :list="feeds"
                  style="min-height: 600px"
                  @change="log"
                >
                  <v-list-item v-for="(feed, j) in feeds" :key="j">
                    <v-list-item-avatar>
                      <v-img :src="feed.picture"></v-img>
                    </v-list-item-avatar>
                    <v-list-item-content>
                      <v-list-item-title v-text="feed.name"></v-list-item-title>
                      <v-list-item-subtitle
                        v-text="feed.description"
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
        <v-btn x-large color="secondary" @click="backClick"> zurück </v-btn>
        <v-btn x-large color="primary" @click="save"> speichern </v-btn>
      </v-col>
    </v-row>
  </v-stepper-content>
</template>

<script>
export default {
  props: {
    feeds: {
      type: Array,
      required: true,
    },
  },
  methods: {
    save() {
      alert("saved");
    },
    backClick() {
      this.$emit("input", 2);
    },
    log: function (evt) {
      window.console.log(evt);
    },
  },
};
</script>
