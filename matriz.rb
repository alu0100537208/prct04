#!/usr/bin/ruby


# Abre y lee un fichero
# Se usa un bloque: el fichero se cierra
# automáticamente al acabar el bloque.

def mapmap(a)
  a.map { |r| 
    r.map { |e| 
      yield e
    }
  }
end


def to_m(a)
  a = a.split(/\n/)
  a = a.map { |r| r.split(/\s+/) }
  a = mapmap(a) { |x| x.to_f } 
end


def read_matrices(fn)
  text = File.open(fn).read

  puts text

  a, b = text.split(/\n\n+/)
  a = to_m(a)
  b = to_m(b)

  [a, b]
end



a, b = read_matrices('datos.txt')

puts a

puts b








