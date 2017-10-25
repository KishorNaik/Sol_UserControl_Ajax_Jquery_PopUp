<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ContentUserControl.ascx.cs" Inherits="Sol_Ajax_UpdatePanel_PopUp_Issue.ContentUserControl" %>


<link href="Content/themes/base/jquery-ui.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="/resources/demos/style.css">

<script type="text/javascript" src="Scripts/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="Scripts/jquery-ui-1.12.1.js"></script>

<script type="text/javascript">

    function pageLoad()
    {
        $(document).ready(function () {

            //alert("Hello From User Control..");

            $("#<%= btnSubmit.ClientID%>").click(function (e) {

               // alert("Hello from User Control Button");

                 // Get WebService Server Side Method which web method should be 
                // written in .ASPX page only. That mean put your logic in Web Method and This Web method should be called directly in Javascript
                // using PageMethod...
                // .ASCX does not support Web Method. but We can access Web Method throug jquery in User Control.
                

                PageMethods.GetServerSideValue(function (result) {

                    //alert(result);

                    $("#divDialogPanel").dialog({
                        resizable: false,
                        height: "auto",
                        width: 400,
                        modal: true,

                        open: function () {

                            // Display Server Side Message
                            $("#lblMessage").html(result);

                             //Close Dialog Box after some interval
                            var dialogObj = $(this);
                            setTimeout(function () {
                                dialogObj.dialog('close');
                            }, 5000);
                        },
                        buttons: {
                            "Ok": function () {
                                $(this).dialog("close");
                            }
                        }

                    });


                });

                e.preventDefault();

            });
           
        });
    }

</script>

<div id="main">

   
                 <asp:Button ID="btnSubmit" runat="server" Text="Submit" />

                    <div id="divDialogPanel" title="Dialog Box">
                        <span id="lblMessage"></span>
                    </div>


</div>
