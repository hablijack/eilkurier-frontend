<template>
  <span>
    <v-avatar>
      <img :src="this.$auth.user.picture" />
    </v-avatar>
    {{ this.$auth.user.nickname }}
  </span>
</template>
