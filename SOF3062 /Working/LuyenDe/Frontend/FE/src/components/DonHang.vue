<template>
<table class="table">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Ma don hang</th>
      <th scope="col">Ngay dat</th>
      <th scope="col">Tong tien</th>
      <th scope="col">Ten khach hang</th>
      <th scope="col">Dia chi</th>
    </tr>
  </thead>
  <tbody>
    <tr v-for="donHang in listDonHang" :key="donHang.id">
        <td> {{ donHang.id }}</td>
        <td> {{ donHang.donHangId }}</td>
        <td> {{ donHang.ngayDat }}</td>
        <td> {{ donHang.tongTien }}</td>
        <td> {{ donHang.tenKhachHang }}</td>
        <td> {{ donHang.diaChiGiao }}</td>
    </tr>
  </tbody>
</table>
</template>
<script setup> 
import {ref,onMounted} from "vue"
import {fetchGetAllData} from "@/service/donHang"

const listDonHang = ref([])

const handleFetchAllData = async() =>{
  try {
    listDonHang.value = await fetchGetAllData()
  } catch (error) {
    console.log(error)
  }
}

onMounted(handleFetchAllData)

</script>