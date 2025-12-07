<script setup>
		import { ref, onMounted } from 'vue';
		const form = ref({ sender: "", content: "", type: 'CHAT' });
		const list = ref([]);
		let client = null;
		const ctrl = {
			connect() {
				if (client) {
					client.activate();
				}
			},
			disconnect() {
				if (client) {
					client.deactivate();
				}
			},
			send() {
				if (client && client.connected) {
					const message = form.value;
					client.publish({
						destination: "/app/simple-chat",
						body: JSON.stringify(message)
					});
					form.value.content = "";
				} else {
					alert("Chưa kết nối WebSocket!");
				}
			}
		};
		onMounted(() => {
			if (window.StompJs && window.StompJs.Client) {
				client = new StompJs.Client({
					brokerURL: 'ws://localhost:8080/poly',
					reconnectDelay: 5000,
					onConnect: (frame) => {
						console.log("client.onConnect()", frame);
						client.subscribe('/topic/simple-chat', (response) => {
							const message = JSON.parse(response.body);
							list.value.push(message);
						});
					},
					onWebSocketError: (error) => {
						alert("onWebSocketError()");
						console.log("onWebSocketError()", error);
					},
					onStompError: (error) => {
						alert("onStompError()");
						console.log("onStompError()", error);
					}
				});
			} else {
				alert("Không tìm thấy thư viện STOMP (StompJs)");
			}
		});
		</script>
		<template>
			<div>
				<input v-model="form.sender" placeholder="Your name" />
				<button @click="ctrl.connect()">Connect</button>
				<button @click="ctrl.disconnect()">Disconnect</button>
				<h4>OUTPUT</h4>
				<ul>
					<li v-for="(e, i) in list" :key="i">
						<b>{{ e.sender }}</b>: {{ e.content }}
					</li>
				</ul>
				<h4>INPUT</h4>
				Message: <input v-model="form.content" />
				<button @click="ctrl.send()">Send</button>
			</div>
		</template>