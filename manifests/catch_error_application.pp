plan connect_project::catch_error_application (TargetSpec $targets, Boolean $catch) {
  return apply($targets, _catch_errors => $catch) {
    package {'nonexistentpackagename': }
  }
}
