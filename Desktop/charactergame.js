<html>
  <body style="background-color:lightblue;">
 
    <h1> Begin Game </h2>
    
    <script> 
      startGame();
      function startGame(){
        var prompt1 = prompt("Do you want to begin?");
        if(prompt1 = "Yes"||"yes"||"y"){
            var started = "true;"
        }
      }
    </script>
 <!---------------------------------------------------------------------------------------------------------------->
    <h1 style="color:blue;"><i>Character Generator</i></h1> 
    
<div class = "char" style="background-color: pink; border-style: solid; width: 300px; ">
    <h1> Create a character </h1>
    
    <div id="racebg" style="background-color:green;">
      <h2><b> Choose a race: </b><button onclick="generateRace()">Random race</button></h2> 
      
      <script> 
        generateRace();
        function generateRace(){ 
          var races = ["Lizard", "Cat", "Nord", "Breton", "Imperial", "Wood Elf"];
          var race = document.getElementById("race").innerHTML = races[Math.floor(Math.random()*races.length)]; 
        }     
      </script> 
    </div>
    
  <h4><p id="race"></p></h4>
  <!---------------------------------------------------------------------------------------------------------------->
   <h2 style="background-color:blue;"> <b>Choose a character: </b> <button onclick="generateChar()"> Random char </button><br></h2>
   <script> 
     generateRace();
     function generateChar(){ 
        var character = ["Mage", "Dragoon", "Bard", "Summoner", "Munchkin", "Assassin"];
        var char = document.getElementById("char").innerHTML = character[Math.floor(Math.random()*character.length)]; 
     }     
    </script> 
    <h4><p id="char"></p></h4>
<!---------------------------------------------------------------------------------------------------------------->
 <h2 style="background-color:purple;"> 
   <b>Choose an ablility: </b> 
   <button onclick="generateAbility()"> Random ability </button> <br>
</h2>
    
   <script> 
     generateAbility();
     function generateAbility(){ 
        var abilities = ["Magicka", "Health", "Strength", "Agility", "Stealth", "Accuracy"];
        var ability = document.getElementById("ability").innerHTML = abilities[Math.floor(Math.random()*abilities.length)]; 
     }       
    </script> 
    <h4><p id="ability"></p> </h4>
      <button onclick="generateValue()">Generate Value</button> 
        <script>
          generateValue();
          function generateValue(){ 
            var val = document.getElementById("val").innerHTML = Math.floor(Math.random() * 200) + 1;
          }
        </script>
    <h3><p id = "val"></p></h3>
<!---------------------------------------------------------------------------------------------------------------->
  <h2 style="background-color:yellow;"> Random Age: <button onclick="generateAge()">Generate Value</button> </h2>
     <script>
          generateAge();
          function generateAge(){ 
            var age = document.getElementById("age").innerHTML = Math.floor(Math.random() * 200) + 1;
            //document.write(val);
          }
        </script>
    <h3><p id = "age"></p></h3>
   
    </div>
<!---------------------------------------------------------------------------------------------------------------->
    <script> 
      var gen = prompt("Please enter M or F");
      
      chooseName();
      
      function chooseName(){     
           switch(gen) {
            case "M":
              var first_names_M = ["Sam Rodriguez", "Tony Rivera","Tom Wilson","Barry Drewmoore"];
              var name1 = document.getElementById("name1").innerHTML = first_names_M[Math.floor(Math.random()*first_names_M.length)];
              break;
            case "F":
              var first_names = ["Samantha Rogers", "Toni Bradwell","Tammi Gonzalez","Bonnie Van Wheelen", "Lisa Carpenter", "Monica Grey"];
              var nameF = document.getElementById("name1").innerHTML = first_names[Math.floor(Math.random()*first_names.length)];
              break;
            default:
              var name1 = "error";
           }
       }
    </script>
    
    <h1> Choose Name </h1>
    <button onclick="chooseName()"> Generate Name </button>
    <h3><p id = "name1"></p></h3>
<!---------------------------------------------------------------------------------------------------------------->
   <button onclick="game()"> Begin Game </button> 
    <script>         
      var gameVar = prompt("Enter a value 0 through 3");
      
      function game(){
        switch(gameVar){
          case "0":
            var prompt1 = "You are alone in a jail cell. What do you do?";
            alert(prompt1);
            break;
          case "1":
            var prompt2 = "You are stranded on a deserted island. What do you do?"
            alert(prompt2);
            break;
          case "2": 
            var prompt3 = "There is a zombie outside your window. What do you do?"
            alert(prompt3);
            break;
          case "3":
            var prompt4 = "You have been taken into the Upside Down. What do you do?"
            alert(prompt4); 
            break;
          default:
            var prompt = "You are laying in the sun when suddenly it starts raining. What do you do?"
            alert(prompt);
        }


      }
    </script>
    
  </body> 
</html> 
