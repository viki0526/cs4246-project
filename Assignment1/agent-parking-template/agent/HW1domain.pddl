(define (domain grid_world ) 
(:requirements :strips :typing) 
(:types car
agent - car
gridcell
) 
(:predicates (at ?pt1 - gridcell ?car - car) 
(up_next ?pt1 - gridcell ?pt2 - gridcell) 
(down_next ?pt1 - gridcell ?pt2 - gridcell) 
(forward_next ?pt1 - gridcell ?pt2 - gridcell) 
(blocked ?pt1 - gridcell) 
) 
(:action UP
:parameters ( ?car - car ?pt1 - gridcell ?pt2 - gridcell) 
:precondition (and (at ?car ?pt1) (up_next ?pt1 ?pt2) (not (blocked ?pt2)))
:effect (and (not (at ?car ?pt1)) (at ?car ?pt2) (not (blocked ?pt1)) (blocked ?pt2))
) 
(:action DOWN
:parameters ( ?car - car ?pt1 - gridcell ?pt2 - gridcell) 
:precondition (and (at ?car ?pt1) (down_next ?pt1 ?pt2) (not (blocked ?pt2)))
:effect (and (not (at ?car ?pt1)) (at ?car ?pt2) (not (blocked ?pt1)) (blocked ?pt2))
) 
(:action FORWARD
:parameters ( ?car - car ?pt1 - gridcell ?pt2 - gridcell) 
:precondition (and (at ?car ?pt1) (forward_next ?pt1 ?pt2) (not (blocked ?pt2)))
:effect (and (not (at ?car ?pt1)) (at ?car ?pt2) (not (blocked ?pt1)) (blocked ?pt2))
) 
) 
