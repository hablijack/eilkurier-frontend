<template>
  <v-footer app dark color="#6b2f1b">
    <v-container fluid class="pa-0">
      <v-row class="ma-0" align="center">
        <v-col cols="1" class="pa-0" align="center" justify="center">
          <h1>Eilkurier</h1>
        </v-col>
        <v-spacer />
        <v-col cols="2" align="center">
          <img src="~/assets/img/logo_white.png" width="110" />
        </v-col>
        <v-spacer />
      </v-row>
      <v-row class="ma-0">
        <v-col cols="1" class="pa-0">
          <span>&copy; {{ new Date().getFullYear() }}</span>
        </v-col>
        <v-col align="center">
          <h2>Nachrichten wie Sie sein sollten</h2>
        </v-col>
      </v-row>
    </v-container>
  </v-footer>
</template>

<style lang="scss" scoped>
h1 {
  font-family: "Brawler", serif;
  font-weight: bold;
  text-transform: uppercase;
  &:before {
    content: "";
    width: 200px;
    height: 7px;
    border-top: 2px solid white;
    display: block;
    margin: 0 auto;
  }
  &:after {
    content: "";
    width: 100px;
    height: 10px;
    border-bottom: 2px solid white;
    display: block;
    margin: 0 auto;
  }
}

h2 {
  font-family: "Playfair Display", serif;
  font-size: 18px;
  color: white;
  font-weight: bold;
  text-transform: uppercase;
  display: block;
}
</style>