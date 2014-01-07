path = require 'path'
fs = require 'fs'
should = require 'should'
accord = require 'accord'
stylus = accord.load('stylus')
grate = require '..'

exports.match_expected = match_expected =(out, p, done) ->
  try
    expected_path = path.join(path.dirname(p), path.basename(p, '.styl')) + '.css'
    if not fs.existsSync(expected_path) then throw '"expected" file doesnt exist'
    expected_contents = fs.readFileSync(expected_path, 'utf8')
    out.should.eql(expected_contents)
  catch err
    return done(err)
  done()

exports.compile_and_match = (p, done) ->
  compile(p)
    # .tap(console.log.bind(console))
    .done(((out) => match_expected(out, p, done)), done)

# @api private

compile = (p) ->
  stylus.renderFile(p, { use: grate() })


