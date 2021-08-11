plan connect_project::plan_apply(TargetSpec $targets){
	apply_prep($targets)
	return apply($targets){
		notify{foo:}
	}
}