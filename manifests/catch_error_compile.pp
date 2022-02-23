plan connect_project::catch_error_compile(TargetSpec $targets, Boolean $catch) {
  $result = apply($targets, _catch_errors => $catch) {
    fail('stop the insanity')
  }

  return $result.first.error
}
