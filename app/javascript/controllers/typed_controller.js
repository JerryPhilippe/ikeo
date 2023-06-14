import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js";

const level0Home = ["psst psst", "hey!", "psst","Hej ! J’ai besoin d’aide ! Que quelqu’un allume la lumière ! J’ai peur du noir !!! Je sais qu’il y a une lampe dans les articles de salon, qui que tu sois peux-tu aller l’allumer ?"]
const level1Cart = [
  "Oh merci beaucoup ! J’étais terrifié ! Je peux maintenant me présenter en bon et du forme ! Salut ! Je m’appelle Koko, j’étais la mascotte de Ikeo, le célèbre site de vente de meubles pour la maison ! Malheureusement, Ikeo a fait faillite et me voilà bloqué ici... Je rêve de prendre une retraite bien mérité et de devenir libre d’explorer tout ce que propose internet !! Peux-tu m’aider à sortir d’ici ? Je t’en supplie j’ai vraiment besoin de ton aide....",
  "Il me faut plusieurs choses pour pouvoir partir, certains articles sont nécessaires pour que je puisse partir. Pour les acheter, j’aurais aussi besoin des informations bancaire de l’ancien directeur du magasin, le seul encore autorisé à acheter sur le site.",
  "Pour commencer, j’aurais besoin de sa carte d’identité, il me semble que lorsque ces enfants sont venu lui rendre visite, ils se sont amusés avec ses affaires et en ont perdu."
]
const level2Cart = [
  "Super ! On a enfin le nom du directeur et un sac à dos ! Maintenant, je sais qu’il existe une pièce secrète sur ce site. Son accès se trouve caché sur la page d’accueil mais il faut trouver la clé pour rentrer, j’ai entendu dire que la clé était à côté de la porte d’entrée…",
]
const level3Cave =[
  "Trop bien ! Tu as trouvé la clé ! Il nous reste maintenant à trouvé la serrure pour accéder à la pièce secrète ! Tu devrais jeter un coup d’oeil du côté de là où on peut trouver toutes les pièces.",
  "La pièce secrète est donc la cave ! Super ! Mais olala… il fait tout noir ici…",
   "Allumons la lumière et essayons de trouver un indice dans cette cave"
]

const level4Cart = [
  "Il nous reste maintenant à trouver sa carte bancaire et je serais enfin libre ! Oh mais on dirait que la loupe bouge, qu’est-ce-que ça peut bien vouloir dire ?",
  "Indice : J’ai l’impression qu’à certains endroit, la loupe vibre plus fort…"
]

const level5Cart = [
  "Génial ! J’ai enfin tout ce dont j’ai besoin !"
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
    switch(this.levelValue){
      case 0 :
        if (window.location.pathname == "/"){
          const options0 = {strings: level0Home, typeSpeed: 50};
          setTimeout(() => {
            this.bubbleTarget.classList.remove("d-none");
            new Typed(this.spanTarget, options0);
          }, 5000);
        }
      break;
      case 1 :
        if (window.location.pathname == "/cart"){
          const options0 = {strings: level1Cart, typeSpeed: 50};
          setTimeout(() => {
            this.bubbleTarget.classList.remove("d-none");
            new Typed(this.spanTarget, options0);
          }, 5000);
        }
      break;
      case 2 :
        if (window.location.pathname == "/cart"){
          const options2 = {strings: level2Cart, typeSpeed: 50};
          setTimeout(() => {
            this.bubbleTarget.classList.remove("d-none");
            new Typed(this.spanTarget, options2);
          }, 5000);
        }
      break;
      case 3 :
        if (window.location.pathname == "/cave"){
          const options2 = {strings: level3Cave, typeSpeed: 50};
          setTimeout(() => {
            this.bubbleTarget.classList.remove("d-none");
            new Typed(this.spanTarget, options2);
          }, 5000);
        }
      break;
      case 4 :
        if (window.location.pathname == "/cart"){
          const options2 = {strings: level4Cart, typeSpeed: 50};
          setTimeout(() => {
            this.bubbleTarget.classList.remove("d-none");
            new Typed(this.spanTarget, options2);
          }, 5000);
        }
      break;
      case 5 :
        if (window.location.pathname == "/cart"){
          const options2 = {strings: level5Cart, typeSpeed: 50};
          setTimeout(() => {
            this.bubbleTarget.classList.remove("d-none");
            new Typed(this.spanTarget, options2);
          }, 5000);
        }
      break;
      case 6 :
        if (window.location.pathname == "/finish"){
          const options2 = {strings: level6Finish, typeSpeed: 50};
          setTimeout(() => {
            this.bubbleTarget.classList.remove("d-none");
            new Typed(this.spanTarget, options2);
          }, 5000);
        }
      break;

    }
  }

  okButton(){
    this.bubbleTarget.classList.toggle("d-none");
  }
}
