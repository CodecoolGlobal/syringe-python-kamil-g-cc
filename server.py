from flask import Flask, render_template, request

import data_manager

app = Flask(__name__)


@app.route('/', methods=['GET', 'POST'])
def index():
    name = request.args.get('name', request.form.get('name'))
    text = request.args.get('text', request.form.get('text'))
    if name is not None and text is not None:
        data_manager.create_comment(name, text)

    comments = data_manager.get_comments()
    return render_template('index.html', comments=comments)


if __name__ == '__main__':
    app.run()
