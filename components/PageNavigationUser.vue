<template>
  <span>
    <v-avatar>
      <img :src="this.$auth.user.picture" />
    </v-avatar>
    {{ this.$auth.user.nickname }} {{ this.$auth.user.id }}
  </span>
</template>
