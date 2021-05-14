const http = require('http')

let counter = 0;
const startServer = function(){
	http.createServer((req, res) => {
		console.log("Request: %s", req.url, new Date)
		if(req.url == '/health') {
			return res.end('ok')
		}

		if(req.url == '/err') {
			res.statusCode = 500
			return res.end()
		}


		if(req.url == '/') {
			return res.end("Hello Manish " + counter++)
		}
	}).listen(2020, () => {
		console.log("Server is running at 2020")
	})	
}

console.log("Server will start after 0 seconds")
setTimeout(startServer, 0)