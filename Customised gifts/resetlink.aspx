<%@ Page Language="C#" AutoEventWireup="true" CodeFile="resetlink.aspx.cs" Inherits="resetlink" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ForgetPassword</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Label id="Label2" style="Z-INDEX: 107; LEFT: 144px; POSITION: absolute; TOP: 328px" runat="server"
				Font-Names="Verdana" Font-Size="XX-Small" Width="552px" Visible="False" ForeColor="Red"
				Height="24px">May be you have given an EmailID that doesn't exist in our database or you have selected an incorrect option during Login.</asp:Label>
			<asp:Button id="Button2" style="Z-INDEX: 108; LEFT: 264px; POSITION: absolute; TOP: 264px" runat="server"
				Font-Names="Verdana" Font-Size="XX-Small" Width="63px" BorderStyle="Solid" Text="Ok" BackColor="OldLace"></asp:Button>
			<asp:Button id="Button1" style="Z-INDEX: 109; LEFT: 336px; POSITION: absolute; TOP: 264px" runat="server"
				Font-Names="Verdana" Font-Size="XX-Small" Width="63px" BorderStyle="Solid" Text="Back" BackColor="OldLace"
				CausesValidation="False"></asp:Button>
			<DIV style="DISPLAY: inline; Z-INDEX: 110; LEFT: 112px; WIDTH: 790px; POSITION: absolute; TOP: 168px; HEIGHT: 32px"
				ms_positioning="FlowLayout"><FONT face="Verdana" size="2">Your <STRONG>Login ID</STRONG>
					and <STRONG>Password</STRONG> will be send to the provided Email Address. If 
					Email isn't received then, please write us with your proper identity.</FONT></DIV>
			<DIV style="DISPLAY: inline; Z-INDEX: 111; LEFT: 128px; WIDTH: 70px; POSITION: absolute; TOP: 216px; HEIGHT: 15px"
				ms_positioning="FlowLayout">Email ID:</DIV>
			<asp:TextBox id="txtEmailID" style="Z-INDEX: 112; LEFT: 200px; POSITION: absolute; TOP: 216px"
				runat="server" Font-Names="Verdana" Font-Size="X-Small" Width="296px" BorderStyle="Groove"></asp:TextBox>

			<asp:RequiredFieldValidator id="RequiredFieldValidator1" style="Z-INDEX: 113; LEFT: 200px; POSITION: absolute; TOP: 240px"
				runat="server" Font-Names="Verdana" Font-Size="XX-Small" ErrorMessage="Please enter Email ID" ControlToValidate="txtEmailID"></asp:RequiredFieldValidator>
        <asp:Label ID="lbl_msg" runat="server" Text="email hs been sent"></asp:Label>
			<asp:Label id="Label1" style="Z-INDEX: 115; LEFT: 144px; POSITION: absolute; TOP: 296px" runat="server"
				Font-Names="Verdana" Font-Size="XX-Small" Width="552px" Visible="False" ForeColor="Red"
				Height="24px">Sorry! Given Email ID is not not found in our database..... Email couldn't be sent. Please try again with valid Email ID.</asp:Label>
			
			
			<asp:RegularExpressionValidator id="RegularExpressionValidator1" style="Z-INDEX: 118; LEFT: 200px; POSITION: absolute; TOP: 240px"
				runat="server" Font-Names="Verdana" Font-Size="XX-Small" Width="154px" ErrorMessage="Please enter valid Email ID"
				ControlToValidate="txtEmailID" ValidationExpression="^(\w+)@(\w+)\.((com)|(net))$">
                <br />
			</asp:RegularExpressionValidator>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Customised gifts zoneConnectionString %>" SelectCommand="SELECT * FROM [register]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
