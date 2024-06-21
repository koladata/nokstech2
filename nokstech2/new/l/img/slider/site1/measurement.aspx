<%@ Page Title="" Language="VB" MasterPageFile="MasterPage.master" AutoEventWireup="false" CodeFile="measurement.aspx.vb" Inherits="measurement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
   
    <link type="text/css" rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
<script type="text/javascript" src="http://code.jquery.com/jquery-1.8.2.js"></script>
<script type="text/javascript" src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<script type="text/javascript">
    function showmodalpopup() {
        $("#popupdiv").dialog({
            
            width: 730,
            height: 350,
            modal: true,
           
        });
    };
</script>
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


        .textbox { 
    border: 0px solid #848484; 
    border-radius: 15px; 
    outline:0; 
    height:25px; 
    width: 120px; 
    padding-left:25px; 
    padding-right:25px; 
	font-size:12px
	
	/*dim recordselection as string
	dim recordset as string 
	dim recorddata as double */
	
	
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
  .input-group-lg{
      margin-bottom:15px;
      width:170px;
  }
  table { 
  width: 100%; 
  border-collapse: collapse; 
}
/* Zebra striping */
tr:nth-of-type(odd) { 
  background: #eee; 
}
th { 
  background: #333; 
  color: white; 
  font-weight: bold; 
}
td, th { 
  padding: 3px; 
  border: 1px solid #ccc; 
  text-align: left; 
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
    
  
    
    <div class="formtemplate-wrapper" style="width: 100%; text-align: center; border-radius: 5px; border: 1px solid #a4a4a4; box-shadow: inset 0 0 1px 0 rgba(0, 0, 0, 0.30);">
       
           <div id="popupdiv" style="display:none;">
              <div style="float:left;padding-right:30px;max-width:230px;">
                  <asp:Label ID="lblHip" runat="server" ></asp:Label></div>
              <div style="float:left">
                  <asp:Image ID="imgHip" runat="server" style="max-width:300px" />
              </div>
          </div>
 <table >
  <tr>
      <td>
      Hip <br />
      <asp:TextBox ID="txt_hip" runat="server" CssClass="input-group-lg" placeholder="Hip"></asp:TextBox>
          <asp:LinkButton ID="lnkHip" runat="server" OnClick="lnkHip_Click"><img src="images/search.png" /></asp:LinkButton>
         
      </td>
     
            <td>  Chest <br />
            <asp:TextBox ID="txt_chee" runat="server" CssClass="input-group-lg"  placeholder="Chest"></asp:TextBox>
                 <asp:LinkButton ID="lnkChee" runat="server" OnClick="lnkChee_Click"><img src="images/search.png" /></asp:LinkButton>
            </td>
        <td> Body <br /><asp:TextBox ID="txt_body" runat="server" CssClass="input-group-lg"  placeholder="Body"></asp:TextBox>
            <asp:LinkButton ID="lnkBody" runat="server" OnClick="lnkBody_Click"><img src="images/search.png" /></asp:LinkButton>
        </td>
        <td> Short Sleeve <br /><asp:TextBox ID="txt_shortsleeve" runat="server" CssClass="input-group-lg" placeholder="Short Sleeve"></asp:TextBox>
            <asp:LinkButton ID="lnkShortSleeve" runat="server" OnClick="lnkShortSleeve_Click"><img src="images/search.png" /></asp:LinkButton>
        </td>
      </tr>
   <tr>
     <td> Lap <br /><asp:TextBox ID="txt_lap" runat="server" CssClass="input-group-lg"  placeholder="Lap"></asp:TextBox>
         <asp:LinkButton ID="lnkLap" runat="server" OnClick="lnkLap_Click"><img src="images/search.png" /></asp:LinkButton>
     </td>
       <td> Cap <br /> <asp:TextBox ID="txt_cap" runat="server" CssClass="input-group-lg"  placeholder="Cap"></asp:TextBox>
           <asp:LinkButton ID="lnkCap" runat="server" OnClick="lnkCap_Click"><img src="images/search.png" /></asp:LinkButton>
       </td>
      <td> Agbada Sleeve <br /><asp:TextBox ID="txt_agbadasleeve" runat="server" CssClass="input-group-lg"   placeholder="Agbada Sleeve"></asp:TextBox>
          <asp:LinkButton ID="lnkAgbadaSleeve" runat="server" OnClick="lnkAgbadaSleeve_Click"><img src="images/search.png" /></asp:LinkButton>
      </td>
      <td>Round Sleeve <br /><asp:TextBox ID="txt_roundsleeve" runat="server" CssClass="input-group-lg"   placeholder="Round Sleeve"></asp:TextBox>
          <asp:LinkButton ID="lnkRoundSleeve" runat="server" OnClick="lnkRoundSleeve_Click"><img src="images/search.png" /></asp:LinkButton>
      </td>
    </tr>
      <tr>
      <td> Top Lenght <br /><asp:TextBox ID="txt_toplength" runat="server" CssClass="input-group-lg"  placeholder="Top Lenght"></asp:TextBox>
          <asp:LinkButton ID="lnkTopLength" runat="server" OnClick="lnkTopLength_Click"><img src="images/search.png" /></asp:LinkButton>
      </td>
       <td> Trouser Length<br /><asp:TextBox ID="txt_tourserlength" runat="server" CssClass="input-group-lg" placeholder="Trouser Length"></asp:TextBox>
           <asp:LinkButton ID="lnkTourserLength" runat="server" OnClick="lnkTopLength_Click"><img src="images/search.png" /></asp:LinkButton>
       </td>
        <td> Back <br /> <asp:TextBox ID="txt_back" runat="server" CssClass="input-group-lg"  placeholder="Back"></asp:TextBox>
             <asp:LinkButton ID="lnkBack" runat="server" OnClick="lnkBack_Click"><img src="images/search.png" /></asp:LinkButton>
        </td>
        <td> Neck <br /><asp:TextBox ID="txt_neck" runat="server" CssClass="input-group-lg"  placeholder="Neck" ></asp:TextBox>
             <asp:LinkButton ID="lnkNeck" runat="server" OnClick="lnkNeck_Click"><img src="images/search.png" /></asp:LinkButton>
        </td>
      </tr>
      <tr>
      <td> Long Sleeve <br /><asp:TextBox ID="txt_longsleeve" runat="server" CssClass="input-group-lg"  placeholder="Long Sleeve"></asp:TextBox>
           <asp:LinkButton ID="lnkLongSleeve" runat="server" OnClick="lnkLongSleeve_Click"><img src="images/search.png" /></asp:LinkButton>
      </td>
       <td> Waist <br /><asp:TextBox ID="txt_waist" runat="server" CssClass="input-group-lg" placeholder="Waist"></asp:TextBox>
            <asp:LinkButton ID="lnkWaist" runat="server" OnClick="lnkWaist_Click"><img src="images/search.png" /></asp:LinkButton>
       </td>
        <td> Agbada length <br /><asp:TextBox ID="txt_agbadalength" runat="server" CssClass="input-group-lg"  placeholder="Agbada Length"></asp:TextBox>
            <asp:LinkButton ID="lnkAgbadaLength" runat="server" OnClick="lnkAgbadaLength_Click"><img src="images/search.png" /></asp:LinkButton>
        </td>
        <td> Birthday <br /><asp:TextBox ID="txt_birthday" runat="server" CssClass="input-group-lg"  placeholder="Birth Day(DD/MM/Yr)" ></asp:TextBox>
            <asp:LinkButton ID="lnkBIrthDay" runat="server" OnClick="lnkBIrthDay_Click"><img src="images/search.png" /></asp:LinkButton>
        </td>
      </tr>
     <tr>
       <td> Material Colour <br /><asp:TextBox ID="txt_materialcolour" runat="server" CssClass="input-group-lg"  placeholder="Material Colour"></asp:TextBox>
           <asp:LinkButton ID="lnkMaterialColour" runat="server" OnClick="lnkMaterialColour_Click"><img src="images/search.png" /></asp:LinkButton>
       </td>
        <td> Special Note <br /><asp:TextBox ID="txt_specialnote" runat="server" CssClass="input-group-lg"  placeholder="Special Note" ></asp:TextBox>
            <asp:LinkButton ID="lnkSpecialNote" runat="server" OnClick="lnkSpecialNote_Click"><img src="images/search.png" /></asp:LinkButton>
        </td>
      </tr>
</table> 
        <div class="formtemplate-buttons" style="text-align: center">
            
    <asp:Button ID="btnSave" runat="server" Text="Save" ValidationGroup="vgP" 
                Style="max-width: 100px; height: 42px;" />
            <asp:Button ID="btnCancel" runat="server" Text="Cancel" Style="max-width: 100px" />
            <br />
            <asp:TextBox ID="nametx" runat="server" CssClass="input-group-lg"  
                placeholder="Special Note" Visible="False" ></asp:TextBox>
        </div>
        <asp:HiddenField ID="hfID" runat="server" Value="" />
    </div>
   
</asp:Content>