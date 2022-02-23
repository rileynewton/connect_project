plan connect_project::get_targets(
  TargetSpec $targets
) {

  return apply($targets) {
  	# Expect compilation error
    get_targets($targets)
  }
}
