<template>
  <nav>
    <v-app-bar
      app
      fixed
      class="grey lighten-4">
      <v-toolbar-title
        class="text-uppercase">
        <span class="font-weight-light">Sampleproject</span>
      </v-toolbar-title>
      <v-spacer></v-spacer>
      <v-btn
        @click="$router.push('/session/signup').catch(err => {})"
        v-if="!isUserLoggedIn"
        depressed
        class="pa-3">
        Sign Up
        <v-icon right>person_add</v-icon> 
      </v-btn>
      <v-divider
        v-if="!isUserLoggedIn"
        class="mx-4"
        vertical>
      </v-divider>
      <v-btn
        @click="$router.push('/session/login').catch(err => {})"
        v-if="!isUserLoggedIn"
        depressed
        class="pa-3">
        Login
        <v-icon right>exit_to_app</v-icon> 
      </v-btn>
      <v-divider
        v-if="!isUserLoggedIn"
        class="mx-4"
        vertical>
      </v-divider>
      Version: {{version}}
    </v-app-bar>
    <Navbar v-if="!$route.meta.hideNavigation" />
  </nav>
</template>

<script>
import Navbar from '../Navbar'

export default {
  name: 'Header',
  components: {
    Navbar
  },
  mounted() {
    if(localStorage.getItem('user')){
      this.isUserLoggedIn = true
    } else {
      this.isUserLoggedIn = false
    }
  },
  data() {
    return {
      version: '1.0.0',
      isUserLoggedIn: false,
    }
  },
}

</script>