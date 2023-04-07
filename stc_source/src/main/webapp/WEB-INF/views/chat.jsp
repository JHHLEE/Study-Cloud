<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>웹소켓 채팅</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.4.0/sockjs.js"></script>
<script type="text/javascript">
	var webSocket = {
		init : function(param) {
			this._url = param.url;
			this._initSocket();
		},
		sendChat : function() {
			this._sendMessage('${param.bang_id}', 'CMD_MSG_SEND', $('#message').val(), $('#division').val() );
			$('#message').val('');
		},
		sendEnter : function() {
			this._sendMessage('${param.bang_id}', 'CMD_ENTER', $('#message').val(), $('#division').val() );
			$('#message').val('');
		},
		receiveMessage : function(msgData) {

			// 정의된 CMD 코드에 따라서 분기 처리
			if (msgData.cmd == 'CMD_MSG_SEND') {
				if(msgData.division!= "${standname }" ){
					$('#divChatData').append('<div align="left">' + msgData.msg + '</div>');	
				}
				else if(msgData.division== "${standname }" ){
					$('#divChatData').append('<div align="right">' + msgData.msg + '</div>');	
				}
			}
			// 입장
			else if (msgData.cmd == 'CMD_ENTER') {
				$('#divChatData').append('<div align="center ">' + msgData.msg + '</div>');
			}
			// 퇴장
			else if (msgData.cmd == 'CMD_EXIT') {
				$('#divChatData').append('<div align="center ">' + msgData.msg + '</div>');
			}
		},
		closeMessage : function(str) {
			$('#divChatData').append('<div align="center ">' + '연결 끊김 : ' + str + '</div>');
		},
		disconnect : function() {
			this._socket.close();
		},
		_initSocket : function() {
			this._socket = new SockJS(this._url);
			this._socket.onopen = function(evt) {
				webSocket.sendEnter();
			};
			this._socket.onmessage = function(evt) {
				webSocket.receiveMessage(JSON.parse(evt.data));
			};
			this._socket.onclose = function(evt) {
				webSocket.closeMessage(JSON.parse(evt.data));
			}
		},
		_sendMessage : function(bang_id, cmd, msg, division) {
			var msgData = {
				bang_id : bang_id,
				cmd : cmd,
				msg : msg,
				division : division
			};
			var jsonData = JSON.stringify(msgData);
			this._socket.send(jsonData);
		}
	};
</script>
<script type="text/javascript">
	$(window).on('load', function() {
		webSocket.init({
			url : '<c:url value="/chat" />'
		});
	});
</script>
</head>
<body>
	
	<div style="width: 800px; height: 700px; padding: 10px; border: solid 1px #e1e3e9;">
		<div id="divChatData"></div>
	</div>
	<div style="width: 100%; height: 10%; padding: 10px;">
		<input type="text" id="message" size="110" onkeypress="if(event.keyCode==13){webSocket.sendChat();}" />
		<input type="hidden" id="division" size="110" onkeypress="if(event.keyCode==13){webSocket.sendChat();}" value="${standname }" />
		<input type="button" id="btnSend" value="채팅 전송" onclick="webSocket.sendChat()" />
	</div>
</body>
</html>