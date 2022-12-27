;; Safe On Mars.
;; Real-Time strategy Game written in Raylib, Python and the Hy Lisp.

;; Copyright (C) 2022 and onwards, ezntek. Contact at ezntek@protonmail.com 
;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or at any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>
(import pyray :as pr
        colors [Colors])

(defclass Game [] 
    (defn __init__ [self]
        ;; variable declarations
        (setv self.timer 0))
        
    ;; draw and update code
    (defn render [self] 
        (pr.clear-background Colors.raywhite))
    
    (defn update [self] 
        (+= self.timer 1))

    ;; event loop
    (defn event-loop [self] 
        (update)
        (pr.begin-drawing)
        (render)
        (pr.end-drawing))) 