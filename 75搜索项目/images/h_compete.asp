<!--#include file="../admin/conn.asp"-->
<!--#include file="../sub/fun.asp"-->
<!--#include file="../chkerr.asp"-->
<%
chkpostfrom
dim horseto,i,j,tmpasc,rs,sql
horseto=0
dim horse(4)
for i=1 to 4
	horse(i)=Request.Form("horse"&i)
	if horse(i)="" then horse(i)=0 end if
	for j=1 to len(horse(i))
		tmpasc=asc(mid(horse(i),j,1))
		if tmpasc<48 or tmpasc>57 then
			horse(i)=0
			exit for
		end if
	next
	horseto=horseto+horse(i)
next
if horseto>10000 then call msg("���Ѻ10000","-1")
session("membername")=request.cookies("yxlove")("username")
set rs=server.CreateObject("adodb.recordset")
sql="select id,username,loveb from love_main where username='"&session("membername")&"'"
'sql="select username,userid,face,userwealth,userep,usercp from [user] where username='"&session("membername")&"'"
rs.open sql,conn,1,3
if rs.eof then response.write "<script>function start(){parent.location.replace('../login.asp');}alert('����û�е�½�ɣ��ںڣ��Բ������ֻ�е�¼�Ļ�Ա�������ģ��ޣ�');</script><body onload=javascript:start();></body>"
if rs("loveb")<horseto then call msg("���Love�Ҳ��㣬�޷���ע","-1")
'if rs("userwealth")<horseto then response.Redirect("error.asp?id=6")
rs("loveb")=rs("loveb")-horseto
rs.update
rs.close
set rs=nothing
   if horseto>0 then call loveb_add(username,-horseto,"�ݱ�����-����-��ע(��)") '��ӱ���ʹ��¼,��fun.asp��
closeconn
session("Ba_bet_pay")=true
%>
<STYLE>
#Layer1 {
	HEIGHT: 60px; LEFT: -100px; POSITION: absolute; TOP: -100px; WIDTH: 60px; Z-INDEX: 10
}
#Layer2 {
	HEIGHT: 60px; LEFT: -100px; POSITION: absolute; TOP: -100px; WIDTH: 60px; Z-INDEX: 20
}
#Layer3 {
	HEIGHT: 60px; LEFT: -100px; POSITION: absolute; TOP: -100px; WIDTH: 60px; Z-INDEX: 30
}
#Layer4 {
	HEIGHT: 60px; LEFT: -100px; POSITION: absolute; TOP: -100px; WIDTH: 60px; Z-INDEX: 40
}
#Layer5 {
	HEIGHT: 60px; LEFT: -100px; POSITION: absolute; TOP: -100px; WIDTH: 60px; Z-INDEX: 50
}
#Layer6 {
	HEIGHT: 60px; LEFT: -100px; POSITION: absolute; TOP: -100px; WIDTH: 60px; Z-INDEX: 60
}
#Layer7 {
	HEIGHT: 60px; LEFT: -100px; POSITION: absolute; TOP: -100px; WIDTH: 60px; Z-INDEX: 70
}
#Layer8 {
	HEIGHT: 60px; LEFT: -100px; POSITION: absolute; TOP: -100px; WIDTH: 60px; Z-INDEX: 20
}
A:link,A:active,A:visited{TEXT-DECORATION:none ;Color:#000000}
A:hover{TEXT-DECORATION: underline;Color:#663399}

BODY{
FONT-SIZE: 12px;
COLOR: #000000;
FONT-FAMILY:  ����;
background-color: #FFFFFF; 
scrollbar-Base-Color: #ffffff;
SCROLLBAR-TRACK-COLOR: #ffffff;  
SCROLLBAR-HIGHLIGHT-COLOR: #ffffff;
SCROLLBAR-FACE-COLOR: #F3EEF9; 
SCROLLBAR-SHADOW-COLOR: #F3EEF9;
SCROLLBAR-3DLIGHT-COLOR: #F3EEF9;
SCROLLBAR-DARKSHADOW-COLOR: #E9DEF3;
SCROLLBAR-ARROW-COLOR: #663399;
background-image: url(bacsk.jpg);
}
TD{
font-family: ����;
font-size: 12px;
line-height: 15px;
}
th
{
background-image: url(back.jpg);
background-color: #8142BF;
color: white;
font-size: 12px;
font-weight:bold;
}
</STYLE>
<title>����</title>
<body topmargin="0" onload=doplay() oncontextmenu=self.event.returnValue=false>
<%for i=1 to 4%>
<DIV id=Layer<%=i%>><DD><IMG  src="h<%=i%>.gif"></DD></DIV>
<%next%>
<SCRIPT language=JavaScript>
xcoor = new Array(40,40,40,40);  
ycoor = new Array(23,55,85,115);
for(j=0;j<4;j++){
	eval('document.all'+'["Layer'+(j+1)+'"]'+'.style.left='+xcoor[j]);
	eval('document.all'+'["Layer'+(j+1)+'"]'+'.style.top='+ycoor[j]);
}

function doplay()
{
    var x
    var hor=<%=horseto%>
      for(j=0;j<4;j++){
     if (hor>0){
    	x=Math.floor(10*Math.random());
    	xcoor[j] = xcoor[j] + x;
    	if ( xcoor[j] > 498 ) {
			document.form1.horsewin.value=j+1;
			document.form1.submit();
			return;
    	}
        eval('document.all'+'["Layer'+(j+1)+'"]'+'.style.left='+xcoor[j]);
		eval('document.all'+'["Layer'+(j+1)+'"]'+'.style.top='+ycoor[j]);
		}
  	}
    setTimeout('doplay()',200);  
}
</SCRIPT>
<table width="760" border="0" cellpadding="0" cellspacing="0">
  <tr> 
    <td width="1" bgcolor="#247624"></td>
    <td width="758" height="9" background="h12.gif"></td>
    <td width="1" bgcolor="#247624"></td>
  </tr>
</table>
<table width="760" border="0" cellpadding="0" cellspacing="1" bgcolor="#247624">
  <tr>
    <td bgcolor="#FFFFFF"><table width="100%" border="0" cellpadding="1" cellspacing="0">
        <tr> 
          <td width="92%" valign="top"><br>
		  <table width="665"  border="0" align="center" cellpadding="2" cellspacing="1" bordercolorlight="#000000" bordercolordark="#FFFFFF" bgcolor="8CD176">
              <form method="post" action="h_bet.asp?win=1" id=form1 name=form1 target=bethorsefrm>
                <%for i=1 to 4%>
                <tr bgcolor="#FFFFFF"> 
                  <td width="59" height="30" align="center"> <%=i%> �� </td>
                  <td width="480" height="30"></td>
                  <td width="114" height="30" align="right"> �Ľ� 
                    <input type=text readonly maxlength=4 size=4 name="horse<%=i%>"  value='<%=horse(i)%>'>
                    ��Ǯ </td>
                </tr>
                <%next%>
                <input type=hidden name="horsewin"  value=''>
              </FORM>
            </table>
            <br>
          </td>
          <td width="8%"><img src="ma.jpg" width="60" height="121" vspace="12"></td>
        </tr>
        <tr> 
          <td height="9" colspan="2" background="h13.gif"></td>
        </tr>
      </table></td>
  </tr>
</table>
  </body>