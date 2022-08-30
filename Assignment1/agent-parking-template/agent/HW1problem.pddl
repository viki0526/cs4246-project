(define (problem parking) 
 (:domain grid_world) 
(:objects agent1  - agent
 pt0pt0 pt0pt1 pt0pt2 pt1pt0 pt1pt1 pt1pt2 pt2pt0 pt2pt1 pt2pt2 pt3pt0 pt3pt1 pt3pt2 pt4pt0 pt4pt1 pt4pt2  - gridcell
 ) 
(:init (blocked pt0pt1)(blocked pt0pt2)(blocked pt1pt0)(blocked pt1pt2)(blocked pt3pt0)(blocked pt4pt1)(at pt4pt2 agent1)) 
(:goal at (pt0pt0 agent1)) 
) 
