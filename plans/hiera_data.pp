plan connect_project::hiera_data(){
	$hiera_data = lookup(hiera_data)
	out::message($hiera_data)
}