<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%int col = 0; 
String result;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%

	try{
		col = Integer.parseInt(request.getParameter("col"));

		for(int i=2; i<=9; i+=col){
			for(int j=1; j<10; j++)
			{
				for(int k=0; k<col; k++){
					if(10 <= i+k){
						out.print("<br/>");
						break;
					}
					result = i+k + " * " + j + " = " + (i+k)*j;
					/* out.print(String.format("%d * %d = %d", i+k, j,(i+k)*j)); */
					out.print(String.format("%s",result));
					if(k < col-1)
						if(result.length()<10)
							out.print("&nbsp".repeat(7));
						else
							out.print("&nbsp".repeat(5));
					else
						out.print("<br/>");
				}
			}
			out.print("<br/>");
		}
	}catch(Exception e){
		out.print("단을 입력해주세요");
	}
%>
</body>
</html>