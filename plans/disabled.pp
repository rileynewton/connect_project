plan connect_project::disabled(TargetSpec $targets) {
  return apply($targets) {
    run_task('foo', ['foo'])
  }
}
