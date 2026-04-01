import os
from flask import Flask, jsonify, render_template, request
import pymysql

app = Flask(__name__)

DB_CONFIG = {
    'host': os.environ.get('DB_HOST', '10.8.0.2'),
    'port': int(os.environ.get('DB_PORT', 3306)),
    'user': os.environ.get('DB_USER', 'appuser'),
    'password': os.environ.get('DB_PASS', ''),
    'database': os.environ.get('DB_NAME', 'appdb'),
    'charset': 'utf8mb4'
}

def get_db():
    return pymysql.connect(**DB_CONFIG)

@app.route('/health')
def health():
    return jsonify({"status": "ok"})

@app.route('/api/db-status')
def db_status():
    try:
        conn = get_db()
        conn.ping()
        conn.close()
        return jsonify({"status": "online", "host": DB_CONFIG['host']})
    except Exception as e:
        return jsonify({"status": "offline", "error": str(e)}), 500

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/submit', methods=['POST'])
def submit():
    data = request.form.get('data', '')
    try:
        conn = get_db()
        cur = conn.cursor()
        cur.execute(
            "CREATE TABLE IF NOT EXISTS records (id INT AUTO_INCREMENT PRIMARY KEY, data VARCHAR(255), created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP)"
        )
        cur.execute("INSERT INTO records (data) VALUES (%s)", (data,))
        conn.commit()
        conn.close()
        return jsonify({"status": "ok", "message": "Record saved"})
    except Exception as e:
        return jsonify({"status": "error", "message": str(e)}), 500

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
