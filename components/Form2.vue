<template>
  <div class="container-fluid">
    <b-table striped hover :items="items"></b-table>
  </div>
</template>

<script>
  export default {
    data() {
      return {
        items: [
          { id: 40, nama_wali: 'Dickerson', nama_santri: 'Macdonald', siff_sambang: 'siang', tanggal_sambang: 'Monday, November 14, 2021'},
          { id: 21, nama_wali: 'Larsen', nama_santri: 'Shaw', siff_sambang: 'pagi', tanggal_sambang: 'Tuesday, Desember 23, 2021' },
          { id: 89, nama_wali: 'Geneva', nama_santri: 'Wilson', siff_sambang: 'siang', tanggal_sambang: 'Friday, November 6, 2021' },
          { id: 38, nama_wali: 'Jami', nama_santri: 'Carney', siff_sambang: 'pagi', tanggal_sambang: 'Monday, Oktober 4, 2021' }
        ]
      }
    }
  }
</script>