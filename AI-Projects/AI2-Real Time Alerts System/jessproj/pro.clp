(deftemplate trade
	(slot timeorder)
    (slot price)
    (slot volume))

(deffunction turnover()
    (bind ?rqa (run-query* alltrade ))(bind ?t 0)
    (while (?rqa next)
    do
    (bind ?t (+ ?t (* (?rqa getFloat p) (?rqa getFloat v)) )))
    (return ?t))    

(defrule rulea "rule a"
(closeprice ?clp)
(currentprice ?cup&: (<= ?cup 20))
(test (>  (/ (abs (- ?cup ?clp)) ?clp) 0.1 ) )  
   => (printout t "voilate rule a!"   crlf))

(defrule ruleb "rule b"
(closeprice ?clp)
(currentprice ?cup&: (<= ?cup 20))
  (test (> (turnover) 50000 ))
    (test (> (/ (abs (- ?cup ?clp ) ) ?clp) 0.1 ))
   => (printout t "voilate rule b!" crlf))

(defrule rulec "rule c"
(closeprice ?clp)
(currentprice ?cup&: (> ?cup 20)) 
(test (> (/ (abs (- ?cup ?clp)  ) ?clp) 0.05 )) 
   => (printout t "voilate rule c!" crlf))

(defrule ruled "rule d"
(closeprice ?clp)
(currentprice ?cup&: (> ?cup 20)) 
(test (>(turnover) 50000 ))(test (> (/ (abs (- ?cup ?clp) ) ?clp) 0.08 )) 
=> (printout t "voilate rule d!" crlf))

(defquery alltrade 
(trade(timeorder ?o)(price ?p)(volume ?v))) 

 
 

