<template>
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
			<nuxt-link class="sidebar-brand d-flex align-items-center justify-content-center" to="#">
				<div class="sidebar-brand-icon">Sambang
			    </div>
				<div class="sidebar-brand-text mx-3 text-danger">Santri</div>
			</nuxt-link>
			<hr class="sidebar-divider my-0">
			<li class="nav-item active">
				<b-link class="nav-link" to="/">
					<i class="fas fa-align-justify"></i>
					<span>Dashboard</span>
				</b-link>
			</li>
			<hr class="sidebar-divider">
            <li class="nav-item">
				<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
					<i class="fas fa-fw fa-address-card"></i>
					<span>Dokumentasi</span>
				</a>
				<div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<b-link class="collapse-item" to="/Dokuments1">J.Sambang Waktu Pagi</b-link>
                        <b-link class="collapse-item" to="/Dokuments2">J.Sambang Waktu Siang</b-link>
					</div>
				</div>
			</li>
			<hr class="sidebar-divider ">
			<li class="nav-item">
				<a class="nav-link collapsed" href="" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true1" aria-controls="collapseTwo">
					<i class="fas fa-fw fa-cog"></i>
					<span>Settings</span>
				</a>
				<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<b-link class="collapse-item" to="/settingp">Pendaftaran</b-link>
                        <b-link class="collapse-item" to="/settingj">Jumlah Pendaftar Hari Ini</b-link>
					</div>
				</div>
			</li>
		</ul>
</template>

<script>
export default {
    
}
</script>