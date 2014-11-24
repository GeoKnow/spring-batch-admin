<#import "/spring.ftl" as spring />
<#if jobExecutions?? && jobExecutions?size!=0>
"jobExecutions" : [
  <#list jobExecutions as jobExecutionInfo>
    <#assign url><@spring.url relativeUrl="${servletPath}/jobs/executions/${jobExecutionInfo.id}.json"/></#assign>
     {
      "id" : "${jobExecutionInfo.jobId}",
      "name" : "${jobExecutionInfo.name}",
      "status" : "${jobExecutionInfo.jobExecution.status}",
      "startTime" : "${jobExecutionInfo.startTime}",
      "duration" : "${jobExecutionInfo.duration}",
      "resource" : "${baseUrl}${url}",
      "jobParameters" : {
        <#assign params=jobExecutionInfo.jobParameters/>
        <#list params?keys as param>
          "${param}" : "${params[param]}"
          <#if param_index != params?size-1>,</#if>
        </#list>
      }
    }
    <#if jobExecutionInfo_index != jobExecutions?size-1>,</#if>
  </#list>
  ]
  <#if nextJobExecution?? || previousJobExecution??>,
  "page" : {
    "start" : ${startJobExecution},
    "end" : ${endJobExecution},
    "total" : ${totalJobExecutions}<#if nextJobExecution??>, 
    "next" : "${servletPath}/jobs/executions.json?startJobExecution=${nextJobExecution?c}&pageSize=${pageSize!20}"</#if><#if previousJobExecution??>,
    "previous" : "${servletPath}/jobs/executions.json?startJobExecution=${previousJobExecution?c}&pageSize=${pageSize!20}"</#if>
  }
  </#if>
</#if>