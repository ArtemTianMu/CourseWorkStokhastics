module AdditionalMaths
  def factorial(m)
    if m == 0 or m == 1
      1
    else
      factorial(m-1)*m
    end
  end

  def gamma(m)
    factorial(m-1)
  end

  def betta(a,b)
    1.0*factorial(a)*factorial(b)/factorial(a+b)
  end


  def incomplete_betta(a,b,x)
    simpleMonteCarlo(a,b,x)/betta(a,b)
  end


  def simpleMonteCarlo(a,b,x)

    sum = 0.0
    rnd = Random.new
    delta = x/100000.0
    (0..100000).each do|i|
      #sum += function(a,b,rnd.rand(0.0..x))
      sum += function(a,b,delta*i)
    end

    x*sum/100000
  end

  private

  def function(a,b,t)
    (t**(a-1.0))*((1-t)**(b-1.0))
  end
end
