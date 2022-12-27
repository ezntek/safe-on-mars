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

(import game [Game]
        title [Title]
        pyray :as pr)

(setv window-width 1200
      window-height 900
      current-screen "Title"
      current-title f"Safe On Mars - {current-screen}")

(defn launcher[]
    ; set up raylib ctx
    (pr.init-window window-width window-height current-title)
    (pr.set-target-fps 60)

    ; set up screen objects
    (setv game-screen (Game)
          title-screen (Title))

    (while (not (pr.window-should-close)) 
        (setv current-title f"Safe On Mars - {Title}")
        (cond
            (= current-screen "Title")
                (. title-screen (event-loop))
            (= current-screen "Game") 
                (. game-screen (event-loop))))
    
    (pr.close-window))