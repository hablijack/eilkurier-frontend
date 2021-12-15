<template>
  <v-container align="center" justify="center">
    <v-row>
      <v-spacer />
      <h1>Dein persönlicher Eilkurier</h1>
      <v-spacer />
    </v-row>
    <v-row align="center">
      <v-spacer />
      <v-col cols="3" align="center">
        <img src="~/assets/img/newspaper.png" />
      </v-col>
      <v-col cols="5" class="welcome-text">
        <p>
          Kennst Du das? Du sitzt Sonntag Morgens am Frühstückstisch, schmökert
          in der Tageszeitung deiner Wahl und es findet sich partout nichts
          Interessantes. Vielleicht nimmt Dir auch die Qualität des
          Geschriebenen sofort die Lust am Weiterlesen.
        </p>
        <p>
          Wäre es nicht schön wenn ein Bote jeden Morgen genau die Informationen
          zusammentragen würde, die Dich interessieren und sie anschließend
          pünktlich und lesefertig bei Dir abliefert?
        </p>
        <p>
          Wir gehen sogar noch einen Schritt weiter: Wäre es nicht schön wenn
          diese News nicht an eine bestimmte Ausgabe gebunden sind, sondern
          immer topaktuell vorliegen?
        </p>
        <p>
          Der Eilkurier ist komplett kostenlos und wird es immer sein. Wenn Du
          nähres zu unserem Geschäftsmodell erfahren möchtest erhältst Du hier
          weiter informationen.
        </p>
      </v-col>
      <v-spacer />
    </v-row>
    <LoginForm />
    <InfoSlider />
  </v-container>
</template>

<style lang="scss" scoped>
h1 {
  font-family: "Playfair Display", serif;
  color: black;
  text-transform: uppercase;
  font-weight: bold;
  text-align: center;
  margin-top: 20px;
  margin-bottom: 10px;
  &:before {
    content: "";
    width: 650px;
    height: 7px;
    border-top: 2px solid black;
    display: block;
    margin: 0 auto;
  }
  &:after {
    content: "";
    width: 550px;
    height: 10px;
    border-bottom: 2px solid black;
    display: block;
    margin: 0 auto;
  }
}

.welcome-text {
  color: black;
  font-family: "Playfair Display", serif;
  text-align: justify;
}
</style>
