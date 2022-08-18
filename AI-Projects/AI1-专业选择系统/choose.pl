%%%%%%%%%%%%%%%%%%%%%%%%%% 专业的职业倾向 %%%%%%%%%%%%%%%%%%%%%%%%
occ(i,philosophy).
occ(i,economics).
occ(i,history).
occ(i,mathematics).
occ(i,applied_math).
occ(i,physics).
occ(i,chemistry).
occ(i,biology).
occ(i,statistics).
occ(a,philosophy).
occ(a,economics).
occ(a,education).
occ(a,language_and_literature).
occ(a,mathematics).
occ(a,physics).
occ(a,mechanics).
occ(a,electronic).
occ(a,energy).
occ(s,sociology).
occ(s,education).
occ(s,journalism).
occ(s,medicine).
occ(e,political_science).
occ(e,law).
occ(r,medicine).
occ(r,geology).
occ(r,geographic_science).
occ(r,mechanics).
occ(r,electronic).
occ(r,materials).
occ(r,bio-engineering).
occ(c,management).
occ(c,applied_math).
occ(c,biology).
occ(c,astronomy).
occ(c,geology).
occ(c,geographic_science).
occ(c,atmospheriic_science).
occ(c,marine_science).
occ(c,materials).
occ(c,environment).
occ(c,statistics).
occ(c,energy).
occ(c,bio-engineering).


%%%%%%%%%%%%%%%%%%%%%%%%%% 专业的思维方式 %%%%%%%%%%%%%%%%%%%%%%%
think(abstract,philosophy).
think(abstract,economics).
think(abstract,sociology).
think(abstract,history).
think(abstract,mathematics).
think(abstract,applied_math).
think(abstract,physics).
think(abstract,chemistry).
think(abstract,biology).
think(abstract,astronomy).
think(abstract,geology).
think(abstract,geograpgic_science).
think(abstract,atmospheriic_science).
think(abstract,marine_science).
think(abstract,electronic).
think(abstract,mechanics).
think(abstract,materials).
think(abstract,environment).
think(abstract,psychology).
think(abstract,statistics).
think(abstract,energy).
think(image,political_science).
think(image,law).
think(image,education).
think(image,journalism).
think(image,language_and_literature).
think(action,management).
think(action,medicine).
think(action,chemistry).
think(action,biology).
think(action,geology).
think(action,mechanics).
think(action,materials).
think(action,statistics).
think(action,energy).
think(action,bio-engineering).

%%%%%%%%%%%%%%%%%%%%%%%%% 专业的就业预期 %%%%%%%%%%%%%%%%%%%%%%
expect(1,medicine).
expect(1,political_science).
expect(1,management).
expect(1,applied_math).
expect(2,political_science).
expect(2,astronomy).
expect(2,psychology).
expect(3,management).
expect(3,philosophy).
expect(3,journalism).
expect(3,political_science).
expect(4,language_and_literature).
expect(4,history).
expect(4,medicine).
expect(4,management).
expect(4,mathematics).
expect(4,applied_math).
expect(5,education).
expect(6,philosophy).
expect(6,economics).
expect(6,sociology).
expect(6,political_science).
expect(6,law).
expect(6,education).
expect(6,history).
expect(6,mathematics).
expect(6,physics).
expect(6,chemistry).
expect(6,biology).
expect(6,geographic_science).
expect(6,atmospheriic_science).
expect(6,marine_science).
expect(7,philosophy).
expect(7,sociology).
expect(7,language_and_literature).
expect(7,mathematics).
expect(7,geology).
expect(7,environment).
expect(7,bio-engineering).
expect(8,law).
expect(8,language_and_literature).
expect(8,history).
expect(8,medicine).
expect(8,mathematics).
expect(8,applied_math).
expect(8,physics).
expect(8,chemistry).
expect(8,biology).
expect(8,astronomy).
expect(8,geographic_science).
expect(8,atmospheriic_science).
expect(8,mechanics).
expect(8,electronic).
expect(8,materials).
expect(8,statistics).
expect(8,psychology).
expect(8,energy).
expect(8,bio-engineering).
expect(9,economics).
expect(9,education).
expect(9,journalism).
expect(9,medicine).
expect(9,geology).
expect(9,atmospheriic_science).
expect(9,marine_science).
expect(9,materials).
expect(9,environment).
expect(9,energy).


%%%%%%%%%%%%%%%%%%%%%%%%%% Test1 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%test1 questions
t2q(1):-write('Q1.Using wood to make somethings.\n').
t2q(2):-write('Q2.Repair the maichine.\n').
t2q(3):-write('Q3.Drive a car or motorcycle.\n').
t2q(4):-write('Q4.Participate in the drama.\n').
t2q(5):-write('Q5.Reading a novel or screenplay.\n').
t2q(6):-write('Q6.Practice a musical instrument or participate in the band\n').
t2q(7):-write('Q7.Read the scientific and technical books and magazines\n').
t2q(8):-write('Q8.Study the special problems of your own choosing.\n').
t2q(9):-write('Q9.Solve formulas or mathematical games.\n').
t2q(10):-write('Q10.To participate in a particular social group or club events.\n').
t2q(11):-write('Q11.Attended the party.\n').
t2q(12):-write('Q12.Participate in the forum or debate.\n').
t2q(13):-write('Q13.Talk about politics.\n').
t2q(14):-write('Q14.Positions in social groups.\n').
t2q(15):-write('Q15.Tell others your own ideas.\n').
t2q(16):-write('Q16.Sort out the desktop and room.\n').
t2q(17):-write('Q17.Verification of personal income and expenditure.\n').
t2q(18):-write('Q18.Copying files and letters.\n').

%挑出score>=2
score1(M1,M2,M3,Z):- 
    Z is M1+M2+M3.
score1b2(Z1,Z2,Z3,Z4,Z5,Z6):-
    Z1>=2,write('R:'),nl,occ(r,X),write(X),nl,fail.
score1b2(Z1,Z2,Z3,Z4,Z5,Z6):-
    Z2>=2,write('A:'),nl,occ(a,X),write(X),nl,fail.
score1b2(Z1,Z2,Z3,Z4,Z5,Z6):-
    Z3>=2,write('I:'),nl,occ(i,X),write(X),nl,fail.    
score1b2(Z1,Z2,Z3,Z4,Z5,Z6):-
    Z4>=2,write('S:'),nl,occ(s,X),write(X),nl,fail.
score1b2(Z1,Z2,Z3,Z4,Z5,Z6):-
    Z5>=2,write('E:'),nl,occ(e,X),write(X),nl,fail.
score1b2(Z1,Z2,Z3,Z4,Z5,Z6):-
    Z6>=2,write('C:'),nl,occ(c,X),write(X),nl,fail.
score1b2(Z1,Z2,Z3,Z4,Z5,Z6):-
    write('\n').

%test1得分
t2(N,Score):- 
    t2q(N),
    write('Please write you answer:'),
    read(Ans),
    Ans = y,
    Score is 1;
    Ans = n,
    Score is 0.
%%%%%%%%%%%%%%%%%%%%%%%test1 main %%%%%%%%%%%%%%%%%%%%%%%%%%
test1:-
    write('\n Here are some activities, choose your interests by yes or no.\n'),
    t2(1,X1),t2(2,X2),t2(3,X3),t2(4,X4),t2(5,X5),t2(6,X6),t2(7,X7),t2(8,X8),t2(9,X9),t2(10,X10),t2(11,X11),t2(12,X12),t2(13,X13),t2(14,X14),t2(15,X15),t2(16,X16),t2(17,X17),t2(18,X18),nl,
    score1(X1,X2,X3,Z1),
    score1(X4,X5,X6,Z2),
    score1(X7,X8,X9,Z3),
    score1(X10,X11,X12,Z4),
    score1(X13,X14,X15,Z5),
    score1(X16,X17,X18,Z6),
    nl,
    write('Your interest activities test Type scores are:\n'),
    write('Type R(Reality) Score = '),write(Z1),nl,
    write('Type A(Art) Score = '),write(Z2),nl,
    write('Type I(Investigate) Score = '),write(Z3),nl,
    write('Type S(Society) Score ='),write(Z4),nl,
    write('Type E(Enterprise) Score = '),write(Z5),nl,
    write('Type C(Common) Score ='),write(Z6),nl,
    write('We have some information for Types:\n Higher Type R score implies your like machinery, tools, plant or animal, prefer outdoor activities.\n Higher Type A score implies you like art,intuition,have the ability to create, like sports, imagination and creativity, like to work in an environment of freedom.\n Higher Type I score implies you like to study, research, analyze, evaluate and solve problems.\n Higher Type S score implies you are a good people get along, like to teach, help, inspiration or training others.\n Higher Type E score implies you like interact with the crowd, confident, persuasive, leadership, the pursuit of political or economic achievements.\n Higher Type C score implies you like to engage in work, writing or mathematical analysis of the ability to be able to listen to instructions to complete the trifling work.\n'),nl,
    write('By Test 1, you have following choises:\n'),
    score1b2(Z1,Z2,Z3,Z4,Z5,Z6).


%%%%%%%%%%%%%%%%%%%%%%%%%%%% Test2 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%职业智商测试问题
cqQ(1):- write('Q1.I can often find the trouble of broken bike.\n').
cqQ(2):- write('Q2.Before I go somewhere in the city, I can come up with a variety of possible road.\n').
cqQ(3):- write('Q3.My article is usually well written.\n').
cqQ(4):- write('Q4.Small electrical appliances at home is broken, I can repair them by myself.\n').
cqQ(5):- write('Q5.I can use painting,dance to express my thoughts and emotions.\n'). 
cqQ(6):- write('Q6.I can always use different words to express the same thing.\n').
cqQ(7):- write('Q7.I can quickly learn how to transform complex body movements.\n').
cqQ(8):- write('Q8.I was able to draw some complex mechanical graphics.\n').
cqQ(9):- write('Q9.I can summarize a variety of phenomena I see, and find the commonalities.\n').
cqQ(10):- write('Q10.I learnt to drive quickly.\n').
cqQ(11):- write('Q11.I always thinking about the problem with the image of the brain.\n').
cqQ(12):- write('Q12.I can understand the theory accurately which others think boring.\n').
cqQ(13):- write('Q13.Others had praise my clever hands\n').
cqQ(14):- write('Q14.I usually like to think with concepts and symbols.\n').
cqQ(15):- write('Q15.I am sensitive to music.\n').

%CQ问题得分
cq(N,Score):- 
    cqQ(N),
    write('Please write you answer:'),
    read(Ans),
    Ans = y,
    Score is 1;
    Ans = n,
    Score is 0.


%挑出score2>=3
score2(M1,M2,M3,M4,M5,Z):- 
    Z is M1+M2+M3+M4+M5.
score2b3(P1,P2,P3):-
    P1>=3,write('Type1:'),nl,think(action,X),write(X),nl,fail.
score2b3(P1,P2,P3):-
    P2>=3,write('Type2:'),nl,think(image,X),write(X),nl,fail.
score2b3(P1,P2,P3):-
    P3>=3,write('Type3:'),nl,think(abstract,X),write(X),nl,fail.
score2b3(P1,P2,P3):-
    write('\n').

%%%%%%%%%%%%%%%%%%%%%%%%%%test2 main %%%%%%%%%%%%%%
test2:-
    write('\n Welcome to CQ analysis test, here are some interesting questions, please answer them by yes(y) or no(n).\n\n'),
    cq(1,X1),cq(2,X2),cq(3,X3),cq(4,X4),cq(5,X5),cq(6,X6),cq(7,X7),cq(8,X8),cq(9,X9),cq(10,X10),cq(11,X11),cq(12,X12),cq(13,X13),cq(14,X14),cq(15,X15),nl,
    score2(X1,X4,X7,X10,X13,P1),
    score2(X2,X5,X8,X11,X15,P2),
    score2(X3,X6,X9,X12,X14,P3),
    write('Your CQ test Type scores are:\n'),
    write('Type 1 Score = '),write(P1),nl,
    write('Type 2 Score = '),write(P2),nl,
    write('Type 3 Score = '),write(P3),nl,
    write('We have some information for Types:\n Higher Type 1 score implies your action thinking is better.\n Higher Type 2 score implies your image thinking is better.\n Higher Type 3 score implies your abstract thinking is better.\n'),nl,
    write('By Test 2, you have following choises:\n'),
    score2b3(P1,P2,P3).

%%%%%%%%%%%%%%%%%%%%%%%%%% Test3 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%职业价值
t4f(1):-write('F1.high wages and good benefits.\n').
t4f(2):-write('F2.the working environment (substance) is comfortable.\n').
t4f(3):-write('F3.good personal relations.\n').
t4f(4):-write('F4.stable and secure.\n').
t4f(5):-write('F5.can provide better educational opportunities.\n').
t4f(6):-write('F6.there is a higher social status.\n').
t4f(7):-write('F7.less tense, less external pressure.\n').
t4f(8):-write('F8.can give full play to the strengths of their abilities.\n').
t4f(9):-write('F9.the needs of the community and social contribution.\n').

expect3(T41,Y):-
   expect(T41,Y),write(Y),nl,fail.
expect3(T41,Y):-
   write('\n').


%%%%%%%%%%%%%%%%%%% test3 main %%%%%%%%%%%%%%%%%%%%
test3:-
    write('\n Welcome to Value for Occupation test, here are some factors, please choose two of them which you think most important and useless by number 1-9.\n\n'),
    t4f(1),t4f(2),t4f(3),t4f(4),t4f(5),t4f(6),t4f(7),t4f(8),t4f(9),nl,
    write('most important one:'),
    read(T41),
    write('By Test 3, you have following choises:\n'),nl,
    expect3(T41,E1),
    nl.




%%%%%%%%%%%%%%%%%%%%%%%%%%% Main %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%% main_main %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
choose:-
   write('Welcome to Specialized Subject Choosing System!\n'),
   write('We will give you a proper choise through some tests.\n'),nl,
   write('There are 3 important tests, you would better to anwser then all in order to get a better advice.\n'),nl,
   write('Here are 3 tests:\n'), 
   write('1.Interesting Activity\n'), 
   write('2.Indivisual Ability: Thinking Way\n'),
   write('3.Value for Occupation\n'),  
   nl,
%%Test 1
write('test 1.Interesting Activity\n'),
         test1,
%%Test 2
write('test 2.Indivisual Ability: Thinking Way\n'),
         test2,
%%Test 3
write('test 3.Value for Occupation\n'),
         test3,
         nl,
   write('\n You have done all the tests you choose, Here is the final advices for you to choose a proper specialized subject.\n').

   




















