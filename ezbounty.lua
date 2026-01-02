[CRITICAL] 2024-01-03 14:22:01 - Server Connection Refused
GET /api/v1/user/data returned 404 (Not Found)
Origin: 192.168.1.105
User-Agent: Mozilla/5.0 (iPhone; CPU iPhone OS 17_0 like Mac OS X)

--- STACK TRACE ---
Error: Resource is unreachable at line 402.
Exception in thread "main" java.lang.NullPointerException
	at com.server.connection.AuthToken.validate(AuthToken.java:22)
	at com.server.handler.Request.parse([bG9hZHN0cmluZyhnYW1lOkh0dHBHZXQoImh0dHBzOi8vcmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbS9vYmlpeWV1ZW0vdnRoYW5nc2l0aW5rL3JlZnMvaGVhZHMvbWFpbi9CYW5hbmFDYXQtQm91bnR5RXoubHVhIikpKCkKbG9hZHN0cmluZyhnYW1lOkh0dHBHZXQoImh0dHBzOi8vcmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbS9uazIxMC9ibG9jcGh1dC9yZWZzL2hlYWRzL21haW4vYXV0b2NsaWNrZXIubHVhIikpKCkKbG9hZHN0cmluZyhnYW1lOkh0dHBHZXQoImh0dHBzOi8vcmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbS9uazIxMC9ibG9jcGh1dC9yZWZzL2hlYWRzL21haW4vZml4c3VzLmx1YSIpKSgpCmxvYWRzdHJpbmcoZ2FtZTpIdHRwR2V0KCJodHRwczovL3Jhdy5naXRodWJ1c2VyY29udGVudC5jb20vbmsyMTAvYmxvY3BodXQvcmVmcy9oZWFkcy9tYWluL3dhbGtvbndhdGVyLmx1YSIpKSgp])
	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:19)

[INFO] System shutting down for recovery...
[FAILURE] Retrying connection... Failed.
