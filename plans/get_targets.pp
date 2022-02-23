plan connect_project::run_plan_apply::get_targets(
  TargetSpec $targets
) {

  return apply($targets) {
  	# Expect compilation error
    get_targets($targets)
  }
}
