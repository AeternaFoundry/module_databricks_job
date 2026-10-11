variable "jobs" {
  description = <<EOT
Map of jobs, attributes below
Optional:
    - always_running
    - budget_policy_id
    - control_run_state
    - description
    - edit_mode
    - existing_cluster_id
    - format
    - max_concurrent_runs
    - max_retries
    - min_retry_interval_millis
    - name
    - parent_path
    - performance_target
    - retry_on_timeout
    - tags
    - timeout_seconds
    - usage_policy_id
    - continuous (block):
        - maintenance_window (optional, block):
            - day_of_week (required)
            - start_hour (required)
            - timezone_id (required)
        - pause_status (optional)
        - task_retry_mode (optional)
    - dbt_task (block):
        - catalog (optional)
        - commands (required)
        - profiles_directory (optional)
        - project_directory (optional)
        - schema (optional)
        - source (optional)
        - warehouse_id (optional)
    - deployment (block):
        - deployment_id (optional)
        - kind (required)
        - metadata_file_path (optional)
        - version_id (optional)
    - email_notifications (block):
        - no_alert_for_skipped_runs (optional)
        - on_duration_warning_threshold_exceeded (optional)
        - on_failure (optional)
        - on_maintenance_complete (optional)
        - on_maintenance_start (optional)
        - on_start (optional)
        - on_streaming_backlog_exceeded (optional)
        - on_success (optional)
    - environment (block):
        - environment_key (required)
        - spec (optional, block):
            - base_environment (optional)
            - client (optional)
            - dependencies (optional)
            - environment_version (optional)
            - java_dependencies (optional)
            - project_environment (optional)
    - environment_variables (block):
        - environment_variables_key (required)
        - spec (optional, block):
            - files (optional)
            - variables (optional)
    - git_source (block):
        - branch (optional)
        - commit (optional)
        - git_snapshot (optional, block):
            - used_commit (optional)
        - job_source (optional, block):
            - dirty_state (optional)
            - import_from_git_branch (required)
            - job_config_path (required)
        - provider (optional)
        - sparse_checkout (optional, block):
            - patterns (optional)
        - tag (optional)
        - url (required)
    - health (block):
        - rules (required, block):
            - metric (required)
            - op (required)
            - value (required)
    - job_cluster (block):
        - job_cluster_key (required)
        - new_cluster (optional, block):
            - __apply_policy_default_values_allow_list (optional)
            - apply_policy_default_values (optional)
            - autoscale (optional, block):
                - max_workers (optional)
                - min_workers (optional)
            - aws_attributes (optional, block):
                - availability (optional)
                - ebs_volume_count (optional)
                - ebs_volume_iops (optional)
                - ebs_volume_size (optional)
                - ebs_volume_throughput (optional)
                - ebs_volume_type (optional)
                - first_on_demand (optional)
                - instance_profile_arn (optional)
                - spot_bid_price_percent (optional)
                - zone_id (optional)
            - azure_attributes (optional, block):
                - availability (optional)
                - capacity_reservation_group (optional)
                - first_on_demand (optional)
                - log_analytics_info (optional, block):
                    - log_analytics_primary_key (optional)
                    - log_analytics_workspace_id (optional)
                - spot_bid_max_price (optional)
            - cluster_id (optional)
            - cluster_log_conf (optional, block):
                - dbfs (optional, block):
                    - destination (required)
                - s3 (optional, block):
                    - canned_acl (optional)
                    - destination (required)
                    - enable_encryption (optional)
                    - encryption_type (optional)
                    - endpoint (optional)
                    - kms_key (optional)
                    - region (optional)
                - volumes (optional, block):
                    - destination (required)
            - cluster_mount_info (optional, block):
                - local_mount_dir_path (required)
                - network_filesystem_info (required, block):
                    - mount_options (optional)
                    - server_address (required)
                - remote_mount_dir_path (optional)
            - cluster_name (optional)
            - custom_tags (optional)
            - data_security_mode (optional)
            - dependency_mode (optional)
            - docker_image (optional, block):
                - basic_auth (optional, block):
                    - password (required)
                    - username (required)
                - url (required)
            - driver_instance_pool_id (optional)
            - driver_node_type_flexibility (optional, block):
                - alternate_node_type_ids (optional)
                - aws_context_id (optional)
            - driver_node_type_id (optional)
            - enable_elastic_disk (optional)
            - enable_local_disk_encryption (optional)
            - gcp_attributes (optional, block):
                - availability (optional)
                - boot_disk_size (optional)
                - confidential_compute_type (optional)
                - first_on_demand (optional)
                - google_service_account (optional)
                - local_ssd_count (optional)
                - use_preemptible_executors (optional)
                - zone_id (optional)
            - idempotency_token (optional)
            - init_scripts (optional, block):
                - abfss (optional, block):
                    - destination (required)
                - dbfs (optional, block):
                    - destination (required)
                - file (optional, block):
                    - destination (required)
                - gcs (optional, block):
                    - destination (required)
                - s3 (optional, block):
                    - canned_acl (optional)
                    - destination (required)
                    - enable_encryption (optional)
                    - encryption_type (optional)
                    - endpoint (optional)
                    - kms_key (optional)
                    - region (optional)
                - volumes (optional, block):
                    - destination (required)
                - workspace (optional, block):
                    - destination (required)
            - instance_pool_id (optional)
            - is_single_node (optional)
            - kind (optional)
            - library (optional, block):
                - cran (optional, block):
                    - package (required)
                    - repo (optional)
                - egg (optional)
                - jar (optional)
                - maven (optional, block):
                    - coordinates (required)
                    - exclusions (optional)
                    - repo (optional)
                - provider_config (optional, block):
                    - workspace_id (optional)
                - pypi (optional, block):
                    - package (required)
                    - repo (optional)
                - requirements (optional)
                - whl (optional)
            - node_type_id (optional)
            - num_workers (optional)
            - policy_id (optional)
            - provider_config (optional, block):
                - workspace_id (optional)
            - remote_disk_throughput (optional)
            - runtime_engine (optional)
            - single_user_name (optional)
            - spark_conf (optional)
            - spark_env_vars (optional)
            - spark_version (optional)
            - ssh_public_keys (optional)
            - total_initial_remote_disk_size (optional)
            - use_ml_runtime (optional)
            - worker_node_type_flexibility (optional, block):
                - alternate_node_type_ids (optional)
                - aws_context_id (optional)
            - workload_type (optional, block):
                - clients (required, block):
                    - jobs (optional)
                    - notebooks (optional)
        - serverless_compute_id (optional)
    - library (block):
        - cran (optional, block):
            - package (required)
            - repo (optional)
        - egg (optional)
        - jar (optional)
        - maven (optional, block):
            - coordinates (required)
            - exclusions (optional)
            - repo (optional)
        - provider_config (optional, block):
            - workspace_id (optional)
        - pypi (optional, block):
            - package (required)
            - repo (optional)
        - requirements (optional)
        - whl (optional)
    - new_cluster (block):
        - apply_policy_default_values (optional)
        - autoscale (optional, block):
            - max_workers (optional)
            - min_workers (optional)
        - aws_attributes (optional, block):
            - availability (optional)
            - ebs_volume_count (optional)
            - ebs_volume_iops (optional)
            - ebs_volume_size (optional)
            - ebs_volume_throughput (optional)
            - ebs_volume_type (optional)
            - first_on_demand (optional)
            - instance_profile_arn (optional)
            - spot_bid_price_percent (optional)
            - zone_id (optional)
        - azure_attributes (optional, block):
            - availability (optional)
            - capacity_reservation_group (optional)
            - first_on_demand (optional)
            - log_analytics_info (optional, block):
                - log_analytics_primary_key (optional)
                - log_analytics_workspace_id (optional)
            - spot_bid_max_price (optional)
        - cluster_id (optional)
        - cluster_log_conf (optional, block):
            - dbfs (optional, block):
                - destination (required)
            - s3 (optional, block):
                - canned_acl (optional)
                - destination (required)
                - enable_encryption (optional)
                - encryption_type (optional)
                - endpoint (optional)
                - kms_key (optional)
                - region (optional)
            - volumes (optional, block):
                - destination (required)
        - cluster_mount_info (optional, block):
            - local_mount_dir_path (required)
            - network_filesystem_info (required, block):
                - mount_options (optional)
                - server_address (required)
            - remote_mount_dir_path (optional)
        - cluster_name (optional)
        - custom_tags (optional)
        - data_security_mode (optional)
        - dependency_mode (optional)
        - docker_image (optional, block):
            - basic_auth (optional, block):
                - password (required)
                - username (required)
            - url (required)
        - driver_instance_pool_id (optional)
        - driver_node_type_flexibility (optional, block):
            - alternate_node_type_ids (optional)
            - aws_context_id (optional)
        - driver_node_type_id (optional)
        - enable_elastic_disk (optional)
        - enable_local_disk_encryption (optional)
        - gcp_attributes (optional, block):
            - availability (optional)
            - boot_disk_size (optional)
            - confidential_compute_type (optional)
            - first_on_demand (optional)
            - google_service_account (optional)
            - local_ssd_count (optional)
            - use_preemptible_executors (optional)
            - zone_id (optional)
        - idempotency_token (optional)
        - init_scripts (optional, block):
            - abfss (optional, block):
                - destination (required)
            - dbfs (optional, block):
                - destination (required)
            - file (optional, block):
                - destination (required)
            - gcs (optional, block):
                - destination (required)
            - s3 (optional, block):
                - canned_acl (optional)
                - destination (required)
                - enable_encryption (optional)
                - encryption_type (optional)
                - endpoint (optional)
                - kms_key (optional)
                - region (optional)
            - volumes (optional, block):
                - destination (required)
            - workspace (optional, block):
                - destination (required)
        - instance_pool_id (optional)
        - is_single_node (optional)
        - kind (optional)
        - library (optional, block):
            - cran (optional, block):
                - package (required)
                - repo (optional)
            - egg (optional)
            - jar (optional)
            - maven (optional, block):
                - coordinates (required)
                - exclusions (optional)
                - repo (optional)
            - provider_config (optional, block):
                - workspace_id (optional)
            - pypi (optional, block):
                - package (required)
                - repo (optional)
            - requirements (optional)
            - whl (optional)
        - node_type_id (optional)
        - num_workers (optional)
        - policy_id (optional)
        - provider_config (optional, block):
            - workspace_id (optional)
        - remote_disk_throughput (optional)
        - runtime_engine (optional)
        - single_user_name (optional)
        - spark_conf (optional)
        - spark_env_vars (optional)
        - spark_version (optional)
        - ssh_public_keys (optional)
        - total_initial_remote_disk_size (optional)
        - use_ml_runtime (optional)
        - worker_node_type_flexibility (optional, block):
            - alternate_node_type_ids (optional)
            - aws_context_id (optional)
        - workload_type (optional, block):
            - clients (required, block):
                - jobs (optional)
                - notebooks (optional)
    - notebook_task (block):
        - base_parameters (optional)
        - notebook_path (required)
        - source (optional)
        - warehouse_id (optional)
    - notification_settings (block):
        - no_alert_for_canceled_runs (optional)
        - no_alert_for_skipped_runs (optional)
    - parameter (block):
        - default (required)
        - name (required)
    - pipeline_task (block):
        - full_refresh (optional)
        - pipeline_id (required)
    - provider_config (block):
        - workspace_id (optional)
    - python_wheel_task (block):
        - entry_point (optional)
        - named_parameters (optional)
        - package_name (optional)
        - parameters (optional)
    - queue (block):
        - enabled (required)
    - run_as (block):
        - group_name (optional)
        - service_principal_name (optional)
        - user_name (optional)
    - run_job_task (block):
        - job_id (required)
        - job_parameters (optional)
    - schedule (block):
        - pause_status (optional)
        - quartz_cron_expression (required)
        - sql_condition (optional, block):
            - sql_query_id (required)
            - trigger_mode (optional)
            - warehouse_id (required)
        - timezone_id (required)
    - spark_jar_task (block):
        - jar_uri (optional)
        - main_class_name (optional)
        - parameters (optional)
    - spark_python_task (block):
        - parameters (optional)
        - python_file (required)
        - source (optional)
    - spark_submit_task (block):
        - parameters (optional)
    - task (block):
        - ai_runtime_task (optional, block):
            - code_source_path (optional)
            - deployments (required, block):
                - command_path (optional)
                - compute (required, block):
                    - accelerator_count (required)
                    - accelerator_type (required)
                    - provisioned_capacity_id (optional)
                - name (optional)
            - docker_image_url (optional)
            - experiment (required)
            - mlflow_artifact_location (optional)
            - mlflow_experiment_directory (optional)
            - mlflow_run (optional)
            - priority_class (optional)
            - unity_catalog_image_path (optional)
        - alert_task (optional, block):
            - alert_id (optional)
            - parameters (optional)
            - subscribers (optional, block):
                - destination_id (optional)
                - user_name (optional)
            - warehouse_id (optional)
            - workspace_path (optional)
        - clean_rooms_notebook_task (optional, block):
            - clean_room_name (required)
            - etag (optional)
            - notebook_base_parameters (optional)
            - notebook_name (required)
        - compute (optional, block):
            - hardware_accelerator (optional)
        - condition_task (optional, block):
            - left (required)
            - op (required)
            - right (required)
        - dashboard_task (optional, block):
            - dashboard_id (optional)
            - filters (optional)
            - subscription (optional, block):
                - custom_subject (optional)
                - paused (optional)
                - subscribers (optional, block):
                    - destination_id (optional)
                    - user_name (optional)
            - warehouse_id (optional)
        - dbt_cloud_task (optional, block):
            - connection_resource_name (optional)
            - dbt_cloud_job_id (optional)
        - dbt_platform_task (optional, block):
            - connection_resource_name (optional)
            - dbt_platform_job_id (optional)
        - dbt_task (optional, block):
            - catalog (optional)
            - commands (required)
            - profiles_directory (optional)
            - project_directory (optional)
            - schema (optional)
            - source (optional)
            - warehouse_id (optional)
        - depends_on (optional, block):
            - outcome (optional)
            - task_key (required)
        - description (optional)
        - disable_auto_optimization (optional)
        - disabled (optional)
        - email_notifications (optional, block):
            - no_alert_for_skipped_runs (optional)
            - on_duration_warning_threshold_exceeded (optional)
            - on_failure (optional)
            - on_maintenance_complete (optional)
            - on_maintenance_start (optional)
            - on_start (optional)
            - on_streaming_backlog_exceeded (optional)
            - on_success (optional)
        - environment_key (optional)
        - environment_variables_key (optional)
        - existing_cluster_id (optional)
        - for_each_task (optional, block):
            - concurrency (optional)
            - inputs (required)
            - task (required, block):
                - ai_runtime_task (optional, block):
                    - code_source_path (optional)
                    - deployments (required, block):
                        - command_path (optional)
                        - compute (required, block):
                            - accelerator_count (required)
                            - accelerator_type (required)
                            - provisioned_capacity_id (optional)
                        - name (optional)
                    - docker_image_url (optional)
                    - experiment (required)
                    - mlflow_artifact_location (optional)
                    - mlflow_experiment_directory (optional)
                    - mlflow_run (optional)
                    - priority_class (optional)
                    - unity_catalog_image_path (optional)
                - alert_task (optional, block):
                    - alert_id (optional)
                    - parameters (optional)
                    - subscribers (optional, block):
                        - destination_id (optional)
                        - user_name (optional)
                    - warehouse_id (optional)
                    - workspace_path (optional)
                - clean_rooms_notebook_task (optional, block):
                    - clean_room_name (required)
                    - etag (optional)
                    - notebook_base_parameters (optional)
                    - notebook_name (required)
                - compute (optional, block):
                    - hardware_accelerator (optional)
                - condition_task (optional, block):
                    - left (required)
                    - op (required)
                    - right (required)
                - dashboard_task (optional, block):
                    - dashboard_id (optional)
                    - filters (optional)
                    - subscription (optional, block):
                        - custom_subject (optional)
                        - paused (optional)
                        - subscribers (optional, block):
                            - destination_id (optional)
                            - user_name (optional)
                    - warehouse_id (optional)
                - dbt_cloud_task (optional, block):
                    - connection_resource_name (optional)
                    - dbt_cloud_job_id (optional)
                - dbt_platform_task (optional, block):
                    - connection_resource_name (optional)
                    - dbt_platform_job_id (optional)
                - dbt_task (optional, block):
                    - catalog (optional)
                    - commands (required)
                    - profiles_directory (optional)
                    - project_directory (optional)
                    - schema (optional)
                    - source (optional)
                    - warehouse_id (optional)
                - depends_on (optional, block):
                    - outcome (optional)
                    - task_key (required)
                - description (optional)
                - disable_auto_optimization (optional)
                - disabled (optional)
                - email_notifications (optional, block):
                    - no_alert_for_skipped_runs (optional)
                    - on_duration_warning_threshold_exceeded (optional)
                    - on_failure (optional)
                    - on_maintenance_complete (optional)
                    - on_maintenance_start (optional)
                    - on_start (optional)
                    - on_streaming_backlog_exceeded (optional)
                    - on_success (optional)
                - environment_key (optional)
                - environment_variables_key (optional)
                - existing_cluster_id (optional)
                - gen_ai_compute_task (optional, block):
                    - command (optional)
                    - compute (optional, block):
                        - gpu_node_pool_id (optional)
                        - gpu_type (optional)
                        - num_gpus (required)
                    - dl_runtime_image (required)
                    - mlflow_experiment_name (optional)
                    - source (optional)
                    - training_script_path (optional)
                    - yaml_parameters (optional)
                    - yaml_parameters_file_path (optional)
                - health (optional, block):
                    - rules (required, block):
                        - metric (required)
                        - op (required)
                        - value (required)
                - job_cluster_key (optional)
                - library (optional, block):
                    - cran (optional, block):
                        - package (required)
                        - repo (optional)
                    - egg (optional)
                    - jar (optional)
                    - maven (optional, block):
                        - coordinates (required)
                        - exclusions (optional)
                        - repo (optional)
                    - provider_config (optional, block):
                        - workspace_id (optional)
                    - pypi (optional, block):
                        - package (required)
                        - repo (optional)
                    - requirements (optional)
                    - whl (optional)
                - max_retries (optional)
                - min_retry_interval_millis (optional)
                - new_cluster (optional, block):
                    - apply_policy_default_values (optional)
                    - autoscale (optional, block):
                        - max_workers (optional)
                        - min_workers (optional)
                    - aws_attributes (optional, block):
                        - availability (optional)
                        - ebs_volume_count (optional)
                        - ebs_volume_iops (optional)
                        - ebs_volume_size (optional)
                        - ebs_volume_throughput (optional)
                        - ebs_volume_type (optional)
                        - first_on_demand (optional)
                        - instance_profile_arn (optional)
                        - spot_bid_price_percent (optional)
                        - zone_id (optional)
                    - azure_attributes (optional, block):
                        - availability (optional)
                        - capacity_reservation_group (optional)
                        - first_on_demand (optional)
                        - log_analytics_info (optional, block):
                            - log_analytics_primary_key (optional)
                            - log_analytics_workspace_id (optional)
                        - spot_bid_max_price (optional)
                    - cluster_id (optional)
                    - cluster_log_conf (optional, block):
                        - dbfs (optional, block):
                            - destination (required)
                        - s3 (optional, block):
                            - canned_acl (optional)
                            - destination (required)
                            - enable_encryption (optional)
                            - encryption_type (optional)
                            - endpoint (optional)
                            - kms_key (optional)
                            - region (optional)
                        - volumes (optional, block):
                            - destination (required)
                    - cluster_mount_info (optional, block):
                        - local_mount_dir_path (required)
                        - network_filesystem_info (required, block):
                            - mount_options (optional)
                            - server_address (required)
                        - remote_mount_dir_path (optional)
                    - cluster_name (optional)
                    - custom_tags (optional)
                    - data_security_mode (optional)
                    - dependency_mode (optional)
                    - docker_image (optional, block):
                        - basic_auth (optional, block):
                            - password (required)
                            - username (required)
                        - url (required)
                    - driver_instance_pool_id (optional)
                    - driver_node_type_flexibility (optional, block):
                        - alternate_node_type_ids (optional)
                        - aws_context_id (optional)
                    - driver_node_type_id (optional)
                    - enable_elastic_disk (optional)
                    - enable_local_disk_encryption (optional)
                    - gcp_attributes (optional, block):
                        - availability (optional)
                        - boot_disk_size (optional)
                        - confidential_compute_type (optional)
                        - first_on_demand (optional)
                        - google_service_account (optional)
                        - local_ssd_count (optional)
                        - use_preemptible_executors (optional)
                        - zone_id (optional)
                    - idempotency_token (optional)
                    - init_scripts (optional, block):
                        - abfss (optional, block):
                            - destination (required)
                        - dbfs (optional, block):
                            - destination (required)
                        - file (optional, block):
                            - destination (required)
                        - gcs (optional, block):
                            - destination (required)
                        - s3 (optional, block):
                            - canned_acl (optional)
                            - destination (required)
                            - enable_encryption (optional)
                            - encryption_type (optional)
                            - endpoint (optional)
                            - kms_key (optional)
                            - region (optional)
                        - volumes (optional, block):
                            - destination (required)
                        - workspace (optional, block):
                            - destination (required)
                    - instance_pool_id (optional)
                    - is_single_node (optional)
                    - kind (optional)
                    - library (optional, block):
                        - cran (optional, block):
                            - package (required)
                            - repo (optional)
                        - egg (optional)
                        - jar (optional)
                        - maven (optional, block):
                            - coordinates (required)
                            - exclusions (optional)
                            - repo (optional)
                        - provider_config (optional, block):
                            - workspace_id (optional)
                        - pypi (optional, block):
                            - package (required)
                            - repo (optional)
                        - requirements (optional)
                        - whl (optional)
                    - node_type_id (optional)
                    - num_workers (optional)
                    - policy_id (optional)
                    - provider_config (optional, block):
                        - workspace_id (optional)
                    - remote_disk_throughput (optional)
                    - runtime_engine (optional)
                    - single_user_name (optional)
                    - spark_conf (optional)
                    - spark_env_vars (optional)
                    - spark_version (optional)
                    - ssh_public_keys (optional)
                    - total_initial_remote_disk_size (optional)
                    - use_ml_runtime (optional)
                    - worker_node_type_flexibility (optional, block):
                        - alternate_node_type_ids (optional)
                        - aws_context_id (optional)
                    - workload_type (optional, block):
                        - clients (required, block):
                            - jobs (optional)
                            - notebooks (optional)
                - notebook_task (optional, block):
                    - base_parameters (optional)
                    - notebook_path (required)
                    - source (optional)
                    - warehouse_id (optional)
                - notification_settings (optional, block):
                    - alert_on_last_attempt (optional)
                    - no_alert_for_canceled_runs (optional)
                    - no_alert_for_skipped_runs (optional)
                - pipeline_task (optional, block):
                    - full_refresh (optional)
                    - full_refresh_selection (optional)
                    - parameters (optional)
                    - pipeline_id (required)
                    - refresh_flow_selection (optional)
                    - refresh_selection (optional)
                    - reset_checkpoint_selection (optional)
                - power_bi_task (optional, block):
                    - connection_resource_name (optional)
                    - power_bi_model (optional, block):
                        - authentication_method (optional)
                        - model_name (optional)
                        - overwrite_existing (optional)
                        - storage_mode (optional)
                        - workspace_name (optional)
                    - refresh_after_update (optional)
                    - tables (optional, block):
                        - catalog (optional)
                        - name (optional)
                        - schema (optional)
                        - storage_mode (optional)
                    - warehouse_id (optional)
                - python_operator_task (optional, block):
                    - main (optional)
                    - parameters (optional, block):
                        - name (optional)
                        - value (optional)
                - python_wheel_task (optional, block):
                    - entry_point (optional)
                    - named_parameters (optional)
                    - package_name (optional)
                    - parameters (optional)
                - retry_on_timeout (optional)
                - run_if (optional)
                - run_job_task (optional, block):
                    - dbt_commands (optional)
                    - jar_params (optional)
                    - job_id (required)
                    - job_parameters (optional)
                    - notebook_params (optional)
                    - pipeline_params (optional, block):
                        - full_refresh (optional)
                        - full_refresh_selection (optional)
                        - refresh_flow_selection (optional)
                        - refresh_selection (optional)
                        - reset_checkpoint_selection (optional)
                    - python_named_params (optional)
                    - python_params (optional)
                    - spark_submit_params (optional)
                    - sql_params (optional)
                - spark_jar_task (optional, block):
                    - jar_uri (optional)
                    - main_class_name (optional)
                    - parameters (optional)
                    - run_as_repl (optional)
                - spark_python_task (optional, block):
                    - parameters (optional)
                    - python_file (required)
                    - source (optional)
                - spark_submit_task (optional, block):
                    - parameters (optional)
                - sql_task (optional, block):
                    - alert (optional, block):
                        - alert_id (required)
                        - pause_subscriptions (optional)
                        - subscriptions (optional, block):
                            - destination_id (optional)
                            - user_name (optional)
                    - dashboard (optional, block):
                        - custom_subject (optional)
                        - dashboard_id (required)
                        - pause_subscriptions (optional)
                        - subscriptions (optional, block):
                            - destination_id (optional)
                            - user_name (optional)
                    - file (optional, block):
                        - path (required)
                        - source (optional)
                    - parameters (optional)
                    - query (optional, block):
                        - query_id (required)
                    - warehouse_id (required)
                - task_key (required)
                - timeout_seconds (optional)
                - webhook_notifications (optional, block):
                    - on_duration_warning_threshold_exceeded (optional, block):
                        - id (required)
                    - on_failure (optional, block):
                        - id (required)
                    - on_maintenance_complete (optional, block):
                        - id (required)
                    - on_maintenance_start (optional, block):
                        - id (required)
                    - on_start (optional, block):
                        - id (required)
                    - on_streaming_backlog_exceeded (optional, block):
                        - id (required)
                    - on_success (optional, block):
                        - id (required)
        - gen_ai_compute_task (optional, block):
            - command (optional)
            - compute (optional, block):
                - gpu_node_pool_id (optional)
                - gpu_type (optional)
                - num_gpus (required)
            - dl_runtime_image (required)
            - mlflow_experiment_name (optional)
            - source (optional)
            - training_script_path (optional)
            - yaml_parameters (optional)
            - yaml_parameters_file_path (optional)
        - health (optional, block):
            - rules (required, block):
                - metric (required)
                - op (required)
                - value (required)
        - job_cluster_key (optional)
        - library (optional, block):
            - cran (optional, block):
                - package (required)
                - repo (optional)
            - egg (optional)
            - jar (optional)
            - maven (optional, block):
                - coordinates (required)
                - exclusions (optional)
                - repo (optional)
            - provider_config (optional, block):
                - workspace_id (optional)
            - pypi (optional, block):
                - package (required)
                - repo (optional)
            - requirements (optional)
            - whl (optional)
        - max_retries (optional)
        - min_retry_interval_millis (optional)
        - new_cluster (optional, block):
            - __apply_policy_default_values_allow_list (optional)
            - apply_policy_default_values (optional)
            - autoscale (optional, block):
                - max_workers (optional)
                - min_workers (optional)
            - aws_attributes (optional, block):
                - availability (optional)
                - ebs_volume_count (optional)
                - ebs_volume_iops (optional)
                - ebs_volume_size (optional)
                - ebs_volume_throughput (optional)
                - ebs_volume_type (optional)
                - first_on_demand (optional)
                - instance_profile_arn (optional)
                - spot_bid_price_percent (optional)
                - zone_id (optional)
            - azure_attributes (optional, block):
                - availability (optional)
                - capacity_reservation_group (optional)
                - first_on_demand (optional)
                - log_analytics_info (optional, block):
                    - log_analytics_primary_key (optional)
                    - log_analytics_workspace_id (optional)
                - spot_bid_max_price (optional)
            - cluster_id (optional)
            - cluster_log_conf (optional, block):
                - dbfs (optional, block):
                    - destination (required)
                - s3 (optional, block):
                    - canned_acl (optional)
                    - destination (required)
                    - enable_encryption (optional)
                    - encryption_type (optional)
                    - endpoint (optional)
                    - kms_key (optional)
                    - region (optional)
                - volumes (optional, block):
                    - destination (required)
            - cluster_mount_info (optional, block):
                - local_mount_dir_path (required)
                - network_filesystem_info (required, block):
                    - mount_options (optional)
                    - server_address (required)
                - remote_mount_dir_path (optional)
            - cluster_name (optional)
            - custom_tags (optional)
            - data_security_mode (optional)
            - dependency_mode (optional)
            - docker_image (optional, block):
                - basic_auth (optional, block):
                    - password (required)
                    - username (required)
                - url (required)
            - driver_instance_pool_id (optional)
            - driver_node_type_flexibility (optional, block):
                - alternate_node_type_ids (optional)
                - aws_context_id (optional)
            - driver_node_type_id (optional)
            - enable_elastic_disk (optional)
            - enable_local_disk_encryption (optional)
            - gcp_attributes (optional, block):
                - availability (optional)
                - boot_disk_size (optional)
                - confidential_compute_type (optional)
                - first_on_demand (optional)
                - google_service_account (optional)
                - local_ssd_count (optional)
                - use_preemptible_executors (optional)
                - zone_id (optional)
            - idempotency_token (optional)
            - init_scripts (optional, block):
                - abfss (optional, block):
                    - destination (required)
                - dbfs (optional, block):
                    - destination (required)
                - file (optional, block):
                    - destination (required)
                - gcs (optional, block):
                    - destination (required)
                - s3 (optional, block):
                    - canned_acl (optional)
                    - destination (required)
                    - enable_encryption (optional)
                    - encryption_type (optional)
                    - endpoint (optional)
                    - kms_key (optional)
                    - region (optional)
                - volumes (optional, block):
                    - destination (required)
                - workspace (optional, block):
                    - destination (required)
            - instance_pool_id (optional)
            - is_single_node (optional)
            - kind (optional)
            - library (optional, block):
                - cran (optional, block):
                    - package (required)
                    - repo (optional)
                - egg (optional)
                - jar (optional)
                - maven (optional, block):
                    - coordinates (required)
                    - exclusions (optional)
                    - repo (optional)
                - provider_config (optional, block):
                    - workspace_id (optional)
                - pypi (optional, block):
                    - package (required)
                    - repo (optional)
                - requirements (optional)
                - whl (optional)
            - node_type_id (optional)
            - num_workers (optional)
            - policy_id (optional)
            - provider_config (optional, block):
                - workspace_id (optional)
            - remote_disk_throughput (optional)
            - runtime_engine (optional)
            - single_user_name (optional)
            - spark_conf (optional)
            - spark_env_vars (optional)
            - spark_version (optional)
            - ssh_public_keys (optional)
            - total_initial_remote_disk_size (optional)
            - use_ml_runtime (optional)
            - worker_node_type_flexibility (optional, block):
                - alternate_node_type_ids (optional)
                - aws_context_id (optional)
            - workload_type (optional, block):
                - clients (required, block):
                    - jobs (optional)
                    - notebooks (optional)
        - notebook_task (optional, block):
            - base_parameters (optional)
            - notebook_path (required)
            - source (optional)
            - warehouse_id (optional)
        - notification_settings (optional, block):
            - alert_on_last_attempt (optional)
            - no_alert_for_canceled_runs (optional)
            - no_alert_for_skipped_runs (optional)
        - pipeline_task (optional, block):
            - full_refresh (optional)
            - full_refresh_selection (optional)
            - parameters (optional)
            - pipeline_id (required)
            - refresh_flow_selection (optional)
            - refresh_selection (optional)
            - reset_checkpoint_selection (optional)
        - power_bi_task (optional, block):
            - connection_resource_name (optional)
            - power_bi_model (optional, block):
                - authentication_method (optional)
                - model_name (optional)
                - overwrite_existing (optional)
                - storage_mode (optional)
                - workspace_name (optional)
            - refresh_after_update (optional)
            - tables (optional, block):
                - catalog (optional)
                - name (optional)
                - schema (optional)
                - storage_mode (optional)
            - warehouse_id (optional)
        - python_operator_task (optional, block):
            - main (optional)
            - parameters (optional, block):
                - name (optional)
                - value (optional)
        - python_wheel_task (optional, block):
            - entry_point (optional)
            - named_parameters (optional)
            - package_name (optional)
            - parameters (optional)
        - retry_on_timeout (optional)
        - run_if (optional)
        - run_job_task (optional, block):
            - dbt_commands (optional)
            - jar_params (optional)
            - job_id (required)
            - job_parameters (optional)
            - notebook_params (optional)
            - pipeline_params (optional, block):
                - full_refresh (optional)
                - full_refresh_selection (optional)
                - refresh_flow_selection (optional)
                - refresh_selection (optional)
                - reset_checkpoint_selection (optional)
            - python_named_params (optional)
            - python_params (optional)
            - spark_submit_params (optional)
            - sql_params (optional)
        - spark_jar_task (optional, block):
            - jar_uri (optional)
            - main_class_name (optional)
            - parameters (optional)
            - run_as_repl (optional)
        - spark_python_task (optional, block):
            - parameters (optional)
            - python_file (required)
            - source (optional)
        - spark_submit_task (optional, block):
            - parameters (optional)
        - sql_task (optional, block):
            - alert (optional, block):
                - alert_id (required)
                - pause_subscriptions (optional)
                - subscriptions (optional, block):
                    - destination_id (optional)
                    - user_name (optional)
            - dashboard (optional, block):
                - custom_subject (optional)
                - dashboard_id (required)
                - pause_subscriptions (optional)
                - subscriptions (optional, block):
                    - destination_id (optional)
                    - user_name (optional)
            - file (optional, block):
                - path (required)
                - source (optional)
            - parameters (optional)
            - query (optional, block):
                - query_id (required)
            - warehouse_id (required)
        - task_key (required)
        - timeout_seconds (optional)
        - webhook_notifications (optional, block):
            - on_duration_warning_threshold_exceeded (optional, block):
                - id (required)
            - on_failure (optional, block):
                - id (required)
            - on_maintenance_complete (optional, block):
                - id (required)
            - on_maintenance_start (optional, block):
                - id (required)
            - on_start (optional, block):
                - id (required)
            - on_streaming_backlog_exceeded (optional, block):
                - id (required)
            - on_success (optional, block):
                - id (required)
    - timeouts (block):
        - create (optional)
        - update (optional)
    - trigger (block):
        - file_arrival (optional, block):
            - min_time_between_triggers_seconds (optional)
            - url (required)
            - wait_after_last_change_seconds (optional)
        - model (optional, block):
            - aliases (optional)
            - condition (required)
            - min_time_between_triggers_seconds (optional)
            - securable_name (optional)
            - wait_after_last_change_seconds (optional)
        - pause_status (optional)
        - periodic (optional, block):
            - interval (required)
            - unit (required)
        - sql_condition (optional, block):
            - sql_query_id (required)
            - trigger_mode (optional)
            - warehouse_id (required)
        - table_update (optional, block):
            - condition (optional)
            - min_time_between_triggers_seconds (optional)
            - table_names (required)
            - wait_after_last_change_seconds (optional)
    - triggers (block):
        - continuous (optional, block):
            - maintenance_window (optional, block):
                - day_of_week (required)
                - start_hour (required)
                - timezone_id (required)
            - task_retry_mode (optional)
        - file_arrival (optional, block):
            - min_time_between_triggers_seconds (optional)
            - url (required)
            - wait_after_last_change_seconds (optional)
        - model (optional, block):
            - aliases (optional)
            - condition (required)
            - min_time_between_triggers_seconds (optional)
            - securable_name (optional)
            - wait_after_last_change_seconds (optional)
        - pause_status (optional)
        - periodic (optional, block):
            - interval (required)
            - unit (required)
        - schedule (optional, block):
            - quartz_cron_expression (required)
            - timezone_id (required)
        - sql_condition (optional, block):
            - sql_query_id (required)
            - trigger_mode (optional)
            - warehouse_id (required)
        - table_update (optional, block):
            - condition (optional)
            - min_time_between_triggers_seconds (optional)
            - table_names (required)
            - wait_after_last_change_seconds (optional)
    - webhook_notifications (block):
        - on_duration_warning_threshold_exceeded (optional, block):
            - id (required)
        - on_failure (optional, block):
            - id (required)
        - on_maintenance_complete (optional, block):
            - id (required)
        - on_maintenance_start (optional, block):
            - id (required)
        - on_start (optional, block):
            - id (required)
        - on_streaming_backlog_exceeded (optional, block):
            - id (required)
        - on_success (optional, block):
            - id (required)
EOT

  type = map(object({
    always_running            = optional(bool)
    budget_policy_id          = optional(string)
    control_run_state         = optional(bool)
    description               = optional(string)
    edit_mode                 = optional(string)
    existing_cluster_id       = optional(string)
    format                    = optional(string)
    max_concurrent_runs       = optional(number)
    max_retries               = optional(number)
    min_retry_interval_millis = optional(number)
    name                      = optional(string)
    parent_path               = optional(string)
    performance_target        = optional(string)
    retry_on_timeout          = optional(bool)
    tags                      = optional(map(string))
    timeout_seconds           = optional(number)
    usage_policy_id           = optional(string)
    continuous = optional(object({
      maintenance_window = optional(object({
        day_of_week = string
        start_hour  = number
        timezone_id = string
      }))
      pause_status    = optional(string)
      task_retry_mode = optional(string)
    }))
    dbt_task = optional(object({
      catalog            = optional(string)
      commands           = list(string)
      profiles_directory = optional(string)
      project_directory  = optional(string)
      schema             = optional(string)
      source             = optional(string)
      warehouse_id       = optional(string)
    }))
    deployment = optional(object({
      deployment_id      = optional(string)
      kind               = string
      metadata_file_path = optional(string)
      version_id         = optional(string)
    }))
    email_notifications = optional(object({
      no_alert_for_skipped_runs              = optional(bool)
      on_duration_warning_threshold_exceeded = optional(list(string))
      on_failure                             = optional(list(string))
      on_maintenance_complete                = optional(list(string))
      on_maintenance_start                   = optional(list(string))
      on_start                               = optional(list(string))
      on_streaming_backlog_exceeded          = optional(list(string))
      on_success                             = optional(list(string))
    }))
    environment = optional(list(object({
      environment_key = string
      spec = optional(object({
        base_environment    = optional(string)
        client              = optional(string)
        dependencies        = optional(list(string))
        environment_version = optional(string)
        java_dependencies   = optional(list(string))
        project_environment = optional(string)
      }))
    })))
    environment_variables = optional(list(object({
      environment_variables_key = string
      spec = optional(object({
        files     = optional(list(string))
        variables = optional(map(string))
      }))
    })))
    git_source = optional(object({
      branch = optional(string)
      commit = optional(string)
      git_snapshot = optional(object({
        used_commit = optional(string)
      }))
      job_source = optional(object({
        dirty_state            = optional(string)
        import_from_git_branch = string
        job_config_path        = string
      }))
      provider = optional(string)
      sparse_checkout = optional(object({
        patterns = optional(list(string))
      }))
      tag = optional(string)
      url = string
    }))
    health = optional(object({
      rules = list(object({
        metric = string
        op     = string
        value  = number
      }))
    }))
    job_cluster = optional(list(object({
      job_cluster_key = string
      new_cluster = optional(object({
        __apply_policy_default_values_allow_list = optional(list(string))
        apply_policy_default_values              = optional(bool)
        autoscale = optional(object({
          max_workers = optional(number)
          min_workers = optional(number)
        }))
        aws_attributes = optional(object({
          availability           = optional(string)
          ebs_volume_count       = optional(number)
          ebs_volume_iops        = optional(number)
          ebs_volume_size        = optional(number)
          ebs_volume_throughput  = optional(number)
          ebs_volume_type        = optional(string)
          first_on_demand        = optional(number)
          instance_profile_arn   = optional(string)
          spot_bid_price_percent = optional(number)
          zone_id                = optional(string)
        }))
        azure_attributes = optional(object({
          availability               = optional(string)
          capacity_reservation_group = optional(string)
          first_on_demand            = optional(number)
          log_analytics_info = optional(object({
            log_analytics_primary_key  = optional(string)
            log_analytics_workspace_id = optional(string)
          }))
          spot_bid_max_price = optional(number)
        }))
        cluster_id = optional(string)
        cluster_log_conf = optional(object({
          dbfs = optional(object({
            destination = string
          }))
          s3 = optional(object({
            canned_acl        = optional(string)
            destination       = string
            enable_encryption = optional(bool)
            encryption_type   = optional(string)
            endpoint          = optional(string)
            kms_key           = optional(string)
            region            = optional(string)
          }))
          volumes = optional(object({
            destination = string
          }))
        }))
        cluster_mount_info = optional(list(object({
          local_mount_dir_path = string
          network_filesystem_info = object({
            mount_options  = optional(string)
            server_address = string
          })
          remote_mount_dir_path = optional(string)
        })))
        cluster_name       = optional(string)
        custom_tags        = optional(map(string))
        data_security_mode = optional(string)
        dependency_mode    = optional(string)
        docker_image = optional(object({
          basic_auth = optional(object({
            password = string
            username = string
          }))
          url = string
        }))
        driver_instance_pool_id = optional(string)
        driver_node_type_flexibility = optional(object({
          alternate_node_type_ids = optional(list(string))
          aws_context_id          = optional(string)
        }))
        driver_node_type_id          = optional(string)
        enable_elastic_disk          = optional(bool)
        enable_local_disk_encryption = optional(bool)
        gcp_attributes = optional(object({
          availability              = optional(string)
          boot_disk_size            = optional(number)
          confidential_compute_type = optional(string)
          first_on_demand           = optional(number)
          google_service_account    = optional(string)
          local_ssd_count           = optional(number)
          use_preemptible_executors = optional(bool)
          zone_id                   = optional(string)
        }))
        idempotency_token = optional(string)
        init_scripts = optional(list(object({
          abfss = optional(object({
            destination = string
          }))
          dbfs = optional(object({
            destination = string
          }))
          file = optional(object({
            destination = string
          }))
          gcs = optional(object({
            destination = string
          }))
          s3 = optional(object({
            canned_acl        = optional(string)
            destination       = string
            enable_encryption = optional(bool)
            encryption_type   = optional(string)
            endpoint          = optional(string)
            kms_key           = optional(string)
            region            = optional(string)
          }))
          volumes = optional(object({
            destination = string
          }))
          workspace = optional(object({
            destination = string
          }))
        })))
        instance_pool_id = optional(string)
        is_single_node   = optional(bool)
        kind             = optional(string)
        library = optional(list(object({
          cran = optional(object({
            package = string
            repo    = optional(string)
          }))
          egg = optional(string)
          jar = optional(string)
          maven = optional(object({
            coordinates = string
            exclusions  = optional(list(string))
            repo        = optional(string)
          }))
          provider_config = optional(object({
            workspace_id = optional(string)
          }))
          pypi = optional(object({
            package = string
            repo    = optional(string)
          }))
          requirements = optional(string)
          whl          = optional(string)
        })))
        node_type_id = optional(string)
        num_workers  = optional(number)
        policy_id    = optional(string)
        provider_config = optional(object({
          workspace_id = optional(string)
        }))
        remote_disk_throughput         = optional(number)
        runtime_engine                 = optional(string)
        single_user_name               = optional(string)
        spark_conf                     = optional(map(string))
        spark_env_vars                 = optional(map(string))
        spark_version                  = optional(string)
        ssh_public_keys                = optional(list(string))
        total_initial_remote_disk_size = optional(number)
        use_ml_runtime                 = optional(bool)
        worker_node_type_flexibility = optional(object({
          alternate_node_type_ids = optional(list(string))
          aws_context_id          = optional(string)
        }))
        workload_type = optional(object({
          clients = object({
            jobs      = optional(bool)
            notebooks = optional(bool)
          })
        }))
      }))
      serverless_compute_id = optional(string)
    })))
    library = optional(list(object({
      cran = optional(object({
        package = string
        repo    = optional(string)
      }))
      egg = optional(string)
      jar = optional(string)
      maven = optional(object({
        coordinates = string
        exclusions  = optional(list(string))
        repo        = optional(string)
      }))
      provider_config = optional(object({
        workspace_id = optional(string)
      }))
      pypi = optional(object({
        package = string
        repo    = optional(string)
      }))
      requirements = optional(string)
      whl          = optional(string)
    })))
    new_cluster = optional(object({
      apply_policy_default_values = optional(bool)
      autoscale = optional(object({
        max_workers = optional(number)
        min_workers = optional(number)
      }))
      aws_attributes = optional(object({
        availability           = optional(string)
        ebs_volume_count       = optional(number)
        ebs_volume_iops        = optional(number)
        ebs_volume_size        = optional(number)
        ebs_volume_throughput  = optional(number)
        ebs_volume_type        = optional(string)
        first_on_demand        = optional(number)
        instance_profile_arn   = optional(string)
        spot_bid_price_percent = optional(number)
        zone_id                = optional(string)
      }))
      azure_attributes = optional(object({
        availability               = optional(string)
        capacity_reservation_group = optional(string)
        first_on_demand            = optional(number)
        log_analytics_info = optional(object({
          log_analytics_primary_key  = optional(string)
          log_analytics_workspace_id = optional(string)
        }))
        spot_bid_max_price = optional(number)
      }))
      cluster_id = optional(string)
      cluster_log_conf = optional(object({
        dbfs = optional(object({
          destination = string
        }))
        s3 = optional(object({
          canned_acl        = optional(string)
          destination       = string
          enable_encryption = optional(bool)
          encryption_type   = optional(string)
          endpoint          = optional(string)
          kms_key           = optional(string)
          region            = optional(string)
        }))
        volumes = optional(object({
          destination = string
        }))
      }))
      cluster_mount_info = optional(list(object({
        local_mount_dir_path = string
        network_filesystem_info = object({
          mount_options  = optional(string)
          server_address = string
        })
        remote_mount_dir_path = optional(string)
      })))
      cluster_name       = optional(string)
      custom_tags        = optional(map(string))
      data_security_mode = optional(string)
      dependency_mode    = optional(string)
      docker_image = optional(object({
        basic_auth = optional(object({
          password = string
          username = string
        }))
        url = string
      }))
      driver_instance_pool_id = optional(string)
      driver_node_type_flexibility = optional(object({
        alternate_node_type_ids = optional(list(string))
        aws_context_id          = optional(string)
      }))
      driver_node_type_id          = optional(string)
      enable_elastic_disk          = optional(bool)
      enable_local_disk_encryption = optional(bool)
      gcp_attributes = optional(object({
        availability              = optional(string)
        boot_disk_size            = optional(number)
        confidential_compute_type = optional(string)
        first_on_demand           = optional(number)
        google_service_account    = optional(string)
        local_ssd_count           = optional(number)
        use_preemptible_executors = optional(bool)
        zone_id                   = optional(string)
      }))
      idempotency_token = optional(string)
      init_scripts = optional(list(object({
        abfss = optional(object({
          destination = string
        }))
        dbfs = optional(object({
          destination = string
        }))
        file = optional(object({
          destination = string
        }))
        gcs = optional(object({
          destination = string
        }))
        s3 = optional(object({
          canned_acl        = optional(string)
          destination       = string
          enable_encryption = optional(bool)
          encryption_type   = optional(string)
          endpoint          = optional(string)
          kms_key           = optional(string)
          region            = optional(string)
        }))
        volumes = optional(object({
          destination = string
        }))
        workspace = optional(object({
          destination = string
        }))
      })))
      instance_pool_id = optional(string)
      is_single_node   = optional(bool)
      kind             = optional(string)
      library = optional(list(object({
        cran = optional(object({
          package = string
          repo    = optional(string)
        }))
        egg = optional(string)
        jar = optional(string)
        maven = optional(object({
          coordinates = string
          exclusions  = optional(list(string))
          repo        = optional(string)
        }))
        provider_config = optional(object({
          workspace_id = optional(string)
        }))
        pypi = optional(object({
          package = string
          repo    = optional(string)
        }))
        requirements = optional(string)
        whl          = optional(string)
      })))
      node_type_id = optional(string)
      num_workers  = optional(number)
      policy_id    = optional(string)
      provider_config = optional(object({
        workspace_id = optional(string)
      }))
      remote_disk_throughput         = optional(number)
      runtime_engine                 = optional(string)
      single_user_name               = optional(string)
      spark_conf                     = optional(map(string))
      spark_env_vars                 = optional(map(string))
      spark_version                  = optional(string)
      ssh_public_keys                = optional(list(string))
      total_initial_remote_disk_size = optional(number)
      use_ml_runtime                 = optional(bool)
      worker_node_type_flexibility = optional(object({
        alternate_node_type_ids = optional(list(string))
        aws_context_id          = optional(string)
      }))
      workload_type = optional(object({
        clients = object({
          jobs      = optional(bool)
          notebooks = optional(bool)
        })
      }))
    }))
    notebook_task = optional(object({
      base_parameters = optional(map(string))
      notebook_path   = string
      source          = optional(string)
      warehouse_id    = optional(string)
    }))
    notification_settings = optional(object({
      no_alert_for_canceled_runs = optional(bool)
      no_alert_for_skipped_runs  = optional(bool)
    }))
    parameter = optional(list(object({
      default = string
      name    = string
    })))
    pipeline_task = optional(object({
      full_refresh = optional(bool)
      pipeline_id  = string
    }))
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
    python_wheel_task = optional(object({
      entry_point      = optional(string)
      named_parameters = optional(map(string))
      package_name     = optional(string)
      parameters       = optional(list(string))
    }))
    queue = optional(object({
      enabled = bool
    }))
    run_as = optional(object({
      group_name             = optional(string)
      service_principal_name = optional(string)
      user_name              = optional(string)
    }))
    run_job_task = optional(object({
      job_id         = number
      job_parameters = optional(map(string))
    }))
    schedule = optional(object({
      pause_status           = optional(string)
      quartz_cron_expression = string
      sql_condition = optional(object({
        sql_query_id = string
        trigger_mode = optional(string)
        warehouse_id = string
      }))
      timezone_id = string
    }))
    spark_jar_task = optional(object({
      jar_uri         = optional(string)
      main_class_name = optional(string)
      parameters      = optional(list(string))
    }))
    spark_python_task = optional(object({
      parameters  = optional(list(string))
      python_file = string
      source      = optional(string)
    }))
    spark_submit_task = optional(object({
      parameters = optional(list(string))
    }))
    task = optional(list(object({
      ai_runtime_task = optional(object({
        code_source_path = optional(string)
        deployments = list(object({
          command_path = optional(string)
          compute = object({
            accelerator_count       = number
            accelerator_type        = string
            provisioned_capacity_id = optional(string)
          })
          name = optional(string)
        }))
        docker_image_url            = optional(string)
        experiment                  = string
        mlflow_artifact_location    = optional(string)
        mlflow_experiment_directory = optional(string)
        mlflow_run                  = optional(string)
        priority_class              = optional(string)
        unity_catalog_image_path    = optional(string)
      }))
      alert_task = optional(object({
        alert_id   = optional(string)
        parameters = optional(map(string))
        subscribers = optional(list(object({
          destination_id = optional(string)
          user_name      = optional(string)
        })))
        warehouse_id   = optional(string)
        workspace_path = optional(string)
      }))
      clean_rooms_notebook_task = optional(object({
        clean_room_name          = string
        etag                     = optional(string)
        notebook_base_parameters = optional(map(string))
        notebook_name            = string
      }))
      compute = optional(object({
        hardware_accelerator = optional(string)
      }))
      condition_task = optional(object({
        left  = string
        op    = string
        right = string
      }))
      dashboard_task = optional(object({
        dashboard_id = optional(string)
        filters      = optional(map(string))
        subscription = optional(object({
          custom_subject = optional(string)
          paused         = optional(bool)
          subscribers = optional(list(object({
            destination_id = optional(string)
            user_name      = optional(string)
          })))
        }))
        warehouse_id = optional(string)
      }))
      dbt_cloud_task = optional(object({
        connection_resource_name = optional(string)
        dbt_cloud_job_id         = optional(number)
      }))
      dbt_platform_task = optional(object({
        connection_resource_name = optional(string)
        dbt_platform_job_id      = optional(string)
      }))
      dbt_task = optional(object({
        catalog            = optional(string)
        commands           = list(string)
        profiles_directory = optional(string)
        project_directory  = optional(string)
        schema             = optional(string)
        source             = optional(string)
        warehouse_id       = optional(string)
      }))
      depends_on = optional(list(object({
        outcome  = optional(string)
        task_key = string
      })))
      description               = optional(string)
      disable_auto_optimization = optional(bool)
      disabled                  = optional(bool)
      email_notifications = optional(object({
        no_alert_for_skipped_runs              = optional(bool)
        on_duration_warning_threshold_exceeded = optional(list(string))
        on_failure                             = optional(list(string))
        on_maintenance_complete                = optional(list(string))
        on_maintenance_start                   = optional(list(string))
        on_start                               = optional(list(string))
        on_streaming_backlog_exceeded          = optional(list(string))
        on_success                             = optional(list(string))
      }))
      environment_key           = optional(string)
      environment_variables_key = optional(string)
      existing_cluster_id       = optional(string)
      for_each_task = optional(object({
        concurrency = optional(number)
        inputs      = string
        task = object({
          ai_runtime_task = optional(object({
            code_source_path = optional(string)
            deployments = list(object({
              command_path = optional(string)
              compute = object({
                accelerator_count       = number
                accelerator_type        = string
                provisioned_capacity_id = optional(string)
              })
              name = optional(string)
            }))
            docker_image_url            = optional(string)
            experiment                  = string
            mlflow_artifact_location    = optional(string)
            mlflow_experiment_directory = optional(string)
            mlflow_run                  = optional(string)
            priority_class              = optional(string)
            unity_catalog_image_path    = optional(string)
          }))
          alert_task = optional(object({
            alert_id   = optional(string)
            parameters = optional(map(string))
            subscribers = optional(list(object({
              destination_id = optional(string)
              user_name      = optional(string)
            })))
            warehouse_id   = optional(string)
            workspace_path = optional(string)
          }))
          clean_rooms_notebook_task = optional(object({
            clean_room_name          = string
            etag                     = optional(string)
            notebook_base_parameters = optional(map(string))
            notebook_name            = string
          }))
          compute = optional(object({
            hardware_accelerator = optional(string)
          }))
          condition_task = optional(object({
            left  = string
            op    = string
            right = string
          }))
          dashboard_task = optional(object({
            dashboard_id = optional(string)
            filters      = optional(map(string))
            subscription = optional(object({
              custom_subject = optional(string)
              paused         = optional(bool)
              subscribers = optional(list(object({
                destination_id = optional(string)
                user_name      = optional(string)
              })))
            }))
            warehouse_id = optional(string)
          }))
          dbt_cloud_task = optional(object({
            connection_resource_name = optional(string)
            dbt_cloud_job_id         = optional(number)
          }))
          dbt_platform_task = optional(object({
            connection_resource_name = optional(string)
            dbt_platform_job_id      = optional(string)
          }))
          dbt_task = optional(object({
            catalog            = optional(string)
            commands           = list(string)
            profiles_directory = optional(string)
            project_directory  = optional(string)
            schema             = optional(string)
            source             = optional(string)
            warehouse_id       = optional(string)
          }))
          depends_on = optional(list(object({
            outcome  = optional(string)
            task_key = string
          })))
          description               = optional(string)
          disable_auto_optimization = optional(bool)
          disabled                  = optional(bool)
          email_notifications = optional(object({
            no_alert_for_skipped_runs              = optional(bool)
            on_duration_warning_threshold_exceeded = optional(list(string))
            on_failure                             = optional(list(string))
            on_maintenance_complete                = optional(list(string))
            on_maintenance_start                   = optional(list(string))
            on_start                               = optional(list(string))
            on_streaming_backlog_exceeded          = optional(list(string))
            on_success                             = optional(list(string))
          }))
          environment_key           = optional(string)
          environment_variables_key = optional(string)
          existing_cluster_id       = optional(string)
          gen_ai_compute_task = optional(object({
            command = optional(string)
            compute = optional(object({
              gpu_node_pool_id = optional(string)
              gpu_type         = optional(string)
              num_gpus         = number
            }))
            dl_runtime_image          = string
            mlflow_experiment_name    = optional(string)
            source                    = optional(string)
            training_script_path      = optional(string)
            yaml_parameters           = optional(string)
            yaml_parameters_file_path = optional(string)
          }))
          health = optional(object({
            rules = list(object({
              metric = string
              op     = string
              value  = number
            }))
          }))
          job_cluster_key = optional(string)
          library = optional(list(object({
            cran = optional(object({
              package = string
              repo    = optional(string)
            }))
            egg = optional(string)
            jar = optional(string)
            maven = optional(object({
              coordinates = string
              exclusions  = optional(list(string))
              repo        = optional(string)
            }))
            provider_config = optional(object({
              workspace_id = optional(string)
            }))
            pypi = optional(object({
              package = string
              repo    = optional(string)
            }))
            requirements = optional(string)
            whl          = optional(string)
          })))
          max_retries               = optional(number)
          min_retry_interval_millis = optional(number)
          new_cluster = optional(object({
            apply_policy_default_values = optional(bool)
            autoscale = optional(object({
              max_workers = optional(number)
              min_workers = optional(number)
            }))
            aws_attributes = optional(object({
              availability           = optional(string)
              ebs_volume_count       = optional(number)
              ebs_volume_iops        = optional(number)
              ebs_volume_size        = optional(number)
              ebs_volume_throughput  = optional(number)
              ebs_volume_type        = optional(string)
              first_on_demand        = optional(number)
              instance_profile_arn   = optional(string)
              spot_bid_price_percent = optional(number)
              zone_id                = optional(string)
            }))
            azure_attributes = optional(object({
              availability               = optional(string)
              capacity_reservation_group = optional(string)
              first_on_demand            = optional(number)
              log_analytics_info = optional(object({
                log_analytics_primary_key  = optional(string)
                log_analytics_workspace_id = optional(string)
              }))
              spot_bid_max_price = optional(number)
            }))
            cluster_id = optional(string)
            cluster_log_conf = optional(object({
              dbfs = optional(object({
                destination = string
              }))
              s3 = optional(object({
                canned_acl        = optional(string)
                destination       = string
                enable_encryption = optional(bool)
                encryption_type   = optional(string)
                endpoint          = optional(string)
                kms_key           = optional(string)
                region            = optional(string)
              }))
              volumes = optional(object({
                destination = string
              }))
            }))
            cluster_mount_info = optional(list(object({
              local_mount_dir_path = string
              network_filesystem_info = object({
                mount_options  = optional(string)
                server_address = string
              })
              remote_mount_dir_path = optional(string)
            })))
            cluster_name       = optional(string)
            custom_tags        = optional(map(string))
            data_security_mode = optional(string)
            dependency_mode    = optional(string)
            docker_image = optional(object({
              basic_auth = optional(object({
                password = string
                username = string
              }))
              url = string
            }))
            driver_instance_pool_id = optional(string)
            driver_node_type_flexibility = optional(object({
              alternate_node_type_ids = optional(list(string))
              aws_context_id          = optional(string)
            }))
            driver_node_type_id          = optional(string)
            enable_elastic_disk          = optional(bool)
            enable_local_disk_encryption = optional(bool)
            gcp_attributes = optional(object({
              availability              = optional(string)
              boot_disk_size            = optional(number)
              confidential_compute_type = optional(string)
              first_on_demand           = optional(number)
              google_service_account    = optional(string)
              local_ssd_count           = optional(number)
              use_preemptible_executors = optional(bool)
              zone_id                   = optional(string)
            }))
            idempotency_token = optional(string)
            init_scripts = optional(list(object({
              abfss = optional(object({
                destination = string
              }))
              dbfs = optional(object({
                destination = string
              }))
              file = optional(object({
                destination = string
              }))
              gcs = optional(object({
                destination = string
              }))
              s3 = optional(object({
                canned_acl        = optional(string)
                destination       = string
                enable_encryption = optional(bool)
                encryption_type   = optional(string)
                endpoint          = optional(string)
                kms_key           = optional(string)
                region            = optional(string)
              }))
              volumes = optional(object({
                destination = string
              }))
              workspace = optional(object({
                destination = string
              }))
            })))
            instance_pool_id = optional(string)
            is_single_node   = optional(bool)
            kind             = optional(string)
            library = optional(list(object({
              cran = optional(object({
                package = string
                repo    = optional(string)
              }))
              egg = optional(string)
              jar = optional(string)
              maven = optional(object({
                coordinates = string
                exclusions  = optional(list(string))
                repo        = optional(string)
              }))
              provider_config = optional(object({
                workspace_id = optional(string)
              }))
              pypi = optional(object({
                package = string
                repo    = optional(string)
              }))
              requirements = optional(string)
              whl          = optional(string)
            })))
            node_type_id = optional(string)
            num_workers  = optional(number)
            policy_id    = optional(string)
            provider_config = optional(object({
              workspace_id = optional(string)
            }))
            remote_disk_throughput         = optional(number)
            runtime_engine                 = optional(string)
            single_user_name               = optional(string)
            spark_conf                     = optional(map(string))
            spark_env_vars                 = optional(map(string))
            spark_version                  = optional(string)
            ssh_public_keys                = optional(list(string))
            total_initial_remote_disk_size = optional(number)
            use_ml_runtime                 = optional(bool)
            worker_node_type_flexibility = optional(object({
              alternate_node_type_ids = optional(list(string))
              aws_context_id          = optional(string)
            }))
            workload_type = optional(object({
              clients = object({
                jobs      = optional(bool)
                notebooks = optional(bool)
              })
            }))
          }))
          notebook_task = optional(object({
            base_parameters = optional(map(string))
            notebook_path   = string
            source          = optional(string)
            warehouse_id    = optional(string)
          }))
          notification_settings = optional(object({
            alert_on_last_attempt      = optional(bool)
            no_alert_for_canceled_runs = optional(bool)
            no_alert_for_skipped_runs  = optional(bool)
          }))
          pipeline_task = optional(object({
            full_refresh               = optional(bool)
            full_refresh_selection     = optional(list(string))
            parameters                 = optional(map(string))
            pipeline_id                = string
            refresh_flow_selection     = optional(list(string))
            refresh_selection          = optional(list(string))
            reset_checkpoint_selection = optional(list(string))
          }))
          power_bi_task = optional(object({
            connection_resource_name = optional(string)
            power_bi_model = optional(object({
              authentication_method = optional(string)
              model_name            = optional(string)
              overwrite_existing    = optional(bool)
              storage_mode          = optional(string)
              workspace_name        = optional(string)
            }))
            refresh_after_update = optional(bool)
            tables = optional(list(object({
              catalog      = optional(string)
              name         = optional(string)
              schema       = optional(string)
              storage_mode = optional(string)
            })))
            warehouse_id = optional(string)
          }))
          python_operator_task = optional(object({
            main = optional(string)
            parameters = optional(list(object({
              name  = optional(string)
              value = optional(string)
            })))
          }))
          python_wheel_task = optional(object({
            entry_point      = optional(string)
            named_parameters = optional(map(string))
            package_name     = optional(string)
            parameters       = optional(list(string))
          }))
          retry_on_timeout = optional(bool)
          run_if           = optional(string)
          run_job_task = optional(object({
            dbt_commands    = optional(list(string))
            jar_params      = optional(list(string))
            job_id          = number
            job_parameters  = optional(map(string))
            notebook_params = optional(map(string))
            pipeline_params = optional(object({
              full_refresh               = optional(bool)
              full_refresh_selection     = optional(list(string))
              refresh_flow_selection     = optional(list(string))
              refresh_selection          = optional(list(string))
              reset_checkpoint_selection = optional(list(string))
            }))
            python_named_params = optional(map(string))
            python_params       = optional(list(string))
            spark_submit_params = optional(list(string))
            sql_params          = optional(map(string))
          }))
          spark_jar_task = optional(object({
            jar_uri         = optional(string)
            main_class_name = optional(string)
            parameters      = optional(list(string))
            run_as_repl     = optional(bool)
          }))
          spark_python_task = optional(object({
            parameters  = optional(list(string))
            python_file = string
            source      = optional(string)
          }))
          spark_submit_task = optional(object({
            parameters = optional(list(string))
          }))
          sql_task = optional(object({
            alert = optional(object({
              alert_id            = string
              pause_subscriptions = optional(bool)
              subscriptions = optional(list(object({
                destination_id = optional(string)
                user_name      = optional(string)
              })))
            }))
            dashboard = optional(object({
              custom_subject      = optional(string)
              dashboard_id        = string
              pause_subscriptions = optional(bool)
              subscriptions = optional(list(object({
                destination_id = optional(string)
                user_name      = optional(string)
              })))
            }))
            file = optional(object({
              path   = string
              source = optional(string)
            }))
            parameters = optional(map(string))
            query = optional(object({
              query_id = string
            }))
            warehouse_id = string
          }))
          task_key        = string
          timeout_seconds = optional(number)
          webhook_notifications = optional(object({
            on_duration_warning_threshold_exceeded = optional(list(object({
              id = string
            })))
            on_failure = optional(list(object({
              id = string
            })))
            on_maintenance_complete = optional(list(object({
              id = string
            })))
            on_maintenance_start = optional(list(object({
              id = string
            })))
            on_start = optional(list(object({
              id = string
            })))
            on_streaming_backlog_exceeded = optional(list(object({
              id = string
            })))
            on_success = optional(list(object({
              id = string
            })))
          }))
        })
      }))
      gen_ai_compute_task = optional(object({
        command = optional(string)
        compute = optional(object({
          gpu_node_pool_id = optional(string)
          gpu_type         = optional(string)
          num_gpus         = number
        }))
        dl_runtime_image          = string
        mlflow_experiment_name    = optional(string)
        source                    = optional(string)
        training_script_path      = optional(string)
        yaml_parameters           = optional(string)
        yaml_parameters_file_path = optional(string)
      }))
      health = optional(object({
        rules = list(object({
          metric = string
          op     = string
          value  = number
        }))
      }))
      job_cluster_key = optional(string)
      library = optional(list(object({
        cran = optional(object({
          package = string
          repo    = optional(string)
        }))
        egg = optional(string)
        jar = optional(string)
        maven = optional(object({
          coordinates = string
          exclusions  = optional(list(string))
          repo        = optional(string)
        }))
        provider_config = optional(object({
          workspace_id = optional(string)
        }))
        pypi = optional(object({
          package = string
          repo    = optional(string)
        }))
        requirements = optional(string)
        whl          = optional(string)
      })))
      max_retries               = optional(number)
      min_retry_interval_millis = optional(number)
      new_cluster = optional(object({
        __apply_policy_default_values_allow_list = optional(list(string))
        apply_policy_default_values              = optional(bool)
        autoscale = optional(object({
          max_workers = optional(number)
          min_workers = optional(number)
        }))
        aws_attributes = optional(object({
          availability           = optional(string)
          ebs_volume_count       = optional(number)
          ebs_volume_iops        = optional(number)
          ebs_volume_size        = optional(number)
          ebs_volume_throughput  = optional(number)
          ebs_volume_type        = optional(string)
          first_on_demand        = optional(number)
          instance_profile_arn   = optional(string)
          spot_bid_price_percent = optional(number)
          zone_id                = optional(string)
        }))
        azure_attributes = optional(object({
          availability               = optional(string)
          capacity_reservation_group = optional(string)
          first_on_demand            = optional(number)
          log_analytics_info = optional(object({
            log_analytics_primary_key  = optional(string)
            log_analytics_workspace_id = optional(string)
          }))
          spot_bid_max_price = optional(number)
        }))
        cluster_id = optional(string)
        cluster_log_conf = optional(object({
          dbfs = optional(object({
            destination = string
          }))
          s3 = optional(object({
            canned_acl        = optional(string)
            destination       = string
            enable_encryption = optional(bool)
            encryption_type   = optional(string)
            endpoint          = optional(string)
            kms_key           = optional(string)
            region            = optional(string)
          }))
          volumes = optional(object({
            destination = string
          }))
        }))
        cluster_mount_info = optional(list(object({
          local_mount_dir_path = string
          network_filesystem_info = object({
            mount_options  = optional(string)
            server_address = string
          })
          remote_mount_dir_path = optional(string)
        })))
        cluster_name       = optional(string)
        custom_tags        = optional(map(string))
        data_security_mode = optional(string)
        dependency_mode    = optional(string)
        docker_image = optional(object({
          basic_auth = optional(object({
            password = string
            username = string
          }))
          url = string
        }))
        driver_instance_pool_id = optional(string)
        driver_node_type_flexibility = optional(object({
          alternate_node_type_ids = optional(list(string))
          aws_context_id          = optional(string)
        }))
        driver_node_type_id          = optional(string)
        enable_elastic_disk          = optional(bool)
        enable_local_disk_encryption = optional(bool)
        gcp_attributes = optional(object({
          availability              = optional(string)
          boot_disk_size            = optional(number)
          confidential_compute_type = optional(string)
          first_on_demand           = optional(number)
          google_service_account    = optional(string)
          local_ssd_count           = optional(number)
          use_preemptible_executors = optional(bool)
          zone_id                   = optional(string)
        }))
        idempotency_token = optional(string)
        init_scripts = optional(list(object({
          abfss = optional(object({
            destination = string
          }))
          dbfs = optional(object({
            destination = string
          }))
          file = optional(object({
            destination = string
          }))
          gcs = optional(object({
            destination = string
          }))
          s3 = optional(object({
            canned_acl        = optional(string)
            destination       = string
            enable_encryption = optional(bool)
            encryption_type   = optional(string)
            endpoint          = optional(string)
            kms_key           = optional(string)
            region            = optional(string)
          }))
          volumes = optional(object({
            destination = string
          }))
          workspace = optional(object({
            destination = string
          }))
        })))
        instance_pool_id = optional(string)
        is_single_node   = optional(bool)
        kind             = optional(string)
        library = optional(list(object({
          cran = optional(object({
            package = string
            repo    = optional(string)
          }))
          egg = optional(string)
          jar = optional(string)
          maven = optional(object({
            coordinates = string
            exclusions  = optional(list(string))
            repo        = optional(string)
          }))
          provider_config = optional(object({
            workspace_id = optional(string)
          }))
          pypi = optional(object({
            package = string
            repo    = optional(string)
          }))
          requirements = optional(string)
          whl          = optional(string)
        })))
        node_type_id = optional(string)
        num_workers  = optional(number)
        policy_id    = optional(string)
        provider_config = optional(object({
          workspace_id = optional(string)
        }))
        remote_disk_throughput         = optional(number)
        runtime_engine                 = optional(string)
        single_user_name               = optional(string)
        spark_conf                     = optional(map(string))
        spark_env_vars                 = optional(map(string))
        spark_version                  = optional(string)
        ssh_public_keys                = optional(list(string))
        total_initial_remote_disk_size = optional(number)
        use_ml_runtime                 = optional(bool)
        worker_node_type_flexibility = optional(object({
          alternate_node_type_ids = optional(list(string))
          aws_context_id          = optional(string)
        }))
        workload_type = optional(object({
          clients = object({
            jobs      = optional(bool)
            notebooks = optional(bool)
          })
        }))
      }))
      notebook_task = optional(object({
        base_parameters = optional(map(string))
        notebook_path   = string
        source          = optional(string)
        warehouse_id    = optional(string)
      }))
      notification_settings = optional(object({
        alert_on_last_attempt      = optional(bool)
        no_alert_for_canceled_runs = optional(bool)
        no_alert_for_skipped_runs  = optional(bool)
      }))
      pipeline_task = optional(object({
        full_refresh               = optional(bool)
        full_refresh_selection     = optional(list(string))
        parameters                 = optional(map(string))
        pipeline_id                = string
        refresh_flow_selection     = optional(list(string))
        refresh_selection          = optional(list(string))
        reset_checkpoint_selection = optional(list(string))
      }))
      power_bi_task = optional(object({
        connection_resource_name = optional(string)
        power_bi_model = optional(object({
          authentication_method = optional(string)
          model_name            = optional(string)
          overwrite_existing    = optional(bool)
          storage_mode          = optional(string)
          workspace_name        = optional(string)
        }))
        refresh_after_update = optional(bool)
        tables = optional(list(object({
          catalog      = optional(string)
          name         = optional(string)
          schema       = optional(string)
          storage_mode = optional(string)
        })))
        warehouse_id = optional(string)
      }))
      python_operator_task = optional(object({
        main = optional(string)
        parameters = optional(list(object({
          name  = optional(string)
          value = optional(string)
        })))
      }))
      python_wheel_task = optional(object({
        entry_point      = optional(string)
        named_parameters = optional(map(string))
        package_name     = optional(string)
        parameters       = optional(list(string))
      }))
      retry_on_timeout = optional(bool)
      run_if           = optional(string)
      run_job_task = optional(object({
        dbt_commands    = optional(list(string))
        jar_params      = optional(list(string))
        job_id          = number
        job_parameters  = optional(map(string))
        notebook_params = optional(map(string))
        pipeline_params = optional(object({
          full_refresh               = optional(bool)
          full_refresh_selection     = optional(list(string))
          refresh_flow_selection     = optional(list(string))
          refresh_selection          = optional(list(string))
          reset_checkpoint_selection = optional(list(string))
        }))
        python_named_params = optional(map(string))
        python_params       = optional(list(string))
        spark_submit_params = optional(list(string))
        sql_params          = optional(map(string))
      }))
      spark_jar_task = optional(object({
        jar_uri         = optional(string)
        main_class_name = optional(string)
        parameters      = optional(list(string))
        run_as_repl     = optional(bool)
      }))
      spark_python_task = optional(object({
        parameters  = optional(list(string))
        python_file = string
        source      = optional(string)
      }))
      spark_submit_task = optional(object({
        parameters = optional(list(string))
      }))
      sql_task = optional(object({
        alert = optional(object({
          alert_id            = string
          pause_subscriptions = optional(bool)
          subscriptions = optional(list(object({
            destination_id = optional(string)
            user_name      = optional(string)
          })))
        }))
        dashboard = optional(object({
          custom_subject      = optional(string)
          dashboard_id        = string
          pause_subscriptions = optional(bool)
          subscriptions = optional(list(object({
            destination_id = optional(string)
            user_name      = optional(string)
          })))
        }))
        file = optional(object({
          path   = string
          source = optional(string)
        }))
        parameters = optional(map(string))
        query = optional(object({
          query_id = string
        }))
        warehouse_id = string
      }))
      task_key        = string
      timeout_seconds = optional(number)
      webhook_notifications = optional(object({
        on_duration_warning_threshold_exceeded = optional(list(object({
          id = string
        })))
        on_failure = optional(list(object({
          id = string
        })))
        on_maintenance_complete = optional(list(object({
          id = string
        })))
        on_maintenance_start = optional(list(object({
          id = string
        })))
        on_start = optional(list(object({
          id = string
        })))
        on_streaming_backlog_exceeded = optional(list(object({
          id = string
        })))
        on_success = optional(list(object({
          id = string
        })))
      }))
    })))
    timeouts = optional(object({
      create = optional(string)
      update = optional(string)
    }))
    trigger = optional(object({
      file_arrival = optional(object({
        min_time_between_triggers_seconds = optional(number)
        url                               = string
        wait_after_last_change_seconds    = optional(number)
      }))
      model = optional(object({
        aliases                           = optional(list(string))
        condition                         = string
        min_time_between_triggers_seconds = optional(number)
        securable_name                    = optional(string)
        wait_after_last_change_seconds    = optional(number)
      }))
      pause_status = optional(string)
      periodic = optional(object({
        interval = number
        unit     = string
      }))
      sql_condition = optional(object({
        sql_query_id = string
        trigger_mode = optional(string)
        warehouse_id = string
      }))
      table_update = optional(object({
        condition                         = optional(string)
        min_time_between_triggers_seconds = optional(number)
        table_names                       = list(string)
        wait_after_last_change_seconds    = optional(number)
      }))
    }))
    triggers = optional(list(object({
      continuous = optional(object({
        maintenance_window = optional(object({
          day_of_week = string
          start_hour  = number
          timezone_id = string
        }))
        task_retry_mode = optional(string)
      }))
      file_arrival = optional(object({
        min_time_between_triggers_seconds = optional(number)
        url                               = string
        wait_after_last_change_seconds    = optional(number)
      }))
      model = optional(object({
        aliases                           = optional(list(string))
        condition                         = string
        min_time_between_triggers_seconds = optional(number)
        securable_name                    = optional(string)
        wait_after_last_change_seconds    = optional(number)
      }))
      pause_status = optional(string)
      periodic = optional(object({
        interval = number
        unit     = string
      }))
      schedule = optional(object({
        quartz_cron_expression = string
        timezone_id            = string
      }))
      sql_condition = optional(object({
        sql_query_id = string
        trigger_mode = optional(string)
        warehouse_id = string
      }))
      table_update = optional(object({
        condition                         = optional(string)
        min_time_between_triggers_seconds = optional(number)
        table_names                       = list(string)
        wait_after_last_change_seconds    = optional(number)
      }))
    })))
    webhook_notifications = optional(object({
      on_duration_warning_threshold_exceeded = optional(list(object({
        id = string
      })))
      on_failure = optional(list(object({
        id = string
      })))
      on_maintenance_complete = optional(list(object({
        id = string
      })))
      on_maintenance_start = optional(list(object({
        id = string
      })))
      on_start = optional(list(object({
        id = string
      })))
      on_streaming_backlog_exceeded = optional(list(object({
        id = string
      })))
      on_success = optional(list(object({
        id = string
      })))
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.jobs : (
        v.health == null || (length(v.health.rules) >= 1)
      )
    ])
    error_message = "Each rules list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.jobs : (
        v.job_cluster == null || alltrue([for item in v.job_cluster : (item.new_cluster == null || (item.new_cluster.init_scripts == null || (length(item.new_cluster.init_scripts) <= 10)))])
      )
    ])
    error_message = "Each init_scripts list must contain at most 10 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.jobs : (
        v.new_cluster == null || (v.new_cluster.init_scripts == null || (length(v.new_cluster.init_scripts) <= 10))
      )
    ])
    error_message = "Each init_scripts list must contain at most 10 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.jobs : (
        v.task == null || alltrue([for item in v.task : (item.ai_runtime_task == null || (length(item.ai_runtime_task.deployments) >= 1))])
      )
    ])
    error_message = "Each deployments list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.jobs : (
        v.task == null || alltrue([for item in v.task : (item.for_each_task == null || (item.for_each_task.task.ai_runtime_task == null || (length(item.for_each_task.task.ai_runtime_task.deployments) >= 1)))])
      )
    ])
    error_message = "Each deployments list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.jobs : (
        v.task == null || alltrue([for item in v.task : (item.for_each_task == null || (item.for_each_task.task.health == null || (length(item.for_each_task.task.health.rules) >= 1)))])
      )
    ])
    error_message = "Each rules list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.jobs : (
        v.task == null || alltrue([for item in v.task : (item.for_each_task == null || (item.for_each_task.task.new_cluster == null || (item.for_each_task.task.new_cluster.init_scripts == null || (length(item.for_each_task.task.new_cluster.init_scripts) <= 10))))])
      )
    ])
    error_message = "Each init_scripts list must contain at most 10 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.jobs : (
        v.task == null || alltrue([for item in v.task : (item.health == null || (length(item.health.rules) >= 1))])
      )
    ])
    error_message = "Each rules list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.jobs : (
        v.task == null || alltrue([for item in v.task : (item.new_cluster == null || (item.new_cluster.init_scripts == null || (length(item.new_cluster.init_scripts) <= 10)))])
      )
    ])
    error_message = "Each init_scripts list must contain at most 10 items"
  }
}

