from flask import Flask, render_template
app = Flask(__name__)

@app.route('/')
def mainPage():
    return render_template('main.html')

@app.route('/topic_page')
def topicPage():
	return render_template('topic.html')

if __name__ == "__main__":
	app.run(debug=True,host='0.0.0.0', port=8080)

