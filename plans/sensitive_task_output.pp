plan connect_project::sensitive_task_output(TargetSpec $target){
	$task_result = run_task('connect_project::sensitive', $target).first
	out::message("task result ${task_result}")
	$secret = $task_result.sensitive
	out::message($secret)
	out::message($secret.unwrap)
}