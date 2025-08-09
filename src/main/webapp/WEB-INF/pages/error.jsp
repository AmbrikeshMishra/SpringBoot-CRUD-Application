<%@ page isELIgnored="false" isErrorPage="true"%>
<h1 stlye="color:red;text-align:center">Error.jsp(Global Error Page)</h1>
<h3 stlye="color:green; text-align:center">Internal Problem--Try Again..</h3>
<table align="center" border="1" bgcolor="yellow">
  <tr>
    <td>Status</td>
    <td>${status}</td>
  </tr>
  <tr>
    <td>Message</td>
    <td>${message}</td>
  </tr>
  <tr>
    <td>Path</td>
    <td>${path}</td>
  </tr>
  <tr>
    <td>Timestamp</td>
    <td>${timestamp}</td>
  </tr>
</table>

