Jobs
****

Sample code from Joe!

::

  BEGIN TRANSACTION
  DECLARE @last_step_number INT
  DECLARE @ReturnCode INT
  SELECT @ReturnCode = 0

  SET @last_step_number = 4

  EXEC @ReturnCode = msdb.dbo.sp_add_jobstep @job_name = 'promo_reports', @step_name=N'report_promo_sms',
              @step_id=7,
              @cmdexec_success_code=0,
              @on_success_action=1,
              @on_success_step_id=2,
              @on_fail_action=2,
              @on_fail_step_id=2,
              @retry_attempts=2,
              @retry_interval=5,
              @os_run_priority=0, @subsystem=N'TSQL',
              @command=N'declare @body1 varchar(200)
  set @body1 = ''Please find attached the weekly SMS report for "VOTE". Thanks''

  EXEC msdb.dbo.sp_send_dbmail @recipients=''mail1@me.com;mail2@me.com'',
      @subject = ''Promo VOTE Weekly SMS Report'',
      @body = @body1,
        @attach_query_result_as_file=1,
        @query_attachment_filename=''messages.csv'',
        @execute_query_database=''mydb'',
        @exclude_query_output=1,
        @query_result_header=0,
        @query_result_separator='','',
        @query =''set nocount on; EXEC report_promo_sms null, null, null''',
              @database_name=N'mydb',
              @flags=0
  IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback

  EXEC @ReturnCode = msdb.dbo.sp_update_jobstep @job_name = 'promo_reports', @step_id = 6, @on_success_action=3
  IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback

  COMMIT TRANSACTION
  GOTO EndSave
  QuitWithRollback:
      IF (@@TRANCOUNT > 0) ROLLBACK TRANSACTION
  EndSave:

