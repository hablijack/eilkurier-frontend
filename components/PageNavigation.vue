<template>
  <v-app-bar app color="#6B2F1B" dark flat absolute :height="120" class="ma-0">
    <v-container fluid class="pa-0">
      <v-row class="ma-0">
        <v-col cols="5" class="pa-0">
          <v-toolbar-items>
            <v-tabs>
              <v-tab>Start</v-tab>
              <v-tab>Features</v-tab>
              <v-tab>Kontakt</v-tab>
            </v-tabs>
          </v-toolbar-items>
        </v-col>
        <v-col cols="2" align="center" class="pa-0">
          <v-toolbar-title class="logo">
            <img src="~/assets/img/logo_header.png" height="49" />
            <h1>Eilkurier</h1>
            <v-spacer />
          </v-toolbar-title>
        </v-col>
        <v-spacer />
      </v-row>
      <v-row class="banner" align="center" justify="center">
        <h2>Nachrichten wie Sie sein sollten</h2>
      </v-row>
    </v-container>
  </v-app-bar>
</template>

<style lang="scss" scoped>
.banner {
  background-color: white;
  border-bottom: 2px solid #6b2f1b;
  h2 {
    font-family: "Playfair Display", serif;
    font-size: 15px;
    color: #6b2f1b;
    font-weight: bold;
    text-transform: uppercase;
    line-height: 30px;
  }
}

.logo h1 {
  font-family: "Brawler", serif;
  font-weight: bold;
  display: inline-block;
}
</style>