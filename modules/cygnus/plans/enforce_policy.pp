plan cygnus::enforce_policy(
  Hash $target_policies,
) {
  $targets = get_targets($target_policies.keys)
  apply_prep($targets)
  $targets.each |$target| {
    $target.set_var('cygnus_policies', $target_policies[$target.name]['policies'])
    $payload = {
      'certname' => $target.name,
      'producer' => 'policy',
      'producer_timestamp' => Timestamp.new.strftime('%FT%T%:z'),
      'values' => $target.facts(),
    }
    puppetdb_command('replace_facts', 5, $payload)
  }
  
  $result = apply($targets) {
    include $cygnus_policies
  }
  return $result
}
