<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Http404ErrorPage.aspx.cs" Inherits="ManejarErrores.Http404ErrorPage" %>

<!DOCTYPE html>

<html>
<head id="Head1" runat="server">
  <title>HTTP 404 Error Page</title>
</head>
<body>
  <form id="form1" runat="server">
  <div>
    <h2>
      HTTP 404 Error Page</h2>
    Standard error message suitable for file not found errors. 
    The original exception object is not available, 
    but the original requested URL is in the query string.<br />
    <br />
    Return to the <a href='Default.aspx'> Default Page</a>
  </div>
  </form>
</body>
</html>