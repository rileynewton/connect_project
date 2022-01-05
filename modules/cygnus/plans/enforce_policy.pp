plan cygnus::enforce_policy(
  Hash $target_policies,
) {
  $targets = get_targets($target_policies.keys)
  $targets.each |$target| {
    $target.set_var('cygnus_policies', $target_policies[$target.name]['policies'])
  }

  $result = apply($targets) {
    include $cygnus_policies
  }
  return $result
}