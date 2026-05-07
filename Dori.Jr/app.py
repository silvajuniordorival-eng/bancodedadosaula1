from flask import Flask, render_template,
request, redirect, url_for
import mysql.connector

@app.route('/clientes')
def listar_clientes():
    cursor = db.cursor(dictionary=True)
    dictionary=True facilita o uso no Jinja
    cursos.execute("SELECT * FROM clientes")
    lista_clientes = cursos.fetcha11()
    cursor.close()

    return render_template('lista.html', clientes=lista_clientes)

