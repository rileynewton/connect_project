plan connect_project::run_plan_apply_get_targets(
  TargetSpec $targets
) {

  return apply($targets) {
  	# Expect compilation error
    get_targets($targets)
  }
}
