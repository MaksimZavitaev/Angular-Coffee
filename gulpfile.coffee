gulp = require 'gulp'
requireDir = require 'require-dir'

# Подключаем все задачи из gulp/tasks, включая подкаталоги
requireDir './gulp/tasks', recurse: true