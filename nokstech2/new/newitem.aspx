<%@ Page Title="" Language="VB"  AutoEventWireup="false" CodeFile="newitem.aspx.vb" Inherits="Default2" %>


    <style type="text/css">
        body {
            font-family: Calibri;
        }

        .formtemplate-wrapper {
            display: block;
            background-color: #fcfcfc;
            padding: 10px 0;
            text-align: left;
            font-weight: bold;
        }

        .formtemplate-buttons {
            display: block;
            padding: 7px;
            text-align: left;
            background-color: rgba(41, 180, 30, 0.80);
            box-shadow: 0 1px 2px 0 #222;
            min-height: 0;
            margin: 0 -1px 5px;
            border-radius: 0 !important;
        }

        .formtemplate-item {
            display: block;
            padding: 10px 7px;
            border-top: 1px solid #ddd;
        }

        .no-border {
            border: none !important;
        }

        .label-left {
            display: inline-block;
            vertical-align: top;
            min-width: 135px;
            padding: 3px 7px 3px 3px;
            margin: 0;
        }

        .label-seperator {
            display: inline-block;
            vertical-align: top;
            padding: 3px;
            margin: 0;
        }

        .control-wrapper {
            display: inline-block;
            vertical-align: top;
            margin: 0;
        }

        .text_box {
            background-color: #ffffff;
            border: 1px solid #c4c4c4;
            color: #000;
            padding: 4px 7px;
            resize: none;
        }

            .text_box:focus {
                border: 1px solid #a4a4a4;
                box-shadow: inset 0 0 1px 0 rgba(0, 0, 0, 0.30);
            }

        .validator {
            margin: 0 5px;
            font-weight: 500;
            color: #f10b0b;
        }

        .row_header {
            margin: -10px -1px 5px;
            padding: 5px 7px;
            background: #819fae;
            color: #fff;
            font-size: 15px;
            text-align: center;
        }

        .riTextBox:disabled {
            color: #000 !important;
        }
    </style>
    <script>
        function isNumeric(form1) {
            var len, str, str1, i;
            len = form1.value.length;
            str = form1.value;
            str1 = "0123456789.";
            for (i = 0; i < len; i++) {
                if ((str1.indexOf(str.charAt(i))) == -1) {
                    alert("Enter numeric data in this field");
                    form1.value = "";
                    form1.focus();
                    return false;
                }
            }
            return true;
        }
    </script>




     





    <div class="formtemplate-wrapper" style="width: 80%; text-align: center; border-radius: 5px; border: 1px solid #a4a4a4; box-shadow: inset 0 0 1px 0 rgba(0, 0, 0, 0.30);">
       
        
        <div class="control-wrapper" style="vertical-align: bottom">
            <p></p>
           

 
            <div class="formtemplate-item">
            <p class="label-left">Name of Item :</p>
            <p class="label-seperator"></p>
            <div class="control-wrapper">
                <asp:TextBox ID="firstname" runat="server" CssClass="input-group-lg"></asp:TextBox>
                
            </div>
        </div>





           <div class="formtemplate-item">
            <p class="label-left">Item Colour :</p>
            <p class="label-seperator"></p>
            <div class="control-wrapper">><asp:TextBox ID="lastname" runat="server" CssClass="input-group-lg"></asp:TextBox> 
          
                </div> 
               </div> 
            <p></p>
        </div>
        <div class="formtemplate-buttons" style="text-align: center">
            <asp:Button ID="Search" runat="server" Text="Search" ValidationGroup="vgA" Style="max-width: 100px" />
        </div>
        
        
        
        
        
        
        
        
        
        
        
        
        
        <div class="formtemplate-item">
            <p class="label-left">Name of Item :</p>
            <p class="label-seperator"></p>
            <div class="control-wrapper">
                <asp:TextBox ID="txtFirstName" runat="server" CssClass="input-group-lg"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ControlToValidate="txtFirstName"
                    ForeColor="Red" ErrorMessage="Required" ValidationGroup="vgP">
                </asp:RequiredFieldValidator>
            </div>
        </div>



        <div class="formtemplate-item">
            <p class="label-left">Item Colour :</p>
            <p class="label-seperator"></p>
            <div class="control-wrapper">
                <asp:TextBox ID="txtlastname" runat="server" CssClass="input-group-lg"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstName"
                    ForeColor="Red" ErrorMessage="Required" ValidationGroup="vgP">
                </asp:RequiredFieldValidator>
            </div>
        </div>
        



        <div class="formtemplate-item">
            <p class="label-left">Description of Item :</p>
             <p class="label-seperator"></p>
            <p class="label-seperator"><asp:TextBox ID="txtAddress" runat="server" 
                    TextMode="MultiLine" Columns="21" Rows="5" Height="59px"></asp:TextBox>
                </p>
            <div class="control-wrapper" style="vertical-align: bottom">
                <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ControlToValidate="txtAddress"
                    ForeColor="Red" ErrorMessage="Required" ValidationGroup="vgP">
                </asp:RequiredFieldValidator>
            </div>
        </div>







                <div class="formtemplate-item">
            <p class="label-left">Category :</p>
            <p class="label-seperator"></p>
            <div class="control-wrapper">
                <asp:TextBox ID="txtcategory" runat="server" CssClass="input-group-lg"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtFirstName"
                    ForeColor="Red" ErrorMessage="Required" ValidationGroup="vgP">
                </asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="formtemplate-item">
        </div>













        <div class="formtemplate-item">
            <p class="label-left">Add Price :</p>
            <p class="label-seperator"></p>
            <div class="control-wrapper" style="vertical-align: bottom">
                <asp:TextBox ID="txtAmountPaid" onchange="isNumeric(this)" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvAmountPaid" runat="server" ControlToValidate="txtAmountPaid"
                    ForeColor="Red" ErrorMessage="Required" ValidationGroup="vgP">
                </asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="formtemplate-item">
            <p class="label-left">Attach Image :</p>
            <p class="label-seperator"></p>
            <div class="control-wrapper" style="vertical-align: bottom">
                <asp:FileUpload ID="fuPhoto" runat="server" />
            </div>
        </div>
        <div class="formtemplate-buttons" style="text-align: center">
            <asp:Button ID="btnSave" runat="server" Text="Save" ValidationGroup="vgP" Style="max-width: 100px" />
            <asp:Button ID="btnCancel" runat="server" Text="Cancel" Style="max-width: 100px" />
            <asp:Button ID="btnDelete" runat="server" Text="Delete" ValidationGroup="vgP" Style="max-width: 100px" />
            <asp:Button ID="btnUpdate" runat="server" Text="Update" ValidationGroup="vgP" Style="max-width: 100px" />
        </div>

       


        <asp:HiddenField ID="hfID" runat="server" Value="" />
    </div>



