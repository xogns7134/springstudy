<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Bookmark Management</title>
</head>
<body>
    <table>
        <tr>
            <td colspan="2">
                <img src="resources/img/bookmark.png">
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <h3>북마크 추가</h3>
            </td>
        </tr>
        <form action="insert">
            <tr>
                <td>ID :</td>
                <td><input type="text" name="id"></td>
            </tr>
            <tr>
                <td>NAME :</td>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <td>URL :</td>
                <td><input type="text" name="url"></td>
            </tr>
            <tr>
                <td>IMG :</td>
                <td><input type="text" name="img"></td>
            </tr>
            <tr>
                <td colspan="2"><button type="submit">북마크 추가</button></td>
            </tr>
        </form>
        <tr>
            <td colspan="2"><hr></td>
        </tr>
        <tr>
            <td colspan="2">
                <h3>북마크 수정</h3>
            </td>
        </tr>
        <form action="update">
            <tr>
                <td>ID :</td>
                <td><input type="text" name="id"></td>
            </tr>
            <tr>
                <td>NAME :</td>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <td colspan="2"><button type="submit">북마크 수정</button></td>
            </tr>
        </form>
        <tr>
            <td colspan="2"><hr></td>
        </tr>
        <tr>
            <td colspan="2">
                <h3>북마크 삭제</h3>
            </td>
        </tr>
        <form action="delete">
            <tr>
                <td>ID :</td>
                <td><input type="text" name="id"></td>
            </tr>
            <tr>
                <td colspan="2"><button type="submit">북마크 삭제</button></td>
            </tr>
        </form>
        <tr>
            <td colspan="2"><hr></td>
        </tr>
        <tr>
            <td colspan="2">
                <h3>북마크 검색</h3>
            </td>
        </tr>
        <form action="one">
            <tr>
                <td>ID :</td>
                <td><input type="text" name="id"></td>
            </tr>
            <tr>
                <td colspan="2"><button type="submit">북마크 검색</button></td>
            </tr>
        </form>
        <tr>
            <td colspan="2"><hr></td>
        </tr>
        <tr>
            <td colspan="2">
                <h3>북마크 전체 검색</h3>
            </td>
        </tr>
        <tr>
            <td colspan="2"><a href="list"><button type="submit">북마크 전체 검색</button></a></td>
        </tr>
    </table>
</body>
</html>
