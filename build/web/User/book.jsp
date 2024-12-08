<%-- 
    Document   : book
    Created on : Dec 5, 2024, 10:34:48 PM
    Author     : puaas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book a Book today!</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Tienne:wght@400;700;900&display=swap">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Geist:wght@100..900&family=Public+Sans:ital,wght@0,100..900;1,100..900&display=swap">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">
    <style>
        :root{
            --poppy-pompadour: hsla(266, 62%, 44%, 1);
            --dark-dreams: hsla(260, 50%, 28%, 1);
            --bright-lavender: hsla(266, 55%, 75%, 1);
            --ghost-white: hsla(252, 56%, 98%, 1);
            --isabelline: hsla(38, 22%, 93%, 1);
            --silver: rgb(110, 105, 105);
            --eerie-black: hsla(0, 0%, 15%, 1);
            --main-font: 'Tienne', sans-serif;
            --sub-font: 'Geist', sans-serif;
        }

        body{
            background-color: var(--isabelline);
            margin: 0;
            display: grid;
            grid-template-rows: 10% 80% 10%;
            height: 100vh;
            width: 100vw;
            overflow: hidden;
        }

        /*header stye*/
        header{
            display: flex;
            align-items: center;
            background-color: var(--bright-lavender);
            border-bottom: 2px solid var(--dark-dreams);
        }

        header > h1{
            font-family: var(--main-font);
            font-size: 25px;
        }


        .logo{
            width: 4em;
            height: 4em;
            margin-left: 5px;
        }

        /*footer style*/
        footer{
            display: flex;
            align-items: center;
        }

        footer > h1{
            margin: 0;
            margin-left: 20px;
            font-size: 1rem;
            color: var(--eerie-black);
            font-family: var(--main-font);
        }

        /*actual content*/
        .page-content{
            display:flex;
            align-items: center;
            justify-content: center;
        }

        .panel-1, .panel-2{
            width: 30vw;
        }

        .panel-1{
            margin-left: auto;
        }

        .panel-1 > img{
            margin-left: auto;
            width: 20rem;
            height: 30rem;
        }

        .panel-2{
            margin-right: auto;
        }

        .book-title{
            font-family: var(--main-font);
            font-size: 2.5rem;
            margin-bottom: 5px;
        }

        .book-author{
            font-family: var(--main-font);
            font-size: 1.5rem;
            margin: 0;
        }

        .synopsis{
            font-family: var(--sub-font);
            font-size: 1rem;
        }

        input[type="submit"]{
            width: 9rem;
            height: 3rem;
            border-radius: 5px;
            border-color: var(--bright-lavender);
            background-color: var(--bright-lavender);
            font-family: var(--sub-font);
            font-size: 20px;
            font-weight: 700;
            cursor: pointer;
        }

        /* Popup Styles */
        .popup {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            justify-content: center;
            align-items: center;
        }

        .popup:target {
            display: flex;
        }

        .popup-content {
            background-color: var(--dark-dreams);
            color: white;
            padding: 2rem;
            border-radius: 10px;
            text-align: center;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            border: 2px solid var(--bright-lavender);
        }

        .popup-content h2 {
            margin-bottom: 1rem;
            font-family: var(--main-font);
        }

        .popup-content p {
            margin-bottom: 1rem;
            font-family: var(--sub-font);
        }

        .close-btn {
            display: inline-block;
            padding: 0.5rem 1rem;
            background-color: var(--bright-lavender);
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
            font-family: var(--main-font);
        }

        .close-btn:hover {
            background-color: var(--dark-dreams);
        }

        .go-home {
            position: absolute;
            top: 80px;
            left: 10px;
            font-family: var(--sub-font);
            font-size: 1.2rem;
            color: var(--eerie-black);
            text-decoration: none;
            font-weight: bold;
            padding: 10px;
        }

        .go-home i {
            margin-right: 8px;
        }

        .go-home:hover {
            color: var(--bright-lavender);
        }
    </style>
    </head>
<body>
    <header>
        <img class="logo" src="${pageContext.request.contextPath}/images/library-logo.png" alt="library-logo">
        <h1>ICS2608/2CSA/Balagtas, Pua</h1>
    </header>
        
    <% String bookNumber = request.getParameter("book");
       String userName = (String)session.getAttribute("username"); %>
       
    <a href="home.jsp" class="go-home">
        <i class="bi bi-arrow-left-circle"></i> Go Back to Home
    </a>
    
    <div class="page-content">
        <div class="panel-1">
            <img src="
            <% if(bookNumber.equals("1")){%>
            ${pageContext.request.contextPath}/images/The Song of Achilles.jpg
            <% } else if(bookNumber.equals("2")){%>
            ${pageContext.request.contextPath}/images/A Little Life.jpg
            <% } else if(bookNumber.equals("3")){%>
            ${pageContext.request.contextPath}/images/Tomorrow and Tomorrow and Tomorrow.jpg
            <% } else if(bookNumber.equals("4")){%>
            ${pageContext.request.contextPath}/images/They Both Die At The End.jpg
            <% } else if(bookNumber.equals("5")){%>
            ${pageContext.request.contextPath}/images/Frankenstein.jpg
            <% } else if(bookNumber.equals("6")){%>
            ${pageContext.request.contextPath}/images/Little Women.jpg
            <% } else if(bookNumber.equals("7")){%>
            ${pageContext.request.contextPath}/images/People We Meet on Vacation.jpg
            <% } else if(bookNumber.equals("8")){%>
            ${pageContext.request.contextPath}/images/Happy Place.jpg
            <% } else if(bookNumber.equals("9")){%>
            ${pageContext.request.contextPath}/images/Circe.jpg
            <% } else if(bookNumber.equals("10")){%>
            ${pageContext.request.contextPath}/images/Aristotle and Dante Discover The Secrets of The Universe.jpg
            <% } else if(bookNumber.equals("11")){%>
            ${pageContext.request.contextPath}/images/Aristotle and Dante Dive Into The Waters of The World.jpg
            <% } else if(bookNumber.equals("12")){%>
            ${pageContext.request.contextPath}/images/A Thousand Ships.jpg
            <% } else if(bookNumber.equals("13")){%>
            ${pageContext.request.contextPath}/images/Red, White & Royal Blue.jpg
            <% } else if(bookNumber.equals("14")){%>
            ${pageContext.request.contextPath}/images/Instructions For Dancing.jpg
            <% } %>
            ">
        </div>
        
        <div class="panel-2">
            <h1 class="book-title">
            <% if(bookNumber.equals("1")){%>The Song of Achilles
            <% } else if(bookNumber.equals("2")){%>A Little Life
            <% } else if(bookNumber.equals("3")){%>Tomorrow and Tomorrow and Tomorrow
            <% } else if(bookNumber.equals("4")){%>They Both Die At The End
            <% } else if(bookNumber.equals("5")){%>Frankenstein
            <% } else if(bookNumber.equals("6")){%>Little Women
            <% } else if(bookNumber.equals("7")){%>People We Meet on Vacation
            <% } else if(bookNumber.equals("8")){%>Happy Place
            <% } else if(bookNumber.equals("9")){%>Circe
            <% } else if(bookNumber.equals("10")){%>Aristotle and Dante Discover The Secrets of The Universe
            <% } else if(bookNumber.equals("11")){%>Aristotle and Dante Dive Into The Waters of The World
            <% } else if(bookNumber.equals("12")){%>A Thousand Ships
            <% } else if(bookNumber.equals("13")){%>Red, White & Royal Blue
            <% } else if(bookNumber.equals("14")){%>Instructions For Dancing
            <% } %></h1>
            
            <h2 class="book-author">
            <% if(bookNumber.equals("1")){%>Madeline Miller
            <% } else if(bookNumber.equals("2")){%>Hanya Yanagihara
            <% } else if(bookNumber.equals("3")){%>Gabrielle Zevin
            <% } else if(bookNumber.equals("4")){%>Adam Silvera
            <% } else if(bookNumber.equals("5")){%>Mary Shelley
            <% } else if(bookNumber.equals("6")){%>Louisa May Alcott
            <% } else if(bookNumber.equals("7")){%>Emily Henry
            <% } else if(bookNumber.equals("8")){%>Emily Henry
            <% } else if(bookNumber.equals("9")){%>Madeline Miller
            <% } else if(bookNumber.equals("10")){%>Benjamin Alire Sáenz
            <% } else if(bookNumber.equals("11")){%>Benjamin Alire Sáenz
            <% } else if(bookNumber.equals("12")){%>Natalie Haynes
            <% } else if(bookNumber.equals("13")){%>Casey McQuiston
            <% } else if(bookNumber.equals("14")){%>Nicola Yoon
            <% } %></h2>
            
            <p class="synopsis">
            <% if(bookNumber.equals("1")){%>Achilles, "the best of all the Greeks," son of the cruel sea goddess Thetis and the legendary king Peleus, is strong, swift, and beautiful, irresistible to all who meet him. Patroclus is an awkward young prince, exiled from his homeland after an act of shocking violence. Brought together by chance, they forge an inseparable bond, despite risking the gods' wrath. They are trained by the centaur Chiron in the arts of war and medicine, but when word comes that Helen of Sparta has been kidnapped, all the heroes of Greece are called upon to lay siege to Troy in her name. Seduced by the promise of a glorious destiny, Achilles joins their cause, and torn between love and fear for his friend, Patroclus follows. Little do they know that the cruel Fates will test them both as never before and demand a terrible sacrifice.
            <% } else if(bookNumber.equals("2")){%>When four classmates from a small Massachusetts college move to New York to make their way, they're broke, adrift, and buoyed only by their friendship and ambition. There is kind, handsome Willem, an aspiring actor; JB, a quick-witted, sometimes cruel Brooklyn-born painter seeking entry to the art world; Malcolm, a frustrated architect at a prominent firm; and withdrawn, brilliant, enigmatic Jude, who serves as their center of gravity.Over the decades, their relationships deepen and darken, tinged by addiction, success, and pride. Yet their greatest challenge, each comes to realize, is Jude himself, by midlife a terrifyingly talented litigator yet an increasingly broken man, his mind and body scarred by an unspeakable childhood, and haunted by what he fears is a degree of trauma that he’ll not only be unable to overcome—but that will define his life forever.
            <% } else if(bookNumber.equals("3")){%>On a bitter-cold day, in the December of his junior year at Harvard, Sam Masur exits a subway car and sees, amid the hordes of people waiting on the platform, Sadie Green. He calls her name. For a moment, she pretends she hasn't heard him, but then, she turns, and a game begins: a legendary collaboration that will launch them to stardom.
            <% } else if(bookNumber.equals("4")){%>On September 5, a little after midnight, Death-Cast calls Mateo Torrez and Rufus Emeterio to give them some bad news: They’re going to die today.  Mateo and Rufus are total strangers, but, for different reasons, they’re both looking to make a new friend on their End Day. The good news: There’s an app for that. It’s called the Last Friend, and through it, Rufus and Mateo are about to meet up for one last great adventure—to live a lifetime in a single day.
            <% } else if(bookNumber.equals("5")){%>Mary Shelley's seminal novel of the scientist whose creation becomes a monster.This edition is the original 1818 text, which preserves the hard-hitting and politically charged aspects of Shelley's original writing, as well as her unflinching wit and strong female voice. This edition also includes a new introduction and suggestions for further reading by author and Shelley expert Charlotte Gordon, literary excerpts and reviews selected by Gordon and a chronology and essay by preeminent Shelley scholar Charles E. Robinson.
            <% } else if(bookNumber.equals("6")){%>Generations of readers young and old, male and female, have fallen in love with the March sisters of Louisa May Alcott’s most popular and enduring novel, Little Women. Here are talented tomboy and author-to-be Jo, tragically frail Beth, beautiful Meg, and romantic, spoiled Amy, united in their devotion to each other and their struggles to survive in New England during the Civil War.
            <% } else if(bookNumber.equals("7")){%>Poppy and Alex. Alex and Poppy. They have nothing in common. She’s a wild child; he wears khakis. She has insatiable wanderlust; he prefers to stay home with a book. And somehow, ever since a fateful car share home from college many years ago, they are the very best of friends. For most of the year they live far apart—she’s in New York City, and he’s in their small hometown—but every summer, for a decade, they have taken one glorious week of vacation together.
            <% } else if(bookNumber.equals("8")){%>A couple who broke up months ago make a pact to pretend to still be together for their annual weeklong vacation with their best friends in this glittering and wise new novel from #1 New York Times bestselling author Emily Henry.
            <% } else if(bookNumber.equals("9")){%>In the house of Helios, god of the sun and mightiest of the Titans, a daughter is born. But Circe is a strange child--neither powerful like her father nor viciously alluring like her mother. Turning to the world of mortals for companionship, she discovers that she does possess power: the power of witchcraft, which can transform rivals into monsters and menace the gods themselves.
            <% } else if(bookNumber.equals("10")){%>Dante can swim. Ari can't. Dante is articulate and self-assured. Ari has a hard time with words and suffers from self-doubt. Dante gets lost in poetry and art. Ari gets lost in thoughts of his older brother who is in prison. Dante is fair skinned. Ari's features are much darker. It seems that a boy like Dante, with his open and unique perspective on life, would be the last person to break down the walls that Ari has built around himself.
            <% } else if(bookNumber.equals("11")){%>In Aristotle and Dante Discover the Secrets of the Universe, two boys in a border town fell in love. Now, they must discover what it means to stay in love and build a relationship in a world that seems to challenge their very existence.
            <% } else if(bookNumber.equals("12")){%>From the Trojan women whose fates now lie in the hands of the Greeks, to the Amazon princess who fought Achilles on their behalf, to Penelope awaiting the return of Odysseus, to the three goddesses whose feud started it all, these are the stories of the women whose lives, loves, and rivalries were forever altered by this long and tragic war. 
            <% } else if(bookNumber.equals("13")){%>First Son Alex Claremont-Diaz is the closest thing to a prince this side of the Atlantic. With his intrepid sister and the Veep’s genius granddaughter, they’re the White House Trio, a beautiful millennial marketing strategy for his mother, President Ellen Claremont. International socialite duties do have downsides—namely, when photos of a confrontation with his longtime nemesis Prince Henry at a royal wedding leak to the tabloids and threaten American/British relations. The plan for damage control: staging a fake friendship between the First Son and the Prince.
            <% } else if(bookNumber.equals("14")){%>In this romantic page-turner from the author of Everything, Everything and The Sun is Also a Star, Evie has the power to see other people's romantic fates--what will happen when she finally sees her own?
            <% } %></p>
            
            <a href="#popup">
                <form action="../BookPreview" method="post">
                    <input type="hidden" name="bookNum" value=<%=bookNumber%> />
                    <input type="hidden" name="userName" value=<%=userName%> />
                <input type="Submit" value="Book Now" class="book-now">
                </form>
            </a>
        </div>
    </div>

    <div id="popup" class="popup">
        <div class="popup-content">
            <h2>Booking Successful!</h2>
            <p>You may pick up the book now. Thank You!</p>
            <p>Return Date: XX</p>
            <a href="#" class="close-btn">Close</a>
        </div>
    </div>

    <footer>
        <h1><%= application.getAttribute("Date").toString() %> | MP#4</h1>
    </footer>
    
</body>
</html>
