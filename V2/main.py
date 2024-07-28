from http.server import BaseHTTPRequestHandler, HTTPServer

# Dictionary to keep track of the trigger states
triggers = {
    '/trigger1': False,
    '/trigger2': False,
    '/trigger3': False,
    '/trigger4': False,
    '/trigger5': False,
    '/trigger6': False,
    '/trigger7': False,
    '/trigger8': False,
    '/trigger9': False,
    '/trigger10': False,
    '/trigger11': False,
    '/trigger12': False,
    '/trigger13': False
}

class SimpleHTTPRequestHandler(BaseHTTPRequestHandler):
    def do_GET(self):
        global triggers
        if self.path in triggers:
            if not triggers[self.path]:
                self.send_response(200)
                self.end_headers()
                self.wfile.write(b'Trigger aktiviert!')
                triggers[self.path] = True  # Set the trigger state to activated
            else:
                self.send_response(403)
                self.end_headers()
                self.wfile.write(b'Trigger bereits aktiviert!')
        elif self.path.startswith('/reset'):
            trigger_name = self.path.split('/reset')[1]
            trigger_name = f'/trigger{trigger_name}'
            if trigger_name in triggers:
                triggers[trigger_name] = False  # Reset the specific trigger state
                self.send_response(200)
                self.end_headers()
                self.wfile.write(f'Trigger {trigger_name} zurueckgesetzt!'.encode())
            else:
                self.send_response(404)
                self.end_headers()
                self.wfile.write(b'Trigger nicht gefunden!')
        else:
            self.send_response(404)
            self.end_headers()

httpd = HTTPServer(('0.0.0.0', 8080), SimpleHTTPRequestHandler)
print("Server gestartet auf Port 8080")
httpd.serve_forever()
