plan connect_project::run_plan_apply::disabled(TargetSpec $targets) {
  return apply($targets) {
    run_task('foo', ['foo'])
  }
}
