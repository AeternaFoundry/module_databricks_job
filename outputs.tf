output "jobs_id" {
  description = "Map of id values across all jobs, keyed the same as var.jobs except keys with no id are omitted"
  value       = { for k, v in databricks_job.jobs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "jobs_always_running" {
  description = "Map of always_running values across all jobs, keyed the same as var.jobs except keys with no always_running are omitted"
  value       = { for k, v in databricks_job.jobs : k => v.always_running if v.always_running != null }
}
output "jobs_budget_policy_id" {
  description = "Map of budget_policy_id values across all jobs, keyed the same as var.jobs except keys with no budget_policy_id are omitted"
  value       = { for k, v in databricks_job.jobs : k => v.budget_policy_id if v.budget_policy_id != null && length(v.budget_policy_id) > 0 }
}
output "jobs_continuous" {
  description = "Map of continuous values across all jobs, keyed the same as var.jobs except keys with no continuous are omitted"
  value       = { for k, v in databricks_job.jobs : k => one(v.continuous) if v.continuous != null && length(v.continuous) > 0 }
}
output "jobs_control_run_state" {
  description = "Map of control_run_state values across all jobs, keyed the same as var.jobs except keys with no control_run_state are omitted"
  value       = { for k, v in databricks_job.jobs : k => v.control_run_state if v.control_run_state != null }
}
output "jobs_dbt_task" {
  description = "Map of dbt_task values across all jobs, keyed the same as var.jobs except keys with no dbt_task are omitted"
  value       = { for k, v in databricks_job.jobs : k => one(v.dbt_task) if v.dbt_task != null && length(v.dbt_task) > 0 }
}
output "jobs_deployment" {
  description = "Map of deployment values across all jobs, keyed the same as var.jobs except keys with no deployment are omitted"
  value       = { for k, v in databricks_job.jobs : k => one(v.deployment) if v.deployment != null && length(v.deployment) > 0 }
}
output "jobs_description" {
  description = "Map of description values across all jobs, keyed the same as var.jobs except keys with no description are omitted"
  value       = { for k, v in databricks_job.jobs : k => v.description if v.description != null && length(v.description) > 0 }
}
output "jobs_edit_mode" {
  description = "Map of edit_mode values across all jobs, keyed the same as var.jobs except keys with no edit_mode are omitted"
  value       = { for k, v in databricks_job.jobs : k => v.edit_mode if v.edit_mode != null && length(v.edit_mode) > 0 }
}
output "jobs_email_notifications" {
  description = "Map of email_notifications values across all jobs, keyed the same as var.jobs except keys with no email_notifications are omitted"
  value       = { for k, v in databricks_job.jobs : k => one(v.email_notifications) if v.email_notifications != null && length(v.email_notifications) > 0 }
}
output "jobs_environment" {
  description = "Map of environment values across all jobs, keyed the same as var.jobs except keys with no environment are omitted"
  value       = { for k, v in databricks_job.jobs : k => v.environment if v.environment != null && length(v.environment) > 0 }
}
output "jobs_environment_variables" {
  description = "Map of environment_variables values across all jobs, keyed the same as var.jobs except keys with no environment_variables are omitted"
  value       = { for k, v in databricks_job.jobs : k => v.environment_variables if v.environment_variables != null && length(v.environment_variables) > 0 }
}
output "jobs_existing_cluster_id" {
  description = "Map of existing_cluster_id values across all jobs, keyed the same as var.jobs except keys with no existing_cluster_id are omitted"
  value       = { for k, v in databricks_job.jobs : k => v.existing_cluster_id if v.existing_cluster_id != null && length(v.existing_cluster_id) > 0 }
}
output "jobs_format" {
  description = "Map of format values across all jobs, keyed the same as var.jobs except keys with no format are omitted"
  value       = { for k, v in databricks_job.jobs : k => v.format if v.format != null && length(v.format) > 0 }
}
output "jobs_git_source" {
  description = "Map of git_source values across all jobs, keyed the same as var.jobs except keys with no git_source are omitted"
  value       = { for k, v in databricks_job.jobs : k => one(v.git_source) if v.git_source != null && length(v.git_source) > 0 }
}
output "jobs_health" {
  description = "Map of health values across all jobs, keyed the same as var.jobs except keys with no health are omitted"
  value       = { for k, v in databricks_job.jobs : k => one(v.health) if v.health != null && length(v.health) > 0 }
}
output "jobs_job_cluster" {
  description = "Map of job_cluster values across all jobs, keyed the same as var.jobs except keys with no job_cluster are omitted"
  value       = { for k, v in databricks_job.jobs : k => v.job_cluster if v.job_cluster != null && length(v.job_cluster) > 0 }
  sensitive   = true
}
output "jobs_library" {
  description = "Map of library values across all jobs, keyed the same as var.jobs except keys with no library are omitted"
  value       = { for k, v in databricks_job.jobs : k => v.library if v.library != null && length(v.library) > 0 }
}
output "jobs_max_concurrent_runs" {
  description = "Map of max_concurrent_runs values across all jobs, keyed the same as var.jobs except keys with no max_concurrent_runs are omitted"
  value       = { for k, v in databricks_job.jobs : k => v.max_concurrent_runs if v.max_concurrent_runs != null }
}
output "jobs_max_retries" {
  description = "Map of max_retries values across all jobs, keyed the same as var.jobs except keys with no max_retries are omitted"
  value       = { for k, v in databricks_job.jobs : k => v.max_retries if v.max_retries != null }
}
output "jobs_min_retry_interval_millis" {
  description = "Map of min_retry_interval_millis values across all jobs, keyed the same as var.jobs except keys with no min_retry_interval_millis are omitted"
  value       = { for k, v in databricks_job.jobs : k => v.min_retry_interval_millis if v.min_retry_interval_millis != null }
}
output "jobs_name" {
  description = "Map of name values across all jobs, keyed the same as var.jobs except keys with no name are omitted"
  value       = { for k, v in databricks_job.jobs : k => v.name if v.name != null && length(v.name) > 0 }
}
output "jobs_new_cluster" {
  description = "Map of new_cluster values across all jobs, keyed the same as var.jobs except keys with no new_cluster are omitted"
  value       = { for k, v in databricks_job.jobs : k => one(v.new_cluster) if v.new_cluster != null && length(v.new_cluster) > 0 }
  sensitive   = true
}
output "jobs_notebook_task" {
  description = "Map of notebook_task values across all jobs, keyed the same as var.jobs except keys with no notebook_task are omitted"
  value       = { for k, v in databricks_job.jobs : k => one(v.notebook_task) if v.notebook_task != null && length(v.notebook_task) > 0 }
}
output "jobs_notification_settings" {
  description = "Map of notification_settings values across all jobs, keyed the same as var.jobs except keys with no notification_settings are omitted"
  value       = { for k, v in databricks_job.jobs : k => one(v.notification_settings) if v.notification_settings != null && length(v.notification_settings) > 0 }
}
output "jobs_parameter" {
  description = "Map of parameter values across all jobs, keyed the same as var.jobs except keys with no parameter are omitted"
  value       = { for k, v in databricks_job.jobs : k => v.parameter if v.parameter != null && length(v.parameter) > 0 }
}
output "jobs_parent_path" {
  description = "Map of parent_path values across all jobs, keyed the same as var.jobs except keys with no parent_path are omitted"
  value       = { for k, v in databricks_job.jobs : k => v.parent_path if v.parent_path != null && length(v.parent_path) > 0 }
}
output "jobs_performance_target" {
  description = "Map of performance_target values across all jobs, keyed the same as var.jobs except keys with no performance_target are omitted"
  value       = { for k, v in databricks_job.jobs : k => v.performance_target if v.performance_target != null && length(v.performance_target) > 0 }
}
output "jobs_pipeline_task" {
  description = "Map of pipeline_task values across all jobs, keyed the same as var.jobs except keys with no pipeline_task are omitted"
  value       = { for k, v in databricks_job.jobs : k => one(v.pipeline_task) if v.pipeline_task != null && length(v.pipeline_task) > 0 }
}
output "jobs_provider_config" {
  description = "Map of provider_config values across all jobs, keyed the same as var.jobs except keys with no provider_config are omitted"
  value       = { for k, v in databricks_job.jobs : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "jobs_python_wheel_task" {
  description = "Map of python_wheel_task values across all jobs, keyed the same as var.jobs except keys with no python_wheel_task are omitted"
  value       = { for k, v in databricks_job.jobs : k => one(v.python_wheel_task) if v.python_wheel_task != null && length(v.python_wheel_task) > 0 }
}
output "jobs_queue" {
  description = "Map of queue values across all jobs, keyed the same as var.jobs except keys with no queue are omitted"
  value       = { for k, v in databricks_job.jobs : k => one(v.queue) if v.queue != null && length(v.queue) > 0 }
}
output "jobs_retry_on_timeout" {
  description = "Map of retry_on_timeout values across all jobs, keyed the same as var.jobs except keys with no retry_on_timeout are omitted"
  value       = { for k, v in databricks_job.jobs : k => v.retry_on_timeout if v.retry_on_timeout != null }
}
output "jobs_run_as" {
  description = "Map of run_as values across all jobs, keyed the same as var.jobs except keys with no run_as are omitted"
  value       = { for k, v in databricks_job.jobs : k => one(v.run_as) if v.run_as != null && length(v.run_as) > 0 }
}
output "jobs_run_job_task" {
  description = "Map of run_job_task values across all jobs, keyed the same as var.jobs except keys with no run_job_task are omitted"
  value       = { for k, v in databricks_job.jobs : k => one(v.run_job_task) if v.run_job_task != null && length(v.run_job_task) > 0 }
}
output "jobs_schedule" {
  description = "Map of schedule values across all jobs, keyed the same as var.jobs except keys with no schedule are omitted"
  value       = { for k, v in databricks_job.jobs : k => one(v.schedule) if v.schedule != null && length(v.schedule) > 0 }
}
output "jobs_spark_jar_task" {
  description = "Map of spark_jar_task values across all jobs, keyed the same as var.jobs except keys with no spark_jar_task are omitted"
  value       = { for k, v in databricks_job.jobs : k => one(v.spark_jar_task) if v.spark_jar_task != null && length(v.spark_jar_task) > 0 }
}
output "jobs_spark_python_task" {
  description = "Map of spark_python_task values across all jobs, keyed the same as var.jobs except keys with no spark_python_task are omitted"
  value       = { for k, v in databricks_job.jobs : k => one(v.spark_python_task) if v.spark_python_task != null && length(v.spark_python_task) > 0 }
}
output "jobs_spark_submit_task" {
  description = "Map of spark_submit_task values across all jobs, keyed the same as var.jobs except keys with no spark_submit_task are omitted"
  value       = { for k, v in databricks_job.jobs : k => one(v.spark_submit_task) if v.spark_submit_task != null && length(v.spark_submit_task) > 0 }
}
output "jobs_tags" {
  description = "Map of tags values across all jobs, keyed the same as var.jobs except keys with no tags are omitted"
  value       = { for k, v in databricks_job.jobs : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "jobs_task" {
  description = "Map of task values across all jobs, keyed the same as var.jobs except keys with no task are omitted"
  value       = { for k, v in databricks_job.jobs : k => v.task if v.task != null && length(v.task) > 0 }
  sensitive   = true
}
output "jobs_timeout_seconds" {
  description = "Map of timeout_seconds values across all jobs, keyed the same as var.jobs except keys with no timeout_seconds are omitted"
  value       = { for k, v in databricks_job.jobs : k => v.timeout_seconds if v.timeout_seconds != null }
}
output "jobs_trigger" {
  description = "Map of trigger values across all jobs, keyed the same as var.jobs except keys with no trigger are omitted"
  value       = { for k, v in databricks_job.jobs : k => one(v.trigger) if v.trigger != null && length(v.trigger) > 0 }
}
output "jobs_triggers" {
  description = "Map of triggers values across all jobs, keyed the same as var.jobs except keys with no triggers are omitted"
  value       = { for k, v in databricks_job.jobs : k => v.triggers if v.triggers != null && length(v.triggers) > 0 }
}
output "jobs_url" {
  description = "Map of url values across all jobs, keyed the same as var.jobs except keys with no url are omitted"
  value       = { for k, v in databricks_job.jobs : k => v.url if v.url != null && length(v.url) > 0 }
}
output "jobs_usage_policy_id" {
  description = "Map of usage_policy_id values across all jobs, keyed the same as var.jobs except keys with no usage_policy_id are omitted"
  value       = { for k, v in databricks_job.jobs : k => v.usage_policy_id if v.usage_policy_id != null && length(v.usage_policy_id) > 0 }
}
output "jobs_webhook_notifications" {
  description = "Map of webhook_notifications values across all jobs, keyed the same as var.jobs except keys with no webhook_notifications are omitted"
  value       = { for k, v in databricks_job.jobs : k => one(v.webhook_notifications) if v.webhook_notifications != null && length(v.webhook_notifications) > 0 }
}

