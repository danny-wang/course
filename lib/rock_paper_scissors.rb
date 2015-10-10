class RockPaperScissors

  # Exceptions this class can raise:

  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
  	begin
  	unless (player1[1]=~/^(R|S|P)$/)&&(player2[1]=~/^(R|S|P)$/)
  		raise NoSuchStrategyError, "Strategy must be one of R,P,S"
  	end
  	# rescue Exception => e
   #  	puts  e.message
   # 		puts  e.backtrace.inspect
   	end
   	
   	if player1[1].eql? "S" 
   		p1=0
   	elsif player1[1].eql? "R" 
   		p1=1
   	else
   		p1=2
   	end
   	if player2[1].eql? "S" 
   		p2=0
   	elsif player2[1].eql? "R" 
   		p2=1
   	else
   		p2=2
   	end
    result=(p1-p2+4)%3-1
   	if result>=0 
   		return player1
   	else
   		return player2
   	end
   	

  end

  def self.tournament_winner(tournament)
  	if tournament[0][0].class ==String
  		return self.winner(tournament[0],tournament[1])
  	else
  		a=[0,0]
  		for i in 0..1 do
  		a[i]=self.tournament_winner(tournament[i])
  		end
  		return self.winner(a[0],a[1])
  	end

  end

end


#p (RockPaperScissors.winner  ['Armando','R'],['Sam','S'])==['Armando','R']