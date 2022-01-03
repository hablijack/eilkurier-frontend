<template>
  <div>
    <v-snackbar
      v-for="(snackbar, index) in alerts"
      :key="index"
      :v-model="snackbar"
      style="z-index: 10"
      :timeout="-1"
      :value="snackbar.show"
      elvation="10"
      color="red"
      absolute
      right
      top
    >
      <v-icon color="white">mdi-alert-circle</v-icon>
      <strong class="mr-4">{{ snackbar.message }}</strong>
      <v-dialog v-model="dialog" width="500">
        <template #activator="{ on, attrs }">
          <v-btn small color="white" outlined dark v-bind="attrs" v-on="on">
            Details
          </v-btn>
        </template>
        <v-card>
          <v-card-title class="headline grey lighten-2">
            Es ist ein Fehler aufgetreten
          </v-card-title>
          <v-card-text>
            {{ snackbar.details }}
          </v-card-text>
          <v-divider></v-divider>
          <v-card-actions>
            <v-spacer></v-spacer>
            <v-btn small dark @click="dialog = false">
              <v-icon light>mdi-close</v-icon>
              Schließen
            </v-btn>
          </v-card-actions>
        </v-card>
      </v-dialog>
      <v-btn
        small
        color="white"
        dark
        outlined
        @click="$store.commit('alerts/REMOVE_ALERT', snackbar)"
      >
        <v-icon light>mdi-close</v-icon>
      </v-btn>
    </v-snackbar>
  </div>
</template>

<script lang="js">
export default {
  name: 'AlertSnackbars',
  data() {
    return {
      alerts: [],
      dialog: false,
    }
  },
  watch: {
    '$store.state.alerts.list'() {
      this.alerts = this.$store.state.alerts.list;
    },
  },
}
</script>
