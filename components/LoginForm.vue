<template>
  <v-container>
    <v-form>
      <v-row class="ma-0" justify="center">
        <v-spacer />
        <v-col class="loginform label" cols="3">
          {{ this.$auth.loggedIn ? "Logout" : "Login" }}
        </v-col>
        <v-col
          justify="center"
          align="center"
          class="loginform btn"
          cols="5"
          v-if="!this.$auth.loggedIn"
        >
          <v-btn
            dark
            depressed
            x-large
            color="#6b2f1b"
            @click="$auth.loginWith('auth0')"
          >
            Jetzt Anmelden
          </v-btn>
        </v-col>
        <v-col
          class="loginform btn"
          cols="5"
          v-if="this.$auth.loggedIn"
          justify="center"
          align="center"
        >
          <v-btn
            dark
            depressed
            x-large
            outlined
            color="#6b2f1b"
            @click="$auth.logout()"
          >
            Jetzt Abmelden
          </v-btn>
        </v-col>
        <v-spacer />
      </v-row>
    </v-form>
  </v-container>
</template>

<style lang="scss" scoped>
.loginform {
  background-color: white;
  border: 2px solid #6b2f1b;
  height: 99px;
  margin-top: 40px;
  margin-bottom: 40px;
}

.label {
  background-color: #6b2f1b;
  color: white;
  font-size: 38px;
  font-family: "Brawler", serif;
}

button {
  font-weight: bold;
}
</style>