#!/bin/bash

verwaltungsarchiv() {
  case "$1" in
    anlegen)
      git init
      ;;
    klonen)
      git clone "${@:2}"
      ;;
    hinzufügen)
      git add "${@:2}"
      ;;
    eintragen)
      git commit "${@:2}"
      ;;
    status)
      git status
      ;;
    historie)
      git log
      ;;
    zweig)
      git branch "${@:2}"
      ;;
    wechseln)
      git checkout "${@:2}"
      ;;
    zusammenführen)
      git merge "${@:2}"
      ;;
    abrufen)
      git fetch "${@:2}"
      ;;
    übertragen)
      git push "${@:2}"
      ;;
    neubasieren)
      git rebase "${@:2}"
      ;;
    *)
      echo "Ungültige Option."
      ;;
  esac
}

schiffscontainer() {
  case "$1" in
    erstellen)
      docker build "${@:2}"
      ;;
    ausführen)
      docker run "${@:2}"
      ;;
    auflisten)
      docker ps "${@:2}"
      ;;
    bilder)
      docker images "${@:2}"
      ;;
    beenden)
      docker stop "${@:2}"
      ;;
    entfernen)
      docker rm "${@:2}"
      ;;
    bild_entfernen)
      docker rmi "${@:2}"
      ;;
    protokoll)
      docker logs "${@:2}"
      ;;
    eingeben)
      docker exec "${@:2}"
      ;;
    *)
      echo "Ungültige Option."
      ;;
  esac
}

steuerbord() {
  case "$1" in
    anwenden)
      kubectl apply "${@:2}"
      ;;
    erstellen)
      kubectl create "${@:2}"
      ;;
    abrufen)
      kubectl get "${@:2}"
      ;;
    aktualisieren)
      kubectl update "${@:2}"
      ;;
    löschen)
      kubectl delete "${@:2}"
      ;;
    beschreiben)
      kubectl describe "${@:2}"
      ;;
    ausführen)
      kubectl exec "${@:2}"
      ;;
    protokoll)
      kubectl logs "${@:2}"
      ;;
    weiterleiten)
      kubectl port-forward "${@:2}"
      ;;
    *)
      echo "Ungültige Option."
      ;;
  esac
}
