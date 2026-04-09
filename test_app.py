from app import app

def test_home():
    response = app.test_client().get('/')
    assert response.status_code ==200
    assert response.data == b'hello world'

def test_about():
    response = app.test_client().get('/about')
    assert response.status_code ==200
    assert response.data == b'about page'

def test_contact():
    response = app.test_client().get('/contact')
    assert response.status_code ==200
    assert response.data == b'contact page'