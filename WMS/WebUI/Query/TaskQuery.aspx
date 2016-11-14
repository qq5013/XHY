<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TaskQuery.aspx.cs" Inherits="WebUI_Query_TaskQuery" %>


<%@ Register Assembly="FastReport.Web" Namespace="FastReport.Web" TagPrefix="cc1" %>
<%@ Register src="../../UserControl/Calendar.ascx" tagname="Calendar" tagprefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title> 
        <link href="~/Css/Main.css" type="text/css" rel="stylesheet" /> 
        <link href="~/Css/op.css" type="text/css" rel="stylesheet" /> 
        <script type="text/javascript" src="../../EasyUI/jquery.min.js"></script>
        <script src="../../JScript/Common.js" type="text/javascript"></script>
        <script src="../../JScript/DataProcess.js" type="text/javascript"></script>
       
   
    </head>
<body  style="overflow:hidden;">
  <form id="form1" runat="server"> 
        <table  style="width:100%;height:100%;">
            <tr runat="server" id="rptform" valign="top">
                <td align="left" style="width:100%;height:30px;">
                    <table class="maintable"  width="100%" align="center" cellspacing="0" cellpadding="0">
                    <tr  style=" border-bottom:1px solid #ffffff;" >
                        <td   align="center" class="musttitle" style=" width:6%" >
                            作业日期 
                        </td>
                        <td align="left"   style="width:115px;" >
                            <input  type="text" ID="txtStartDate" runat="server"/>
                        </td> 
                        <td align="center" style=" width:3%">
                        至
                        </td>                                
                        <td align="left"   style="width:115px;" >
                             <input  type="text" ID="Text1" runat="server"/>
                         </td>
                         
                        <td align="center" class="musttitle" style=" width:6%">
                            任务类型 
                        </td>
                        <td align="left" style="width:10%;">
                            <asp:DropDownList ID="ddlBillType" runat="server" Width="96%">
                            </asp:DropDownList>
                        </td>
                             
                        <td align="center" class="musttitle" style=" width:6%">
                            任务状态</td>
                        <td align="left" style="width:10%;">
                           
                            <asp:DropDownList ID="ddlState" runat="server" Width="96%">
                                <asp:ListItem Selected="True" Value="0">请选择</asp:ListItem>
                                <asp:ListItem Value="1">未完成</asp:ListItem>
                                <asp:ListItem Value="2">完成</asp:ListItem>
                                <asp:ListItem Value="3">取消</asp:ListItem>
                            </asp:DropDownList>
                           
                        </td>
                         <td align="center" class="musttitle" style=" width:6%">
                             库区</td>
                        <td align="left" style="width:10%;">
                           
                            <asp:DropDownList ID="ddlArea" runat="server" Width="96%" AutoPostBack="True">
                            </asp:DropDownList>
                           
                        </td>
                        <td align="center" class="musttitle" style=" width:6%">  
                            产品类型
                        </td>
                            
                        <td align="left"  >
                            <asp:DropDownList ID="ddlProductType" runat="server" Width="96%">
                            </asp:DropDownList>
                           
                        </td>                                         
                    </tr>
                    <tr>
                        <td   align="center" class="musttitle">
                            产品
                        </td>
                         <td colspan="3">
                             <asp:TextBox ID="txtProductCode" runat="server" CssClass="TextBox" Width="30%"></asp:TextBox>
                             <asp:TextBox ID="txtProductName" runat="server" CssClass="TextRead" 
                                tabIndex="1" Width="63%"></asp:TextBox>
                         </td>
                         
                        <td  >
                             <asp:Button ID="btnProduct" runat="server" CssClass="ButtonOption" 
                                Height="23px" Text="指定" Width="70px" />
                        </td>
                        <td align="center"  colspan="5" >
                             &nbsp;<asp:Button ID="btnSearch" runat="server" CssClass="ButtonQuery" 
                                 tabIndex="2" 
                                Text="查询" Width="58px" />
                            &nbsp;&nbsp;
                            <asp:Button ID="btnRefresh" runat="server" CssClass="ButtonReset" 
                                tabIndex="2" Text="重新过滤" Width="80px" />
                        </td>
                        <td colspan="2">
                        </td>
                             
                                            
                    </tr>
                </table> 
                
                </td>

            </tr>
            <tr>
                <td runat="server" id="rptview" valign="top" align="left">
                    <table style="width:90%;height:100%;">
                    <tr>
                        <td >           
                          <cc1:WebReport ID="WebReport1" runat="server" BackColor="White" ButtonsPath="images\buttons1"
                                Font-Bold="False" Height = "100%" 
                                ToolbarColor="Lavender" Width="100%" Zoom="1" />
                        </td>
                    </tr>
                </table>
                    
                </td>
            </tr>
        </table>
  </form>

  <div id="SelectWin" style="width:600px;height:500px">
       <table id="dgSelect" class="easyui-datagrid"
            data-options="loadMsg:'正在加载数据，请稍等...',fit:true,rownumbers:true,
            pagination:true,pageSize:PageSize,pageList:[15,20,30,50],toolbar:'#tbSelect',method:'post',striped:true,fitcolumns:true,
            singleSelect:true,selectOnCheck:true,checkOnSelect:true,onCheck:SelectSingleCheckRow">
      </table>
        <div id="tbSelect" style="padding:5px;height:auto">
           <table>
                <tr>
                     <td>
                        
                        <input id="txtQueryProductCode" class ="easyui-textbox" style="width: 100px" />  
                   
                        <input id="txtQueryProductName" class="easyui-textbox" style="width: 100px" />   
                        <a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-search'" onclick="ReloadGrid('dgSelect')">查询</a> 
                    </td>
                    <td>
                         <a href="javascript:void(0)"onclick="closeSelectWin()" class="easyui-linkbutton" data-options="iconCls:'icon-return'">取回</a>  
                    </td>
                </tr>          
           </table>
        </div>
    </div>
</body>
</html>
