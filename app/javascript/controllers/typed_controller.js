import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js";

const level0Home = ["psst psst", "hey!", "psst","Hej ! J’ai besoin d’aide ! Que quelqu’un allume la lumière ! Je sais qu’il y a une lampe dans le salon, qui que tu sois peux-tu aller l’allumer ?"]
const level1Cart = [
  "Oh merci beaucoup ! J’étais terrifié ! Je peux maintenant me présenter en bon et du forme !",
  "Salut ! Je m’appelle Koko, j’étais la mascotte de Ikeo, le célèbre site de vente de meubles pour la maison ! Malheureusement, Ikeo a fait faillite et me voilà bloqué ici...",
  "J'ai besoin de ton aide, Il me faut un sac à dos pour pouvoir partir d'ici. Je sais que des enfants avaient perdu le leur mais je ne sais pas où..."
]
const level2Cart = [
  "Super ! Le problème c'est que je dois l'acheter pour le récupérer.",
  "La seule personne capable d'acheter sur le site est l'ancien directeur du magasin, celui dont on a trouvé la carte d'identité : Ingrov Komprod",
  "On a son nom mais il nous manque des informations...",
  "Je sais qu’il existe une pièce secrète sur ce site. Il faut trouver la clé pour y accéder. j’ai entendu dire que la clé était à côté de la porte d’entrée..."
]
const level3Cave =[
  "Trop bien ! tu as trouvé la pièce secrète ! c'était donc la cave ! Mais olala… il fait tout noir ici…",
   "Ah y voit mieux ! Mais c’est bizarre, un des objets est couvert de poussière, il doit bien y avoir un moyen de le nettoyer…"
]

const level4Cart = [
  "Génial ! On a une adresse de livraison ! Il nous reste maintenant à trouver sa carte bancaire",
  "Oh mais on dirait que la loupe bouge, qu’est-ce-que ça peut bien vouloir dire ?",
  "J’ai l’impression qu’à certains endroit, la loupe vibre plus fort…"
]

const level5Cart = [
  "Génial ! J’ai enfin tout ce dont j’ai besoin ! Il ne reste plus qu'à payer et je serais enfin libre !"
]

const level6Finish = [
  "Merci beaucoup de ton aide ! Je vais enfin pouvoir visiter tout internet ! J’ai tellement hâte ! Je ne pourrais jamais assez te remercier, j’espère te revoir un jour !",
]
// Connects to data-controller="typed"
export default class extends Controller {
  static values = {
    level: Number
  }
  static targets = ["bubble", "span"]

  connect() {
    // clearTimeout(this.timeout)
    this.speak(null, 2000);
  }

  okButton(){
    this.bubbleTarget.classList.toggle("d-none");
  }

  speak(evt, time) {
    console.log(this.levelValue)
    clearTimeout(this.timeout)
    if (this.typed) { this.typed.stop() }

    switch(this.levelValue){
      case 0 :
        if (evt || window.location.pathname == "/"){
          const options0 = {
            strings: level0Home,
            typeSpeed: 50
          };


          this.timeout = setTimeout(() => {
            this.bubbleTarget.classList.remove("d-none");
            this.typed = new Typed(this.spanTarget, options0);
          }, time || 0);
        }
      break;
      case 1 :
        if (evt || window.location.pathname == "/cart"){
          const options0 = {
            strings: level1Cart,
            typeSpeed: 50
          };

          this.timeout = setTimeout(() => {
            this.bubbleTarget.classList.remove("d-none");
            this.typed = new Typed(this.spanTarget, options0);
          }, time || 0);
        }
      break;
      case 2 :
        if (evt || window.location.pathname == "/cart"){
          const options0 = {
            strings: level2Cart,
            typeSpeed: 50
          };


          this.timeout = setTimeout(() => {
            this.bubbleTarget.classList.remove("d-none");
            this.typed = new Typed(this.spanTarget, options0);
          }, time || 0);
        }
      break;
      case 3 :
        if (evt || window.location.pathname == "/cave"){
          const options0 = {
            strings: level3Cave,
            typeSpeed: 50
          };


          this.timeout = setTimeout(() => {
            this.bubbleTarget.classList.remove("d-none");
            this.typed = new Typed(this.spanTarget, options0);
          }, time || 0);
        }
      break;
      case 4 :
        if (evt || window.location.pathname == "/cart"){
          const options0 = {
            strings: level4Cart,
            typeSpeed: 50
          };


          this.timeout = setTimeout(() => {
            this.bubbleTarget.classList.remove("d-none");
            this.typed = new Typed(this.spanTarget, options0);
          }, time || 0);
        }
      break;
      case 5 :
        if (evt || window.location.pathname == "/cart"){
          const options0 = {
            strings: level5Cart,
            typeSpeed: 50
          };


          this.timeout = setTimeout(() => {
            this.bubbleTarget.classList.remove("d-none");
            this.typed = new Typed(this.spanTarget, options0);
          }, time || 0);
        }
      break;
      case 6 :
        if (evt || window.location.pathname == "/finish"){
          const options0 = {
            strings: level6Finish,
            typeSpeed: 50
          };

          this.timeout = setTimeout(() => {
            this.bubbleTarget.classList.remove("d-none");
            this.typed = new Typed(this.spanTarget, options0);
          }, time || 0);
        }
      break;
    }
  }
}
