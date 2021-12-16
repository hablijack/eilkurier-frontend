<template>
  <v-container fluid>
    <v-row class="ma-0" justify="center">
      <v-col cols="3" align="center">
        <h2>Wir haben die Lösung</h2>
        JETZT KOSTENLOS
        <a href="#" :v-if="!$auth.loggedIn" @click="$auth.loginWith('auth0')">
          Anmelden
        </a>
      </v-col>
    </v-row>
    <v-row class="ma-0" justify="center">
      <v-col cols="7">
        <v-carousel cycle light hide-delimiter-background>
          <v-carousel-item>
            <v-sheet height="100%" tile color="transparent">
              <v-row class="fill-height" align="center" justify="center">
                <div class="text-h2">Zeit sparen</div>
              </v-row>
            </v-sheet>
          </v-carousel-item>
          <v-carousel-item>
            <v-sheet height="100%" tile color="transparent">
              <v-row class="fill-height" align="center" justify="center">
                <div class="text-h2">Umwelt schützen</div>
                <img src="~/assets/img/world.png" />
              </v-row>
            </v-sheet>
          </v-carousel-item>
          <v-carousel-item>
            <v-sheet height="100%" tile color="transparent">
              <v-row class="fill-height" align="center" justify="center">
                <div class="text-h2">Nerven schonen</div>
              </v-row>
            </v-sheet>
          </v-carousel-item>
          <v-carousel-item>
            <v-sheet height="100%" tile color="transparent">
              <v-row class="fill-height" align="center" justify="center">
                <div class="text-h2">Immer topaktuell</div>
              </v-row>
            </v-sheet>
          </v-carousel-item>
          <v-carousel-item>
            <v-sheet height="100%" tile color="transparent">
              <v-row class="fill-height" align="center" justify="center">
                <div class="text-h2">Modernes Medium</div>
              </v-row>
            </v-sheet>
          </v-carousel-item>
        </v-carousel>
      </v-col>
    </v-row>
  </v-container>
</template>

<style lang="scss" scoped>
h2 {
  font-family: "Playfair Display", serif;
  color: black;
  text-transform: uppercase;
  font-weight: bold;
  text-align: center;
  margin-top: 0;
  font-size: 30px;
}

.v-application .text-h2 {
  font-family: "Playfair Display", serif !important;
  color: black;
  text-transform: uppercase;
  font-weight: bold;
  font-size: 24px !important;
}
</style>