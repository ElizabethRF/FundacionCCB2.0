# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# ruby encoding: utf-8

Question.create( [ {question: "¿Qué tipo de servicio realizas?", value: 1, area: "Todas", phase: "1"}] )
Question.create( [ {question: "Describa la o las problemáticas que se van a abordar", value: 1, area: "Todas", phase: "1"}] )
Question.create( [ {question: "Ingreso mensual de la población a la que se quiere llegar", value: 1, area: "Todas", phase: "1"}] )
Question.create( [ {question: "¿A cuántas personas se estima que ayudarán al año?", value: 1, area: "Todas", phase: "1"}] )
Question.create( [ {question: "¿Cuántas metas tiene el proyecto?", value: 1, area: "Todas"}] )
Question.create( [ {question: "¿Cuántas actividades a realizar tiene?", value: 1, area: "Todas", phase: "1"}] )
Question.create( [ {question: "¿Cuántas personas se necesita para participar en cada actividad?", value: 1, area: "Todas", phase: "1"}] )
Question.create( [ {question: "¿Cuántos voluntarios internos?", value: 1, area: "Todas", phase: "1"}] )
Question.create( [ {question: "¿Cuántos voluntarios externos?", value: 1, area: "Todas", phase: "1"}] )

Question.create( [ {question: "¿Existe o ha existido una problemática que ha interferido en el desarrollo del proyecto?", value: 1, area: "Todas", phase: "2"}] )

Question.create( [ {question: "¿Los beneficiarios colaboran en el proyecto?", value: 1, area: "Todas", phase: "2"}] )

Question.create( [ {question: "¿Realizas algún tipo de evaluación del proyecto?", value: 1, area: "Todas", phase: "2"}] )

Question.create( [ {question: "¿Ha habido cambios de enfoque en la problemática que se quiere desarrollar?", value: 1, area: "Todas", phase: "2"}] )

Question.create( [ {question: "¿Cuáles considera que son las áreas de oportunidad del proyecto?", value: 1, area: "Todas", phase: "2"}] )

Question.create( [ {question: "¿A cuántas personas se ha ayudado en la implementación del proyecto?", value: 1, area: "Todas", phase: "2"}] )
Question.create( [ {question: "¿Cuántas metas se han cumplido?", value: 1, area: "Todas", phase: "2"}] )

Question.create( [ {question: "¿Hubo cambios en las actividades?", value: 1, area: "Todas", phase: "2"}] )

Question.create( [ {question: "¿Del 1 al 10 con cuánto éxito se realizaron las activdades?", value: 1, area: "Todas", phase: "2"}] )

Question.create( [ {question: "¿A cuántas personas se ha beneficiado con esta actividad?", value: 1, area: "Todas", phase: "2"}] )
Question.create( [ {question: "¿En el siguiente espacio pon un link de drive/dropbox donde se encuentren los documentos que respalden la información de igual forma compartelo con el email de CCB?", value: 1, area: "Todas", phase: "2"}] )