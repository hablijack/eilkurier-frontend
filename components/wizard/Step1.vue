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
          <v-col cols="3">
            <h3>Draggable 1</h3>
            <draggable
              class="list-group"
              :list="list1"
              group="people"
              @change="log"
            >
              <transition-group type="transition" name="flip-list">
                <li
                  class="list-group-item"
                  v-for="element in list1"
                  :key="element.order"
                >
                  <i
                    :class="
                      element.fixed
                        ? 'fa fa-anchor'
                        : 'glyphicon glyphicon-pushpin'
                    "
                    @click="element.fixed = !element.fixed"
                    aria-hidden="true"
                  ></i>
                  {{ element.name }}
                </li>
              </transition-group>
            </draggable>
          </v-col>

          <v-col cols="3">
            <h3>Draggable 2</h3>
            <draggable
              class="list-group"
              :list="list2"
              group="people"
              @change="log"
            >
              <transition-group type="transition" name="flip-list">
                <li
                  class="list-group-item"
                  v-for="element in list2"
                  :key="element.order"
                >
                  <i
                    :class="
                      element.fixed
                        ? 'fa fa-anchor'
                        : 'glyphicon glyphicon-pushpin'
                    "
                    @click="element.fixed = !element.fixed"
                    aria-hidden="true"
                  ></i>
                  {{ element.name }}
                </li>
              </transition-group>
            </draggable>
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
const message = [
  "vue.draggable",
  "draggable",
  "component",
  "for",
  "vue.js 2.0",
  "based",
  "on",
  "Sortablejs",
];
export default {
  methods: {
    nextClick() {
      this.$emit("input", 2);
    },
  },
  data() {
    return {
      list1: message.map((name, index) => {
        return { name, order: index + 1 };
      }),
      list2: message.map((name, index) => {
        return { name, order: index + 1 };
      }),
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
