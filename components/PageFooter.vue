<template>
  <v-footer app dark color="#6b2f1b">
    <v-container fluid class="pa-0">
      <v-row class="ma-0" align="center" justify="center">
        <v-col cols="5" class="pa-0">
          <h1>Eilkurier</h1>
        </v-col>
        <v-col cols="2" align="center" justify="center">
          <img src="~/assets/img/logo_white.png" width="110" />
        </v-col>
        <v-spacer />
      </v-row>
      <v-row class="ma-0" align="center" justify="center">
        <h2>Nachrichten wie Sie sein sollten</h2>
      </v-row>
      <span>&copy; {{ new Date().getFullYear() }}</span>
    </v-container>
  </v-footer>
</template>

<style lang="scss" scoped>
h1 {
  font-family: "Brawler", serif;
  font-weight: bold;
  text-transform: uppercase;
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