<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentForm.aspx.cs" Inherits="WebAppInClass3.Pages.StudentForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <h1>Student - Activity 2 Assessment</h1>
    </div>
     <div class="row">
        <div class="col-md-12 alert alert-info">
            This assesment will test basic web form construction, validation, data collection and display.
        </div>
    </div>
    <div class="row">
        <div class="col-md-12 text-left">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server"
                 HeaderText="Please correct the following issues with your current data entry" />

            <asp:RequiredFieldValidator ID="RequiredFieldStudentID" runat="server" 
                ErrorMessage="StudentID is a required field" 
                SetFocusOnError="true" ControlToValidate="StudentID" Display="None"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareStudentID" runat="server"
                 ErrorMessage="StudentID is a whole number greater than 0" Operator="GreaterThan" Type="Integer"
                 ValueToCompare="0"  SetFocusOnError="true" ControlToValidate="StudentID" Display="None"></asp:CompareValidator>
            
             <asp:RequiredFieldValidator ID="RequiredFieldStudentName" runat="server" 
                ErrorMessage="Student Name is a required field" 
                SetFocusOnError="true" ControlToValidate="StudentName" Display="None"></asp:RequiredFieldValidator>

             <asp:RequiredFieldValidator ID="RequiredFieldCredits" runat="server" 
                ErrorMessage="Credits is a required field" 
                SetFocusOnError="true" ControlToValidate="Credits" Display="None"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeCredits" runat="server" 
                ErrorMessage="Credits out of range (0.0 to 40.0)"
                 MinimumValue="0.0" MaximumValue="40.0" Type="Double"
                SetFocusOnError="true" ControlToValidate="Credits" Display="None"></asp:RangeValidator>

            <asp:RequiredFieldValidator ID="RequiredFieldEmergencyPhoneNumber" runat="server" 
                ErrorMessage="Emergency Phone Number is a required field" 
                SetFocusOnError="true" ControlToValidate="EmergencyPhoneNumber" Display="None"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionEmergencyPhoneNumber" runat="server" 
                ErrorMessage="Emergency Phone Number is invalid (ex. 780.102.0123)"
                 SetFocusOnError="true" ControlToValidate="EmergencyPhoneNumber" Display="None"
                 ValidationExpression="[1-9][0-9][0-9].[1-9][0-9][0-9].[0-9][0-9][0-9][0-9]"></asp:RegularExpressionValidator>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <h2>Student Data Entry</h2>
            <div class="row">
                <div class="col-md-4 text-right">
                        <asp:Label ID="Label1" runat="server" Text="StudentID"
                             AssociatedControlID="StudentID"></asp:Label>
                </div>
                <div class="col-md-4 text-left">
                        <asp:TextBox ID="StudentID" runat="server" ></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 text-right">
                          <asp:Label ID="Label2" runat="server" Text="Name"
                             AssociatedControlID="StudentName"></asp:Label>
                </div>
                <div class="col-md-4 text-left">
                        <asp:TextBox ID="StudentName" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 text-right">
                        <asp:Label ID="LabelCredits" runat="server" Text="Credits"
                             AssociatedControlID="Credits"></asp:Label>
                </div>
                <div class="col-md-4 text-left">
                        <asp:TextBox ID="Credits" runat="server" ></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 text-right">
                          <asp:Label ID="Label4" runat="server" Text="Emergency Phone Number"
                             AssociatedControlID="EmergencyPhoneNumber"></asp:Label>
                </div>
                <div class="col-md-4 text-left">
                        <asp:TextBox ID="EmergencyPhoneNumber" runat="server"> </asp:TextBox>
                </div>
            </div>
        </div>
        <div class="col"> 
            <div class="col text-left">
                <asp:LinkButton ID="AddStudent" runat="server" OnClick="AddStudent_Click">Add Student</asp:LinkButton>&nbsp;&nbsp;
                <asp:LinkButton ID="Cancel" runat="server" CausesValidation="false" OnClick="Cancel_Click">Cancel</asp:LinkButton>
                <br />
                <asp:Label ID="MessageLabel" runat="server"></asp:Label>
                <br/><br/>
                <asp:GridView ID="StudentListDisplay" runat="server"></asp:GridView>
            </div>
        </div>
    </div>
    
</asp:Content>
