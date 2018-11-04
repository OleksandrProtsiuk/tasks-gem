require "tasks/version"

module Tasks
  require 'prime'
  load 'conditions.rb'

  class MathExercises
    # puts task - conditions
    def conditions(number:)
      $number = number
      CONDITIONS[number] # Const from file conditions.rb
    end

    # line is used to solve task25
    def line(a, b)
      Math.sqrt((b[0] - a[0])**2 + (b[1] - a[1])**2)
    end

    # factorial is used to solve task235
    def factorial(a)
      (1..a).inject(:*) || 1
    end

    # gcd is used to solve task323
    def gcd(a, b)
      if (a % b).zero?
        b
      else
        gcd(b, a % b)
      end
    end

    def task1(a:, b:)
      $a = a
      $b = b
      sum = a + b
      diff = a - b
      mult = a * b
      [sum, diff, mult]
    end

    def task2(x:, y:)
      $x = x
      $y = y
      (x - y).abs / (1 + (x * y).abs)
    end

    def task3(a: )
      $a = a
      volume = a**3
      square = (a**2) * 4
      [volume, square]
    end

    def task4(a: , b: )
      $a = a
      $b = b
      average =(a + b) / 2
      geometric = Math.sqrt(a * b)
      [average, geometric]
    end

    def task5(a: , b: )
      $a = a
      $b = b
      average =(a + b) / 2
      geometric = Math.sqrt((a * b).abs)
      [average, geometric]
    end

    def task6(a: , b: )
      $a = a
      $b = b
      hypotenuse = Math.hypot(a, b)
      square = (a * b) / 2
      [hypotenuse, square]
    end

    def task8(corners: , radius: )
      $corners = corners
      $radius = radius
      (2 * radius * Math.tan(Math::PI / corners)) * corners
    end

    def task9(r1: , r2: , r3: )
      $r1 = r1
      $r2 = r2
      $r3 = r3
      Float(1 / (r1**-1 + r2**-1 + r3**-1))
    end

    def task10(h: )
      $h = h
      Math.sqrt(2 * (h / 9.8))
    end

    def task12(a: )
      $a = a
      0.43301270189 * a**2
    end

    def task13(l: )
      $l = l
      2 * Math::PI * Math.sqrt(l / 9.8 )
    end

    def task15(hypotenuse: , leg1: )
      $hypotenuse = hypotenuse
      $leg1 = leg1
      leg2 = Math.sqrt(hypotenuse**2 - leg1**2)
      radius = (leg1 + leg2 - hypotenuse) / 2
      [leg2, radius]
    end

    def task16(l: )
      $l = l
      Math::PI * (l / (2 * Math::PI))**2
    end

    def task17(radius: )
      $radius = radius
      (Math::PI * radius**2) - (Math::PI * 20**2)
    end

    def task24(x1: , y1: , x2: , y2: )
      $x1 = x1
      $y1 = y1
      $x2 = x2
      $y2 = y2
      a = [x1, y1]
      b = [x2, y2]
      Math.sqrt((b[0] - a[0])**2 + (b[1] - a[1])**2)
    end

    def task25(x1: , y1: , x2: , y2: , x3: , y3: )
      $x1 = x1
      $y1 = y1
      $x2 = x2
      $y2 = y2
      $x3 = x3
      $y3 = y3
      a, b, c, = [x1, y1], [x2, y2], [x3, y3]
      perimeter = line(a, b) + line(b, c) + line(a, c)
      p = perimeter / 2
      square = Math.sqrt(p * (p - line(a, b)) * (p - line(b, c)) * (p - line(a, c)))
      [perimeter, square]
    end

    def task28(x: )
      $x = x
      x * (x * (x * (2 * x - 3) + 4) - 5) + 6
    end

    def task33(x: , y: )
      $x = x
      $y = y
      [[x, y].max , [x, y].min]
    end

    def task35(x: , y: , z: )
      $x = x
      $y = y
      $z = z
      xyz = [x, y, z]
      part_a = [xyz.inject(0){ |res, elem| res + elem }, xyz.inject(1){ |res, elem| res * elem }].max
      part_b = (([((1..2).to_a.inject(0){ |res, elem| res + elem } + xyz[2] / 2), xyz.inject(1){ |res, elem| res * elem }].min)**2) + 1
      [part_a, part_b]
    end

    def task36(a: , b: , c: )
      $a = a
      $b = b
      $c = c
      if b > a && c > b
        true
      else
        false
      end
    end

    def task_37(a: , b:, c: )
      $a = a
      $b = b
      $c = c
      if a >= b && b >= c
        a *= 2
        b *= 2
        c *= 2
      else
        a = a.abs
        b = b.abs
        c = c.abs
      end
      [a, b, c]
    end

    def task39(a: , b: )
      $a = a
      $b = b
      a > b ? [a] : [a, b]
    end

    def task40(a: , b: )
      $a = a
      $b = b
      a <= b ? [0, b] : [a, b]
    end

    def task41(a: , b: , c: )
      $a = a
      $b = b
      $c = c
      nums = [a, b, c]
      nums.each { |num| (1..3).include?(num) ? num : nums.delete(num) }
      nums
    end

    def task42(x: , y: )
      $x = x
      $y = y
      x < y && x != y ? [(x + y) / 2, (x * y) * 2] : [(x * y) * 2 , (x + y) / 2]
    end

    def task43(a: , b: , c: )
      $a = a
      $b = b
      $c = c
      nums = []
      [a, b, c].each { |elem| elem > 0 ? nums.push(elem**2) : nums.push(elem) }
      nums
    end

    def task55(a: , b: , c: , d: )
      $a = a
      $b = b
      $c = c
      $d = d
      fig1 = [a, b]
      fig2 = [ c, d]
      fig1.max <= fig2.max && fig1.min <= fig2.min ? true : false
    end

    def task62(a: )
      $a = a
      a.even? ? true : false
    end

    def task64(n: )
      $n = n
      n > 99 ? n / 100 : 0
    end

    def task65(n: )
      $n = n
      n.to_s.split("").map(&:to_i) == n**2 ? true : false
    end

    def task73(k: , l: )
      $k = k
      $l = l
      k != l ?  new_k = new_l = [k, l].max : new_k = new_l = 0
      [new_k, new_l]
    end

    def task75(n: )
      $n = n
      ((n % 5) % 3 == 0) || ((n % 3) % 5 == 0) ? true : false
    end

    def task77(n: )
      $n = n
      [2**n, ((1..n).inject(:*) || 1)]
    end

    def task87(n: , m: )
      $n = n
      $m = m
      (n.to_s.split("").map(&:to_i)).last(m).inject(0){ |res, elem| res = res + elem }
    end

    def task107(m: )
      $m = m
      k = 0
      k += 1 until (4 ** k) >= m
      k
    end

    def task108(n: )
      $n = n
      r = 0
      r += 1 until (2**r) > n
      r
    end

    def task140(n: 100)
      $n = n
      results = []
      (1..n).each { |elem| results.push((3 * elem +4) / (elem**2 - (5 * elem) -9)) }
      results
    end

    def task148(n: 100)
      $n = n
      temp_hash ={}
      (1..n).each { |c| temp_hash[c] = ((9 / 5) * c) + 32 }
      temp_hash
    end

    def task182(n: )
      $n = n
      sum = 0
      count = 0
      (0..n).each do |elem|
        if (elem % 5) == 0 && (elem % 7) != 0
          sum += elem
          count += 1
        end
      end
      [sum, count]
    end

    def task235(n: , m: )
      $n = n
      $m = m
      (factorial(m) + factorial(n)) / factorial(m + n)
    end

    def task251(text: )
      $text = text
      count = text.split('').map(&:to_s).select { |item| item.include?("x") }
      count.length
    end

    def task323(n: )
      $n = n
      nums = []
      (1..n).each do |x|
        if x < n
          gcd(n, x) == 1 ? nums.push(x) : nums
        end
      end
      nums
    end

    def task327(a: , b: )
      $a = a
      $b = b
      nums = []
      (a..b).each { |elm| Prime.prime?(elm) ? nums.push(elm) : nums }
      nums
    end

    def task328(n: 100)
      $n = n
      Prime.first(n)
    end

    def task606(a: , b: , c: , d: )
      $a = a
      $b = b
      $c = c
      $d = d
      arr = [a, b, c, d]
      arr.max >= (arr.delete_if{ |x| x == arr.max }.inject(0){ |res, elem| res + elem }) ?  "Possible" : "Impossible"
    end

    def task621(a: , b: , c: , d: )
      $a = a
      $b = b
      $c = c
      $d = d
      fig1 = [a, b]
      fig2 = [c, d]
      fig1.inject(0){ |res, elem| res + elem } <= fig2.inject(0){ |res, elem| res + elem } ? "It is possible" : "It is not possible"
    end

    def task809(n: )
      $n = n
      number = n.to_s.split('').map(&:to_s)
      i = 3
      (number.length / 3).times do
        number.insert((number.length - i), " ")
        i += 4
      end
      number.join
    end

    def task811(n: )
      $n = n
      rur = n / 100
      penny = n - (rur * 100)
      penny.to_s.split('').map(&:to_s).length == 1 ? (penny.insert(0, "0")) : penny
      "the prise is #{rur} rur. #{penny} penny."
    end

    def task822(year: )
      $year = year
      (year % 4).zero? && year % 100 != 0 || (year % 400).zero? ? "366 days in #{year}" : "365 days in #{year}"
    end
  end
end
