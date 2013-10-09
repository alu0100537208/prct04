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

a, b = read_matrices('datos.txt')

puts "Elementos de a " 
puts a
puts "Elementos de b " 
puts b

puts " "

puts "Matriz A tiene  "
puts a.length
puts "filas y  "
puts a[0].length
puts " columnas"

puts " "
puts "Matriz B tiene  "
puts b.length
puts "filas y  "
puts b[0].length
puts " columnas"


puts "  "
puts " Suma !"
if a.length == b.length
  if a[0].length == b[0].length
    c = a[0]+b[0]
    puts c
  end

else
  puts " No se puede realizar suma !"
end  

puts "Producti"
if a.length == b[0].length
  if a[0].length == b.length 
    c = a[0]+b[0]
    puts c
  end

else
  puts " No se puede realizar producto !"
end  
