plan connect_project::hiera_data($foo = bar){
	$hiera_data = lookup(hiera_data)
	out::message($hiera_data)
}