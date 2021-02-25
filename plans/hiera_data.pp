plan connect_project::hiera_data(TargetSpec $target){
	$hiera_data = lookup(hiera_data)
	out::message($hiera_data)
}