;;; SPDX-License-Identifier: GPL-3.0-or-later
;;; Copyright © 2024 Nicolas Graves <ngraves@ngraves.fr>

(define-module (odf-dsfr packages fonts)
  #:use-module (guix download)
  #:use-module (guix packages)
  #:use-module (guix build-system font)
  #:use-module (guix licenses))

(define license (@@ (guix licenses) license))

(define-public font-marianne
  (let ((commit "fd0ba9c190"))
    (package
     (name "font-marianne")
     (version "1.007")
     (source
      (origin
       (method url-fetch)
       (uri (string-append
             "https://www.systeme-de-design.gouv.fr/uploads/Marianne_"
             commit ".zip"))
       (sha256
        (base32 "0szq7dyiw1agb8my92n3pzgn0rldxziqm1spyrmjixhx0bppcrys"))))
     (build-system font-build-system)
     (home-page "https://www.gouvernement.fr/marque-de-letat/la-typographie")
     (synopsis "Typographie de l'État Français")
     (description "La typographie Marianne a été spécialement dessinée pour
répondre à des besoins d’identification, de sobriété et de lisibilité des
supports de communication.  Elle a été développée pour un usage exclusif par
les acteurs de la sphère étatique.  Son dessin fait référence au patrimoine
typographique français pour les proportions : elles sont basées sur la capitale
romaine pour les capitales et sur le Garamond pour les bas de casse.  La
construction géométrique et synthétique (ponctuation très simple et ronde)
contraste avec des formes traditionnelles plus écrites (queue du /Q,
/a et /g avec deux boucles...).")
     (license
      (license "Custom"
               "https://www.gouvernement.fr/marque-de-letat/la-typographie"
               "Cette license restreint son usage exclusivement aux
acteurs de la sphère étatique.")))))
