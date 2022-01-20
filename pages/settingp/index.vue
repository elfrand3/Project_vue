<template>
  <div id="wrapper">
    <app-s></app-s>
    	<div id="content-wrapper" class="d-flex flex-column">
			    <div id="content">
            <app-h></app-h>
            <Form />
          </div>
      </div>
  </div>
</template>

<script>
import Sidebar from '@/components/layouts/Sidebar.vue'
import  Header from '@/components/layouts/Header.vue'
export default {
  components:{
    'app-s': Sidebar,
    'app-h': Header
  }
}
</script>

