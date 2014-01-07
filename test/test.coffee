path = require 'path'
test_path = path.join(__dirname, 'fixtures')
helpers = require './helpers'

describe 'basic', ->

  it 'should work', (done) ->
    helpers.compile_and_match(path.join(test_path, 'basic.styl'), done)
