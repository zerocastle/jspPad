<%@page import="java.io.File"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>


	<%
		String result = "-------------<br/>";
		String realFolder = "";
		String saveFolder = "/fileSave";
		String encType = "utf-8";
		int maxSize = 5 * 1024 * 1024;

		ServletContext context = getServletContext();
		realFolder = context.getRealPath(saveFolder);
		MultipartRequest upload = null;
		try {

			upload = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());

			Enumeration<?> params = upload.getParameterNames();

			while (params.hasMoreElements()) {
				String name = (String) params.nextElement();
				String value = upload.getParameter(name);
				result += name + " : " + value + "<br>";
			}

			// 파일이 아닌 다른 파라미터 값을 처리해주는것이다 .

			Enumeration<?> files = upload.getFileNames();

			while (files.hasMoreElements()) {
				String name = (String) files.nextElement();
				// 서버에 업로드 된 파일명
				String filename = upload.getFilesystemName(name);
				// 원래 파일 이름
				String original = upload.getOriginalFileName(name);
				String type = upload.getContentType(name);

				result += "파라미터 이름 : " + name + "<br/>";
				result += "실제 파일 이름 : " + original + "<br/>";
				result += "저장된 파일 이름 : " + filename + "<br/>";
				result += "파일 타입 : " + type + "<br/>";

				File file = upload.getFile(name);
				if (file != null)
					result += "크기 " + file.length() + "bytes <br>";
			}

			out.println(result);

		} catch (Exception e) {
			e.printStackTrace();
		}
	%>

